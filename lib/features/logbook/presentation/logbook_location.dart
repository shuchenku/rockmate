import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:rockmate/features/logbook/presentation/screens/logbook_screen.dart';

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
        child: LogbookScreen(),
      ),
    ];
  }
}
