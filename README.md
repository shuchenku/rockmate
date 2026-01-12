# RockMate

A mobile-first climbing companion app built with Flutter.

## Features
- Route search and discovery via OpenBeta
- Personal logbook for tracking climbs
- Partner discovery for trip planning
- Grade conversion utilities

## Architecture
- **Client**: Flutter (iOS, Android, Web)
- **Backend**: Firebase (Auth, Firestore, Cloud Functions)
- **State Management**: Bloc
- **Routing**: Beamer

## Getting Started

### Prerequisites
- Flutter SDK (latest stable)
- Firebase CLI
- Node.js (for Cloud Functions)

### Setup

#### 1. Install Dependencies
```bash
flutter pub get
cd functions && npm install
```

#### 2. Firebase Configuration
**Required:** You must configure Firebase before running the app.

1. **Download Firebase config files** from [Firebase Console](https://console.firebase.google.com):
   - iOS: Download `GoogleService-Info.plist` → place in `ios/Runner/`
   - Android: Download `google-services.json` → place in `android/app/`

2. **Generate `firebase_options.dart`**:
   ```bash
   flutterfire configure
   ```

3. **Enable Authentication** in Firebase Console:
   - Email/Password
   - Google Sign-In
   - Apple Sign-In (iOS only)

#### 3. Run the App
```bash
flutter run
```

> **Note:** Firebase config files (`GoogleService-Info.plist`, `google-services.json`, `firebase_options.dart`) are gitignored for security. Each developer must configure their own Firebase project.

## Project Structure
```
rockmate/
├── lib/                   # Flutter app code
├── functions/             # Cloud Functions (TypeScript)
├── firestore.rules        # Firestore security rules
├── firestore.indexes.json # Database indexes
└── firebase.json          # Firebase configuration
```
