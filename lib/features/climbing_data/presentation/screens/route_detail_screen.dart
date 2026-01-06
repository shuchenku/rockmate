import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:beamer/beamer.dart';
import 'package:climb_data/climb_data.dart';
import 'package:rockmate/features/climbing_data/presentation/bloc/route_detail_bloc.dart';
import 'package:rockmate/features/climbing_data/domain/events/route_detail_event.dart';
import 'package:rockmate/features/climbing_data/domain/state/route_detail_state.dart';
import 'package:rockmate/injection.dart';

class RouteDetailScreen extends StatelessWidget {
  final String routeId;

  const RouteDetailScreen({
    super.key,
    required this.routeId,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<RouteDetailBloc>()
        ..add(RouteDetailEvent.loadRoute(routeId)),
      child: Scaffold(
        backgroundColor: Colors.grey.shade50,
        appBar: AppBar(
          title: const Text('Route Details'),
          backgroundColor: Colors.white,
          foregroundColor: Colors.black87,
          elevation: 0,
        ),
        body: BlocBuilder<RouteDetailBloc, RouteDetailState>(
          builder: (context, state) {
            return state.when(
              initial: () => const SizedBox.shrink(),
              loading: (id) => const Center(
                child: CircularProgressIndicator(),
              ),
              success: (climb) => _RouteDetailContent(climb: climb),
              error: (id, message) => _ErrorView(
                message: message,
                onRetry: () {
                  context.read<RouteDetailBloc>().add(
                        RouteDetailEvent.loadRoute(id),
                      );
                },
              ),
            );
          },
        ),
        floatingActionButton: BlocBuilder<RouteDetailBloc, RouteDetailState>(
          builder: (context, state) {
            return state.maybeWhen(
              success: (climb) => FloatingActionButton.extended(
                onPressed: () {
                  context.beamToNamed(
                    '/routes/$routeId/log',
                    data: climb,
                  );
                },
                icon: const Icon(Icons.add),
                label: const Text('Log Route'),
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
              ),
              orElse: () => const SizedBox.shrink(),
            );
          },
        ),
      ),
    );
  }
}

class _RouteDetailContent extends StatelessWidget {
  final ClimbEntity climb;

  const _RouteDetailContent({required this.climb});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header Section
          _buildHeader(context),
          
          // Location Breadcrumb
          _buildLocationBreadcrumb(context),
          
          // Description Section
          if (climb.description != null && climb.description!.isNotEmpty)
            _buildDescriptionSection(context),
          
          // Protection Section
          if (climb.protection != null && climb.protection!.isNotEmpty)
            _buildProtectionSection(context),
          
          // Details Section
          _buildDetailsSection(context),
          
          // First Ascent
          if (climb.fa != null && climb.fa!.isNotEmpty)
            _buildFirstAscentSection(context),
          
          const SizedBox(height: 32),
        ],
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Route Name
          Text(
            climb.name,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 12),
          
          // Grade and Type
          Row(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 6,
                ),
                decoration: BoxDecoration(
                  color: Colors.blue.shade50,
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Text(
                  climb.displayGrade,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue.shade700,
                  ),
                ),
              ),
              const SizedBox(width: 8),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 6,
                ),
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Text(
                  climb.primaryType,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey.shade700,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          
          // Quick Stats
          Row(
            children: [
              if (climb.length > 0) ...[
                Icon(Icons.straighten, size: 16, color: Colors.grey.shade600),
                const SizedBox(width: 4),
                Text(
                  '${climb.length}ft',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey.shade700,
                  ),
                ),
                const SizedBox(width: 16),
              ],
              if (climb.boltsCount > 0) ...[
                Icon(Icons.bolt, size: 16, color: Colors.grey.shade600),
                const SizedBox(width: 4),
                Text(
                  '${climb.boltsCount} bolts',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey.shade700,
                  ),
                ),
              ],
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildLocationBreadcrumb(BuildContext context) {
    if (climb.pathTokens.isEmpty) return const SizedBox.shrink();
    
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          bottom: BorderSide(color: Colors.grey.shade200),
        ),
      ),
      child: Row(
        children: [
          Icon(Icons.location_on, size: 16, color: Colors.grey.shade600),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              climb.pathTokens.join(' › '),
              style: TextStyle(
                fontSize: 13,
                color: Colors.grey.shade700,
              ),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDescriptionSection(BuildContext context) {
    return _buildSection(
      context,
      title: 'DESCRIPTION',
      child: Text(
        climb.description!,
        style: const TextStyle(
          fontSize: 15,
          height: 1.5,
        ),
      ),
    );
  }

  Widget _buildProtectionSection(BuildContext context) {
    return _buildSection(
      context,
      title: 'PROTECTION',
      child: Text(
        climb.protection!,
        style: const TextStyle(
          fontSize: 15,
          height: 1.5,
        ),
      ),
    );
  }

  Widget _buildDetailsSection(BuildContext context) {
    return _buildSection(
      context,
      title: 'DETAILS',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // All Grades
          _buildDetailRow('Grades', _buildGradesText()),
          const SizedBox(height: 12),
          
          // All Types
          _buildDetailRow('Types', _buildTypesText()),
          
          // Coordinates
          if (climb.lat != null && climb.lng != null) ...[
            const SizedBox(height: 12),
            _buildDetailRow(
              'Coordinates',
              '${climb.lat!.toStringAsFixed(6)}, ${climb.lng!.toStringAsFixed(6)}',
            ),
          ],
          
          // Safety
          if (climb.safety != null && climb.safety!.isNotEmpty) ...[
            const SizedBox(height: 12),
            _buildDetailRow('Safety', climb.safety!),
          ],
        ],
      ),
    );
  }

  Widget _buildFirstAscentSection(BuildContext context) {
    return _buildSection(
      context,
      title: 'FIRST ASCENT',
      child: Text(
        climb.fa!,
        style: const TextStyle(
          fontSize: 15,
          fontStyle: FontStyle.italic,
        ),
      ),
    );
  }

  Widget _buildSection(
    BuildContext context, {
    required String title,
    required Widget child,
  }) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(top: 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.02),
            blurRadius: 4,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w600,
              color: Colors.grey.shade600,
              letterSpacing: 0.5,
            ),
          ),
          const SizedBox(height: 12),
          child,
        ],
      ),
    );
  }

  Widget _buildDetailRow(String label, String value) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 100,
          child: Text(
            label,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Colors.grey.shade700,
            ),
          ),
        ),
        Expanded(
          child: Text(
            value,
            style: const TextStyle(fontSize: 14),
          ),
        ),
      ],
    );
  }

  String _buildGradesText() {
    final grades = <String>[];
    if (climb.gradeYds != null) grades.add('YDS: ${climb.gradeYds}');
    if (climb.gradeVscale != null) grades.add('V: ${climb.gradeVscale}');
    if (climb.gradeFrench != null) grades.add('French: ${climb.gradeFrench}');
    return grades.isEmpty ? 'Unknown' : grades.join(', ');
  }

  String _buildTypesText() {
    final types = <String>[];
    if (climb.typeSport) types.add('Sport');
    if (climb.typeTrad) types.add('Trad');
    if (climb.typeBouldering) types.add('Boulder');
    if (climb.typeTr) types.add('Top Rope');
    if (climb.typeAlpine) types.add('Alpine');
    if (climb.typeIce) types.add('Ice');
    if (climb.typeMixed) types.add('Mixed');
    if (climb.typeAid) types.add('Aid');
    return types.isEmpty ? 'Unknown' : types.join(', ');
  }
}

class _ErrorView extends StatelessWidget {
  final String message;
  final VoidCallback onRetry;

  const _ErrorView({
    required this.message,
    required this.onRetry,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.error_outline,
              size: 64,
              color: Colors.grey.shade400,
            ),
            const SizedBox(height: 16),
            Text(
              'Unable to Load Route',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.grey.shade700,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              message,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey.shade600,
              ),
            ),
            const SizedBox(height: 24),
            ElevatedButton.icon(
              onPressed: onRetry,
              icon: const Icon(Icons.refresh),
              label: const Text('Try Again'),
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 12,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
