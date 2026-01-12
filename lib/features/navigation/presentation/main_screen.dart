import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:rockmate/features/climbing_data/presentation/routes_location.dart';
import 'package:rockmate/features/logbook/presentation/logbook_location.dart';
import 'package:rockmate/features/auth/presentation/screens/profile_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  late final _routerDelegate = BeamerDelegate(
    initialPath: '/routes',
    setBrowserTabTitle: false,
    locationBuilder: (routeInformation, beamParameters) =>
        BeamerLocationBuilder(
          beamLocations: [
            RoutesLocation(RouteInformation(uri: Uri.parse('/routes'))),
            LogbookLocation(RouteInformation(uri: Uri.parse('/logbook'))),
          ],
        ).call(routeInformation, beamParameters),
  );

  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _routerDelegate.addListener(_updateCurrentIndex);
    _routerDelegate.beamToNamed('/routes');
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
      } else {
        _currentIndex = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
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
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
          if (index == 0) {
            _routerDelegate.beamToNamed('/routes');
          } else if (index == 1) {
            _routerDelegate.beamToNamed('/logbook');
          } else if (index == 3) {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const UserProfileScreen(),
              ),
            );
          }
          // Placeholders for 2 and 3
        },
      ),
    );
  }
}
