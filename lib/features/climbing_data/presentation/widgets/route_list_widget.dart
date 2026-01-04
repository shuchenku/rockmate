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
    // Group routes by area and crag
    final groupedRoutes = _groupRoutesByAreaAndCrag(routes);
    
    return RefreshIndicator(
      onRefresh: () async {
        // TODO: Implement refresh logic
        await Future.delayed(const Duration(seconds: 1));
      },
      child: ListView(
        padding: const EdgeInsets.symmetric(vertical: 16),
        children: [
          // Results count
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
            child: Text(
              '${routes.length} route${routes.length != 1 ? 's' : ''}',
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey.shade600,
              ),
            ),
          ),
          const SizedBox(height: 8),
          
          // Grouped routes
          ...groupedRoutes.entries.map((areaEntry) {
            final area = areaEntry.key;
            final cragGroups = areaEntry.value;
            
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Area header
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 8, 16, 12),
                  child: Text(
                    area,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                
                // Crags under this area
                ...cragGroups.entries.map((cragEntry) {
                  final crag = cragEntry.key;
                  final routesInCrag = cragEntry.value;
                  
                  return Container(
                    margin: const EdgeInsets.only(bottom: 16),
                    child: Card(
                      margin: const EdgeInsets.symmetric(horizontal: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      elevation: 1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Crag header
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                            decoration: BoxDecoration(
                              color: Colors.grey.shade50,
                              border: Border(
                                bottom: BorderSide(color: Colors.grey.shade200),
                              ),
                            ),
                            child: Row(
                              children: [
                                Icon(Icons.location_on, size: 16, color: Colors.grey.shade500),
                                const SizedBox(width: 6),
                                Text(
                                  crag,
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.grey.shade700,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          
                          // Routes in this crag
                          Column(
                            children: routesInCrag.asMap().entries.map((entry) {
                              final index = entry.key;
                              final route = entry.value;
                              final isLast = index == routesInCrag.length - 1;
                              
                              return Column(
                                children: [
                                  RouteCardWidget(route: route),
                                  if (!isLast)
                                    Divider(height: 1, color: Colors.grey.shade100),
                                ],
                              );
                            }).toList(),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
              ],
            );
          }),
        ],
      ),
    );
  }

  Map<String, Map<String, List<RouteEntity>>> _groupRoutesByAreaAndCrag(
    List<RouteEntity> routes,
  ) {
    final grouped = <String, Map<String, List<RouteEntity>>>{};
    
    for (final route in routes) {
      // Extract area and crag from location string
      // Format is typically "Area > Crag" or just use location as both
      final parts = route.location.split('>');
      final area = parts.length > 1 ? parts[0].trim() : route.location;
      final crag = parts.length > 1 ? parts[1].trim() : route.location;
      
      grouped.putIfAbsent(area, () => {});
      grouped[area]!.putIfAbsent(crag, () => []);
      grouped[area]![crag]!.add(route);
    }
    
    return grouped;
  }
}
