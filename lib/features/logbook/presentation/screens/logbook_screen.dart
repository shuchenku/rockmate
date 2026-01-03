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
      child: BlocBuilder<LogbookBloc, LogbookState>(
        builder: (context, state) {
          return state.when(
            initial: () => Scaffold(
              backgroundColor: Colors.grey.shade50,
              appBar: AppBar(
                title: const Text('My Logbook'),
                backgroundColor: Colors.white,
                foregroundColor: Colors.black87,
                elevation: 0,
              ),
              body: const SizedBox.shrink(),
            ),
            loading: () => Scaffold(
              backgroundColor: Colors.grey.shade50,
              appBar: AppBar(
                title: const Text('My Logbook'),
                backgroundColor: Colors.white,
                foregroundColor: Colors.black87,
                elevation: 0,
              ),
              body: const Center(
                child: CircularProgressIndicator(),
              ),
            ),
            success: (projects, sends) => _LogbookContent(
              projects: projects,
              sends: sends,
            ),
            failure: (errorMessage) => Scaffold(
              backgroundColor: Colors.grey.shade50,
              appBar: AppBar(
                title: const Text('My Logbook'),
                backgroundColor: Colors.white,
                foregroundColor: Colors.black87,
                elevation: 0,
              ),
              body: Center(
                child: Text('Error: $errorMessage'),
              ),
            ),
          );
        },
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
      return Scaffold(
        backgroundColor: Colors.grey.shade50,
        appBar: AppBar(
          title: const Text('My Logbook'),
          backgroundColor: Colors.white,
          foregroundColor: Colors.black87,
          elevation: 0,
        ),
        body: Center(
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
        ),
      );
    }

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.grey.shade50,
        appBar: AppBar(
          title: const Text('My Logbook'),
          backgroundColor: Colors.white,
          foregroundColor: Colors.black87,
          elevation: 0,
          bottom: TabBar(
            labelColor: Colors.black87,
            unselectedLabelColor: Colors.grey.shade600,
            indicatorColor: Colors.blue,
            tabs: [
              Tab(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.star_border, size: 18),
                    const SizedBox(width: 8),
                    Text('Projects (${projects.length})'),
                  ],
                ),
              ),
              Tab(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.check_circle_outline, size: 18),
                    const SizedBox(width: 8),
                    Text('Sends (${sends.length})'),
                  ],
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            _TickList(ticks: projects),
            _TickList(ticks: sends),
          ],
        ),
      ),
    );
  }
}

class _TickList extends StatelessWidget {
  final List<TickEntity> ticks;

  const _TickList({required this.ticks});

  @override
  Widget build(BuildContext context) {
    if (ticks.isEmpty) {
      return Center(
        child: Text(
          'No routes yet',
          style: TextStyle(
            fontSize: 16,
            color: Colors.grey.shade600,
          ),
        ),
      );
    }

    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: ticks.length,
      itemBuilder: (context, index) {
        final tick = ticks[index];
        return Dismissible(
          key: Key(tick.id),
          direction: DismissDirection.endToStart,
          background: Container(
            margin: const EdgeInsets.only(bottom: 12),
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(8),
            ),
            alignment: Alignment.centerRight,
            padding: const EdgeInsets.only(right: 20),
            child: const Icon(
              Icons.delete,
              color: Colors.white,
              size: 28,
            ),
          ),
          onDismissed: (_) {
            context.read<LogbookBloc>().add(
              LogbookEvent.deleteTick(tickId: tick.id),
            );
            
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('Deleted ${tick.routeName}'),
                duration: const Duration(seconds: 2),
              ),
            );
          },
          child: _TickCard(tick: tick),
        );
      },
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
