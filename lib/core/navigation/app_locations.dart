import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rockmate/features/climbing_data/presentation/screens/route_search_screen.dart';
import 'package:rockmate/features/climbing_data/presentation/screens/route_detail_screen.dart';
import 'package:rockmate/features/logbook/presentation/screens/add_tick_screen.dart';
import 'package:rockmate/features/logbook/presentation/screens/logbook_screen.dart';
import 'package:rockmate/features/user_profile/presentation/screens/user_profile_screen.dart';
import 'package:rockmate/features/user_profile/presentation/bloc/user_profile_bloc.dart';
import 'package:rockmate/injection.dart';

// --- Routes Feature ---
class RoutesLocation extends BeamLocation<BeamState> {
  RoutesLocation(super.routeInformation);

  @override
  List<String> get pathPatterns => [
        '/routes/:routeId',
        '/routes/:routeId/log',
      ];

  @override
  List<BeamPage> buildPages(BuildContext context, BeamState state) {
    final pages = [
      const BeamPage(
        key: ValueKey('route-search'),
        title: 'Routes',
        child: RouteSearchScreen(),
      ),
    ];

    if (state.pathParameters.containsKey('routeId')) {
      final routeId = state.pathParameters['routeId']!;
      pages.add(
        BeamPage(
          key: ValueKey('route-$routeId'),
          title: 'Route Detail',
          child: RouteDetailScreen(routeId: routeId),
        ),
      );

      // Add tick screen
      if (state.uri.path.contains('/log')) {
        pages.add(
          BeamPage(
            key: ValueKey('log-$routeId'),
            title: 'Log Route',
            child: AddTickScreen(routeId: routeId),
          ),
        );
      }
    }

    return pages;
  }
}

// --- Logbook Feature ---
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

// --- User Profile Feature ---
class UserProfileLocation extends BeamLocation<BeamState> {
  UserProfileLocation(super.routeInformation);
  
  @override
  List<String> get pathPatterns => ['/profile'];

  @override
  List<BeamPage> buildPages(BuildContext context, BeamState state) {
    return [
      BeamPage(
        key: const ValueKey('profile'),
        title: 'Profile',
        child: BlocProvider(
          create: (context) => getIt<UserProfileBloc>(),
          child: const UserProfileScreen(),
        ),
      ),
    ];
  }
}
