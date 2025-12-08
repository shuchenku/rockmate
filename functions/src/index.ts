import * as functions from "firebase-functions";
import * as admin from "firebase-admin";

// Initialize Firebase Admin SDK
admin.initializeApp();

// Export placeholder function to verify setup
export const helloWorld = functions.https.onRequest((request, response) => {
    functions.logger.info("Hello logs!", { structuredData: true });
    response.send("Hello from RockMate Cloud Functions!");
});

// Placeholder for future notification functions
// export { onConnectionRequest } from "./notifications/onConnectionRequest";
// export { onConnectionAccepted } from "./notifications/onConnectionAccepted";
