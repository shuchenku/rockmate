import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:beamer/beamer.dart';
import 'injection.dart';
import 'features/navigation/presentation/main_location.dart';
import 'core/data/adapters/route_entity_adapter.dart';
import 'core/data/adapters/cached_routes_adapter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  // Register Hive Adapters
  Hive.registerAdapter(RouteEntityAdapter());
  Hive.registerAdapter(CachedRoutesAdapter());
  
  // Initialize Hive
  await Hive.initFlutter();
  
  // Configure Dependency Injection
  configureDependencies();
  
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final routerDelegate = BeamerDelegate(
    locationBuilder: BeamerLocationBuilder(
      beamLocations: [
        MainLocation(RouteInformation()),
      ],
    ),
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'RockMate',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        useMaterial3: true,
      ),
      routeInformationParser: BeamerParser(),
      routerDelegate: routerDelegate,
    );
  }
}

