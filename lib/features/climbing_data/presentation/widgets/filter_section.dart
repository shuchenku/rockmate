import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rockmate/features/climbing_data/presentation/bloc/route_search_bloc.dart';
import 'package:rockmate/features/climbing_data/domain/events/route_search_event.dart';
import 'package:rockmate/features/climbing_data/domain/models/route_type.dart';

class FilterSection extends StatelessWidget {
  const FilterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Route Type Filters
          Wrap(
            spacing: 8,
            children: RouteType.values.map((type) {
              return FilterChip(
                label: Text(type.displayName),
                onSelected: (selected) {
                  // For now, just send empty set when toggling
                  // In full implementation, track selected types
                  context.read<RouteSearchBloc>().add(
                        RouteSearchEventRouteTypesChanged(
                          selected ? {type} : {},
                        ),
                      );
                },
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
