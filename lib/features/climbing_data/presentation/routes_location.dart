import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';

class RoutesLocation extends BeamLocation<BeamState> {
  RoutesLocation(super.routeInformation);

  @override
  List<String> get pathPatterns => ['/routes/:routeId'];

  @override
  List<BeamPage> buildPages(BuildContext context, BeamState state) {
    final pages = [
      const BeamPage(
        key: ValueKey('route-search'),
        title: 'Routes',
        child: Scaffold(body: Center(child: Text('Route Search - To be implemented'))),
      ),
    ];

    if (state.pathParameters.containsKey('routeId')) {
      final routeId = state.pathParameters['routeId']!;
      pages.add(
        BeamPage(
          key: ValueKey('route-$routeId'),
          title: 'Route Detail',
          child: Scaffold(body: Center(child: Text('Route Detail: $routeId - To be implemented'))),
        ),
      );
    }

    return pages;
  }
}
