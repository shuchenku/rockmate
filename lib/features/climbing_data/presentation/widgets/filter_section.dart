import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rockmate/features/climbing_data/presentation/bloc/route_search_bloc.dart';
import 'package:rockmate/features/climbing_data/domain/events/route_search_event.dart';
import 'package:rockmate/features/climbing_data/domain/models/route_type.dart';

class FilterSection extends StatefulWidget {
  const FilterSection({super.key});

  @override
  State<FilterSection> createState() => _FilterSectionState();
}

class _FilterSectionState extends State<FilterSection> {
  bool _showFilters = false;
  String _selectedArea = 'all';
  String _selectedType = 'all';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Column(
        children: [
          // Filter Toggle Button
          InkWell(
            onTap: () {
              setState(() {
                _showFilters = !_showFilters;
              });
            },
            borderRadius: BorderRadius.circular(12),
            child: Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.grey.shade300),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.filter_list, size: 20, color: Colors.grey.shade700),
                      const SizedBox(width: 8),
                      Text(
                        'Filters',
                        style: TextStyle(
                          color: Colors.grey.shade700,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  Icon(
                    _showFilters ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down,
                    color: Colors.grey.shade400,
                    size: 20,
                  ),
                ],
              ),
            ),
          ),
          
          // Filter Options (Collapsible)
          if (_showFilters) ...[
            const SizedBox(height: 8),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.grey.shade300),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Area Filter
                  Text(
                    'Area',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey.shade700,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade300),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: DropdownButton<String>(
                      value: _selectedArea,
                      isExpanded: true,
                      underline: const SizedBox(),
                      items: const [
                        DropdownMenuItem(value: 'all', child: Text('All Areas')),
                        // TODO: Populate with actual areas from routes
                      ],
                      onChanged: (value) {
                        setState(() {
                          _selectedArea = value ?? 'all';
                        });
                        // TODO: Emit filter event
                      },
                    ),
                  ),
                  const SizedBox(height: 16),
                  
                  // Type Filter
                  Text(
                    'Type',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey.shade700,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade300),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: DropdownButton<String>(
                      value: _selectedType,
                      isExpanded: true,
                      underline: const SizedBox(),
                      items: const [
                        DropdownMenuItem(value: 'all', child: Text('All Types')),
                        DropdownMenuItem(value: 'sport', child: Text('Sport')),
                        DropdownMenuItem(value: 'trad', child: Text('Trad')),
                        DropdownMenuItem(value: 'boulder', child: Text('Boulder')),
                        DropdownMenuItem(value: 'toprope', child: Text('Top Rope')),
                      ],
                      onChanged: (value) {
                        setState(() {
                          _selectedType = value ?? 'all';
                        });
                        if (value == 'all') {
                          context.read<RouteSearchBloc>().add(
                                const RouteSearchEventRouteTypesChanged({}),
                              );
                        } else {
                          final routeType = RouteType.values.firstWhere(
                            (t) => t.name.toLowerCase() == value,
                            orElse: () => RouteType.sport,
                          );
                          context.read<RouteSearchBloc>().add(
                                RouteSearchEventRouteTypesChanged({routeType}),
                              );
                        }
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ],
      ),
    );
  }
}
