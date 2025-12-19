import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:rockmate/features/climbing_data/presentation/routes_location.dart';
import 'package:rockmate/features/logbook/presentation/logbook_location.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  late final _routerDelegate = BeamerDelegate(
    locationBuilder: BeamerLocationBuilder(
      beamLocations: [
        RoutesLocation(const RouteInformation(location: '/routes')),
        LogbookLocation(const RouteInformation(location: '/logbook')),
      ],
    ),
  );

  int _currentIndex = 0;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final uriString = Beamer.of(context).configuration.location!;
    if (uriString.contains('logbook')) {
      _currentIndex = 1;
    } else {
      _currentIndex = 0;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Beamer(
        routerDelegate: _routerDelegate,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: const [
          BottomNavigationBarItem(label: 'Routes', icon: Icon(Icons.terrain)),
          BottomNavigationBarItem(label: 'Logbook', icon: Icon(Icons.book)),
          BottomNavigationBarItem(label: 'Partners', icon: Icon(Icons.people)), // Placeholder
          BottomNavigationBarItem(label: 'Profile', icon: Icon(Icons.person)), // Placeholder
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
          if (index == 0) {
            _routerDelegate.beamToNamed('/routes');
          } else if (index == 1) {
            _routerDelegate.beamToNamed('/logbook');
          }
          // Placeholders for 2 and 3
        },
      ),
    );
  }
}
