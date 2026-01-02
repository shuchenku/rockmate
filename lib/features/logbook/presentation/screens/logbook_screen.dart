import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:rockmate/core/domain/entities/tick_entity.dart';
import 'package:rockmate/features/logbook/presentation/bloc/logbook_bloc.dart';
import 'package:rockmate/features/logbook/domain/events/logbook_event.dart';
import 'package:rockmate/features/logbook/domain/state/logbook_state.dart';
import 'package:rockmate/injection.dart';

class LogbookScreen extends StatelessWidget {
  const LogbookScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<LogbookBloc>()
        ..add(const LogbookEvent.loadLogbook()),
      child: Scaffold(
        backgroundColor: Colors.grey.shade50,
        appBar: AppBar(
          title: const Text('My Logbook'),
          backgroundColor: Colors.white,
          foregroundColor: Colors.black87,
          elevation: 0,
        ),
        body: BlocBuilder<LogbookBloc, LogbookState>(
          builder: (context, state) {
            return state.when(
              initial: () => const SizedBox.shrink(),
              loading: () => const Center(
                child: CircularProgressIndicator(),
              ),
              success: (projects, sends) => _LogbookContent(
                projects: projects,
                sends: sends,
              ),
              failure: (errorMessage) => Center(
                child: Text('Error: $errorMessage'),
              ),
            );
          },
        ),
      ),
    );
  }
}

class _LogbookContent extends StatelessWidget {
  final List<TickEntity> projects;
  final List<TickEntity> sends;

  const _LogbookContent({
    required this.projects,
    required this.sends,
  });

  @override
  Widget build(BuildContext context) {
    if (projects.isEmpty && sends.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.book_outlined,
              size: 64,
              color: Colors.grey.shade400,
            ),
            const SizedBox(height: 16),
            Text(
              'No logged routes yet',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.grey.shade700,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Log a route from the route detail screen',
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey.shade600,
              ),
            ),
          ],
        ),
      );
    }

    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        if (projects.isNotEmpty) ...[
          _SectionHeader(
            title: 'Projects',
            count: projects.length,
            icon: Icons.star_border,
          ),
          const SizedBox(height: 12),
          ...projects.map((tick) => _TickCard(tick: tick)),
          const SizedBox(height: 24),
        ],
        if (sends.isNotEmpty) ...[
          _SectionHeader(
            title: 'Sends',
            count: sends.length,
            icon: Icons.check_circle_outline,
          ),
          const SizedBox(height: 12),
          ...sends.map((tick) => _TickCard(tick: tick)),
        ],
      ],
    );
  }
}

class _SectionHeader extends StatelessWidget {
  final String title;
  final int count;
  final IconData icon;

  const _SectionHeader({
    required this.title,
    required this.count,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, size: 20, color: Colors.grey.shade700),
        const SizedBox(width: 8),
        Text(
          title,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.grey.shade800,
          ),
        ),
        const SizedBox(width: 8),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
          decoration: BoxDecoration(
            color: Colors.grey.shade300,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Text(
            '$count',
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w600,
              color: Colors.grey.shade700,
            ),
          ),
        ),
      ],
    );
  }
}

class _TickCard extends StatelessWidget {
  final TickEntity tick;

  const _TickCard({required this.tick});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Route name and grade
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Text(
                    tick.routeName,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 4,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.blue.shade50,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Text(
                    tick.routeGrade,
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: Colors.blue.shade700,
                    ),
                  ),
                ),
              ],
            ),
            
            const SizedBox(height: 8),
            
            // Status and date
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 4,
                  ),
                  decoration: BoxDecoration(
                    color: _getStatusColor(tick.status),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Text(
                    tick.status.displayName,
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                Icon(
                  Icons.calendar_today,
                  size: 14,
                  color: Colors.grey.shade600,
                ),
                const SizedBox(width: 4),
                Text(
                  DateFormat.yMMMd().format(tick.date),
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.grey.shade600,
                  ),
                ),
              ],
            ),
            
            // Location
            if (tick.location.isNotEmpty) ...[
              const SizedBox(height: 8),
              Row(
                children: [
                  Icon(
                    Icons.location_on,
                    size: 14,
                    color: Colors.grey.shade600,
                  ),
                  const SizedBox(width: 4),
                  Expanded(
                    child: Text(
                      tick.location,
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.grey.shade600,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ],
            
            // Comment
            if (tick.comment.isNotEmpty) ...[
              const SizedBox(height: 12),
              Text(
                tick.comment,
                style: const TextStyle(
                  fontSize: 14,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }

  Color _getStatusColor(status) {
    switch (status.toString()) {
      case 'TickStatus.todo':
        return Colors.grey;
      case 'TickStatus.fell':
        return Colors.orange;
      case 'TickStatus.take':
        return Colors.amber;
      case 'TickStatus.onSight':
        return Colors.green;
      case 'TickStatus.flash':
        return Colors.blue;
      case 'TickStatus.redPoint':
        return Colors.purple;
      default:
        return Colors.grey;
    }
  }
}
