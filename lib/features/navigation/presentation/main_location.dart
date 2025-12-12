import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'main_screen.dart';

class MainLocation extends BeamLocation<BeamState> {
  MainLocation(super.routeInformation);

  @override
  List<String> get pathPatterns => ['/*'];

  @override
  List<BeamPage> buildPages(BuildContext context, BeamState state) {
    return [
      const BeamPage(
        key: ValueKey('main'),
        title: 'RockMate',
        child: MainScreen(),
      ),
    ];
  }
}
