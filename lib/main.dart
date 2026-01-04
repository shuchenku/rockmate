import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:beamer/beamer.dart';
import 'injection.dart';
import 'features/navigation/presentation/main_location.dart';
import 'package:climb_data/climb_data.dart';
import 'core/presentation/screens/data_download_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize Hive
  await Hive.initFlutter();

  // Register ClimbEntityAdapter - catch if already registered
  try {
    Hive.registerAdapter(ClimbEntityAdapter());
  } catch (e) {
    // Already registered, ignore
  }

  // Configure Dependency Injection
  await configureDependencies();

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isLoading = true;
  bool _needsDownload = false;

  @override
  void initState() {
    super.initState();
    _checkDataStatus();
  }

  Future<void> _checkDataStatus() async {
    try {
      final dataSource = ClimbLocalDataSource();
      await dataSource.init();
      final hasData = dataSource.hasData;

      setState(() {
        _needsDownload = !hasData;
        _isLoading = false;
      });
    } catch (e) {
      setState(() {
        _needsDownload = true;
        _isLoading = false;
      });
    }
  }

  void _onDownloadComplete() {
    setState(() {
      _needsDownload = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (_isLoading) {
      return const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(body: Center(child: CircularProgressIndicator())),
      );
    }

    if (_needsDownload) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'RockMate',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
          useMaterial3: true,
        ),
        home: DataDownloadScreen(onComplete: _onDownloadComplete),
      );
    }

    final routerDelegate = BeamerDelegate(
      locationBuilder: (routeInformation, beamParameters) =>
          BeamerLocationBuilder(
            beamLocations: [
              MainLocation(RouteInformation(uri: Uri(path: '/'))),
            ],
          ).call(routeInformation, beamParameters),
    );

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
