import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class UserProfileScreen extends StatelessWidget {
  const UserProfileScreen({super.key});

  Future<void> _signOut(BuildContext context) async {
    try {
      await FirebaseAuth.instance.signOut();
      // AuthGate will listen to the stream and update the UI automatically.
      // We can pop this screen to go back to the main flow, which will then trigger the AuthGate.
      // However, since this is pushed on top of MainScreen, and MainScreen might be replaced...
      // Actually, if we sign out, AuthGate (root) rebuilds -> shows AuthScreen.
      // So we just need to ensure the navigation stack is clear or we are okay.
      // If we are in a pushed route, AuthGate rebuild might happen "underneath" or replace everything.
      // Safest is to just pop if we were pushed, OR let the root rebuild handle it.
      // Let's just sign out. Flutter's reactive UI usually handles the switch at the root.
      // But we should probably pop this screen first to avoid "Screen on top of AuthScreen" issues.
      if (context.mounted) {
        Navigator.of(context).popUntil((route) => route.isFirst);
      }
    } catch (e) {
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Error signing out: $e')),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (user?.photoURL != null)
              CircleAvatar(
                radius: 40,
                backgroundImage: NetworkImage(user!.photoURL!),
              )
            else
              const CircleAvatar(
                radius: 40,
                child: Icon(Icons.person, size: 40),
              ),
            const SizedBox(height: 16),
            Text(
              user?.displayName ?? 'User',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: 8),
            Text(
              user?.email ?? '',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            if (user != null && !user.emailVerified)
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(
                  'Email not verified',
                  style: TextStyle(color: Theme.of(context).colorScheme.error),
                ),
              ),
            const SizedBox(height: 32),
            FilledButton.icon(
              onPressed: () => _signOut(context),
              icon: const Icon(Icons.logout),
              label: const Text('Sign Out'),
            ),
          ],
        ),
      ),
    );
  }
}
