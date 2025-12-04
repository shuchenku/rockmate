# Firebase Functions

This directory contains the Cloud Functions for RockMate.

## Setup

```bash
cd functions
npm install
```

## Development

### Build TypeScript
```bash
npm run build
```

### Run locally with emulator
```bash
npm run serve
```

### Deploy to Firebase
```bash
npm run deploy
```

## Structure

- `src/index.ts` - Main entry point
- `src/notifications/` - Notification trigger functions (to be implemented)
- `lib/` - Compiled JavaScript (generated, not committed)

## Functions

- `helloWorld` - Test function to verify deployment
- `onConnectionRequest` - (Coming in Task 5)
- `onConnectionAccepted` - (Coming in Task 6)
