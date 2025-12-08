import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';

class LogbookLocation extends BeamLocation<BeamState> {
  LogbookLocation(super.routeInformation);

  @override
  List<String> get pathPatterns => ['/logbook'];

  @override
  List<BeamPage> buildPages(BuildContext context, BeamState state) {
    return [
      const BeamPage(
        key: ValueKey('logbook'),
        title: 'Logbook',
        child: Scaffold(body: Center(child: Text('Logbook - To be implemented'))),
      ),
    ];
  }
}
