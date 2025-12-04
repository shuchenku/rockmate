# Account Management - Soft Delete Implementation

## Overview
This document describes the "Soft Delete" mechanism for user account deletion in RockMate. Instead of permanently deleting user data, we mark accounts as deleted while preserving data integrity for historical references.

## Implementation

### Data Model
Users collection includes an `isDeleted` boolean field:

```typescript
interface UserDocument {
  uid: string;
  email: string;
  displayName: string;
  isDeleted: boolean;  // Soft delete flag
  privacySettings: {
    isPublic: boolean;
  };
  // ... other fields
}
```

### Security Rules
Already implemented in `firestore.rules`:
- Public read of user profiles is blocked if `isDeleted == true`
- User's ticks, trips, and connections become invisible when profile is deleted
- User data remains in database for referential integrity

### Client Implementation
The delete account flow is handled client-side:

```dart
// In UserProfileBloc or DeleteAccountUseCase
Future<void> deleteAccount() async {
  final uid = FirebaseAuth.instance.currentUser!.uid;
  
  // Step 1: Mark account as deleted in Firestore
  await FirebaseFirestore.instance
    .collection('users')
    .doc(uid)
    .update({'isDeleted': true});
  
  // Step 2: Sign out the user
  await FirebaseAuth.instance.signOut();
}
```

### User Flow
1. User navigates to Settings → Delete Account
2. App shows confirmation dialog with warning
3. On confirmation:
   - Update `users/{uid}` set `isDeleted: true`
   - Sign out user
4. User profile becomes invisible to other users
5. User can contact support to restore account (admin manually sets `isDeleted: false`)

## Testing Verification

### Manual Test Steps
1. **Setup**: Create a test user account
2. **Create Data**: Add some ticks and trips for the user
3. **Delete**: Click "Delete Account" in settings
4. **Verify in Console**: 
   - User document exists
   - `isDeleted` field is `true`
5. **Verify Visibility**:
   - Try to view profile from another account → Should fail
   - Search for user's trips → Should not appear in results
6. **Verify Auth**: User is signed out and cannot sign back in with same credentials

### Security Rules Test
```javascript
// Test case for Firestore emulator
describe('Soft Delete', () => {
  it('should hide deleted user profiles', async () => {
    // Mark user as deleted
    await admin.firestore()
      .collection('users')
      .doc('testUser123')
      .update({ isDeleted: true });
    
    // Try to read as another user
    const doc = await db
      .collection('users')
      .doc('testUser123')
      .get();
    
    // Should be blocked by security rules
    expect(doc.exists).toBe(false);
  });
});
```

## Benefits
- **Data Integrity**: Historical references (e.g., connection requests) don't break
- **Recovery**: Support can restore accounts by setting `isDeleted: false`
- **Audit Trail**: Keeps record for compliance/debugging
- **Referential Integrity**: Other users' data that references this user remains valid

## Future Enhancements
- **Hard Delete Scheduled Job**: Cloud Function to permanently delete accounts after 30 days
- **Account Recovery UI**: Allow users to restore within X days
- **Email Confirmation**: Send confirmation email before deletion
