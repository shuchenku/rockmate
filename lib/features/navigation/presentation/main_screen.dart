import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rockmate/core/presentation/screens/data_download_screen.dart';
import 'package:rockmate/core/navigation/app_locations.dart';
import 'package:rockmate/features/navigation/presentation/bloc/main_bloc.dart';
import 'package:rockmate/features/navigation/domain/events/main_event.dart';
import 'package:rockmate/features/navigation/domain/state/main_state.dart';
import 'package:rockmate/injection.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  // BeamerDelegate must be kept in State to preserve navigation history
  late final _routerDelegate = BeamerDelegate(
    initialPath: '/routes',
    setBrowserTabTitle: false,
    locationBuilder: (routeInformation, beamParameters) =>
        BeamerLocationBuilder(
          beamLocations: [
            RoutesLocation(RouteInformation(uri: Uri.parse('/routes'))),
            LogbookLocation(RouteInformation(uri: Uri.parse('/logbook'))),
            UserProfileLocation(RouteInformation(uri: Uri.parse('/profile'))),
          ],
        ).call(routeInformation, beamParameters),
  );

  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _routerDelegate.addListener(_updateCurrentIndex);
  }

  @override
  void dispose() {
    _routerDelegate.removeListener(_updateCurrentIndex);
    super.dispose();
  }

  void _updateCurrentIndex() {
    final uriString = _routerDelegate.configuration.uri.toString();
    setState(() {
      if (uriString.contains('logbook')) {
        _currentIndex = 1;
      } else if (uriString.contains('profile')) {
        _currentIndex = 3;
      } else {
        _currentIndex = 0;
      }
    });
  }

  void _onNavigationTap(int index) {
      setState(() {
        _currentIndex = index;
      });
      if (index == 0) {
        _routerDelegate.beamToNamed('/routes');
      } else if (index == 1) {
        _routerDelegate.beamToNamed('/logbook');
      } else if (index == 3) {
        _routerDelegate.beamToNamed('/profile');
      }
      // index == 2 is Partners (placeholder for future)
  }

  @override
  Widget build(BuildContext context) {
    // Wrap with BlocProvider to handle "Data Checking" logic
    return BlocProvider(
      create: (context) => getIt<MainBloc>()..add(const MainEvent.checkForData()),
      child: BlocBuilder<MainBloc, MainState>(
        builder: (context, state) {
          return state.when(
            initial: () => const Scaffold(body: Center(child: CircularProgressIndicator())),
            checking: () => const Scaffold(body: Center(child: CircularProgressIndicator())),
            error: (msg) => Scaffold(body: Center(child: Text('Error: $msg'))),
            loaded: (hasData) {
              // If no data, show download screen
              if (!hasData) {
                return DataDownloadScreen(
                  onComplete: () {
                    context.read<MainBloc>().add(const MainEvent.dataDownloaded());
                    _routerDelegate.beamToNamed('/routes');
                  },
                );
              }

              // Normal App UI
              return Scaffold(
                appBar: AppBar(
                  title: Row(
                    children: [
                      Icon(Icons.terrain, size: 24),
                      SizedBox(width: 8),
                      Text('RockMate', style: TextStyle(fontSize: 20)),
                    ],
                  ),
                  flexibleSpace: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Colors.blue.shade600, Colors.blue.shade700],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                      ),
                    ),
                  ),
                  foregroundColor: Colors.white,
                  elevation: 0,
                ),
                body: Router(
                  routerDelegate: _routerDelegate,
                  backButtonDispatcher: BeamerBackButtonDispatcher(
                    delegate: _routerDelegate,
                  ),
                ),
                bottomNavigationBar: BottomNavigationBar(
                  currentIndex: _currentIndex,
                  type: BottomNavigationBarType.fixed,
                  items: const [
                    BottomNavigationBarItem(label: 'Routes', icon: Icon(Icons.terrain)),
                    BottomNavigationBarItem(label: 'Logbook', icon: Icon(Icons.book)),
                    BottomNavigationBarItem(label: 'Partners', icon: Icon(Icons.people)),
                    BottomNavigationBarItem(label: 'Profile', icon: Icon(Icons.person)),
                  ],
                  onTap: _onNavigationTap,
                ),
              );
            },
          );
        },
      ),
    );
  }
}
