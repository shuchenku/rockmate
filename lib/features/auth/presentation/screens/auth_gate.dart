import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart' hide EmailAuthProvider;
import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:rockmate/features/auth/presentation/screens/auth_screen.dart';
import 'package:rockmate/features/navigation/presentation/main_screen.dart';

/// AuthGate: Routes users based on authentication state
/// - If authenticated → MainScreen (existing app)
/// - If not authenticated → AuthScreen (sign-in)
class AuthGate extends StatelessWidget {
  const AuthGate({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        // Show loading while checking auth state
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Scaffold(
            body: Center(child: CircularProgressIndicator()),
          );
        }
        // Show email verification if needed
        if (snapshot.hasData && snapshot.data != null && !snapshot.data!.emailVerified) {
          return EmailVerificationScreen(
            headerBuilder: (context, constraints, shrinkOffset) => const Padding(
              padding: EdgeInsets.all(20),
              child: Center(
                child: Icon(Icons.mark_email_unread, size: 80, color: Colors.blue),
              ),
            ),
            actions: [
              EmailVerifiedAction(() async {
                await FirebaseAuth.instance.currentUser?.reload();
              }),
              AuthCancelledAction((context) async {
                await FirebaseAuth.instance.signOut();
              }),
            ],
          );
        }
        // Show auth screen if not signed in
        if (!snapshot.hasData || snapshot.data == null) {
          return const AuthScreen();
        }
        // Signed in and email verified – go to main app
        return const MainScreen();
      },
    );
  }
}
