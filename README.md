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
1. Install dependencies: `flutter pub get`
2. Configure Firebase: `flutterfire configure`
3. Run the app: `flutter run`

## Project Structure
```
rockmate/
├── lib/                   # Flutter app code
├── functions/             # Cloud Functions (TypeScript)
├── firestore.rules        # Firestore security rules
├── firestore.indexes.json # Database indexes
└── firebase.json          # Firebase configuration
```
