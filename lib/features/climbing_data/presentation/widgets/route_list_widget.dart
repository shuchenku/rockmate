import 'package:flutter/material.dart';
import 'package:rockmate/core/domain/entities/route_entity.dart';
import 'package:rockmate/features/climbing_data/presentation/widgets/route_card_widget.dart';

class RouteListWidget extends StatelessWidget {
  final List<RouteEntity> routes;

  const RouteListWidget({
    super.key,
    required this.routes,
  });

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {
        // TODO: Implement refresh logic
        await Future.delayed(const Duration(seconds: 1));
      },
      child: ListView.builder(
        itemCount: routes.length,
        padding: const EdgeInsets.all(16),
        itemBuilder: (context, index) {
          return RouteCardWidget(route: routes[index]);
        },
      ),
    );
  }
}
