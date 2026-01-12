import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'injection.dart';
import 'package:climb_data/climb_data.dart';
import 'package:rockmate/features/auth/presentation/screens/auth_gate.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize Firebase
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  // Initialize Hive
  await Hive.initFlutter();

  // Register Hive adapters - catch if already registered
  try {
    Hive.registerAdapter(ClimbEntityAdapter());
    Hive.registerAdapter(SyncMetadataAdapter());
  } catch (e) {
    // Already registered, ignore
  }

  // Configure Dependency Injection
  await configureDependencies();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RockMate',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const AuthGate(),
    );
  }
}
