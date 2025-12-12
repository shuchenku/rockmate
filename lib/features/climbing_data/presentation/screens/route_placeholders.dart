import 'package:flutter/material.dart';

class RouteSearchScreen extends StatelessWidget {
  const RouteSearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Center(child: Text('Route Search Screen')));
  }
}

class RouteDetailScreen extends StatelessWidget {
  final String routeId;
  const RouteDetailScreen({super.key, required this.routeId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text('Route Detail: $routeId')));
  }
}
