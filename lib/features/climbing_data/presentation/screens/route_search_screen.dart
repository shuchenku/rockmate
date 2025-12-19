import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rockmate/features/climbing_data/presentation/bloc/route_search_bloc.dart';
import 'package:rockmate/features/climbing_data/domain/events/route_search_event.dart';
import 'package:rockmate/features/climbing_data/domain/state/route_search_state.dart';
import 'package:rockmate/features/climbing_data/presentation/widgets/search_bar_widget.dart';
import 'package:rockmate/features/climbing_data/presentation/widgets/filter_section.dart';
import 'package:rockmate/features/climbing_data/presentation/widgets/route_list_widget.dart';
import 'package:rockmate/injection.dart';

class RouteSearchScreen extends StatelessWidget {
  const RouteSearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<RouteSearchBloc>(),
      child: Builder(
        builder: (context) {
          return Column(
            children: [
              // Search bar
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: SearchBarWidget(
                  onSearch: (query) {
                    context.read<RouteSearchBloc>().add(
                          RouteSearchEventQueryChanged(query),
                        );
                  },
                  onClear: () {
                    context.read<RouteSearchBloc>().add(
                          const RouteSearchEventFiltersCleared(),
                        );
                  },
                ),
              ),
              
              // Filters section
              const FilterSection(),
              
              const Divider(height: 1),
              
              // Results list
              Expanded(
                child: BlocBuilder<RouteSearchBloc, RouteSearchState>(
                  builder: (context, state) {
                    return state.map(
                      initial: (_) => _buildEmptyState(
                        icon: Icons.search,
                        message: 'Search for climbing routes',
                      ),
                      loading: (_) => const Center(
                        child: CircularProgressIndicator(),
                      ),
                      success: (state) {
                        if (state.routes.isEmpty) {
                          return _buildEmptyState(
                            icon: Icons.search_off,
                            message: 'No routes found\nTry adjusting your search',
                          );
                        }
                        return RouteListWidget(routes: state.routes);
                      },
                      error: (state) => _buildErrorState(state.message),
                    );
                  },
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  Widget _buildEmptyState({required IconData icon, required String message}) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 64, color: Colors.grey),
          const SizedBox(height: 16),
          Text(
            message,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildErrorState(String message) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.error_outline, size: 64, color: Colors.red),
          const SizedBox(height: 16),
          Text(
            'Error',
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Text(
              message,
              textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.grey),
            ),
          ),
        ],
      ),
    );
  }
}
