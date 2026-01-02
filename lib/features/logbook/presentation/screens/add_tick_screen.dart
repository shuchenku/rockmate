import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:beamer/beamer.dart';
import 'package:intl/intl.dart';
import 'package:uuid/uuid.dart';
import 'package:climb_data/climb_data.dart';
import 'package:rockmate/core/domain/entities/tick_entity.dart';
import 'package:rockmate/core/domain/entities/tick_status.dart';
import 'package:rockmate/features/logbook/presentation/bloc/logbook_bloc.dart';
import 'package:rockmate/features/logbook/domain/events/logbook_event.dart';

const _uuid = Uuid();

class AddTickScreen extends StatefulWidget {
  final ClimbEntity climb;
  
  const AddTickScreen({
    super.key,
    required this.climb,
  });
  
  @override
  State<AddTickScreen> createState() => _AddTickScreenState();
}

class _AddTickScreenState extends State<AddTickScreen> {
  late DateTime _selectedDate;
  late TickStatus _selectedStatus;
  late TextEditingController _commentController;
  
  @override
  void initState() {
    super.initState();
    _selectedDate = DateTime.now();
    _selectedStatus = TickStatus.todo;
    _commentController = TextEditingController();
  }
  
  @override
  void dispose() {
    _commentController.dispose();
    super.dispose();
  }
  
  Future<void> _showDatePicker() async {
    final picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: DateTime(2000),
      lastDate: DateTime.now(),
    );
    
    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
      });
    }
  }
  
  void _saveTick() {
    final tick = TickEntity(
      id: _uuid.v4(),
      routeId: widget.climb.uuid,
      routeName: widget.climb.name,
      date: _selectedDate,
      status: _selectedStatus,
      comment: _commentController.text.trim(),
      location: widget.climb.locationString,
      routeGrade: widget.climb.displayGrade,
    );
    
    context.read<LogbookBloc>().add(
      LogbookEvent.addTick(tick: tick),
    );
    
    // Navigate back to route detail
    context.beamBack();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      appBar: AppBar(
        title: Text('Log ${widget.climb.name}'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black87,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Date picker
              Card(
                child: ListTile(
                  title: const Text('Date'),
                  subtitle: Text(DateFormat.yMMMd().format(_selectedDate)),
                  trailing: const Icon(Icons.calendar_today),
                  onTap: _showDatePicker,
                ),
              ),
              
              const SizedBox(height: 16),
              
              // Status dropdown
              Card(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: DropdownButtonFormField<TickStatus>(
                    value: _selectedStatus,
                    decoration: const InputDecoration(
                      labelText: 'Status',
                      border: InputBorder.none,
                    ),
                    items: TickStatus.values.map((status) {
                      return DropdownMenuItem(
                        value: status,
                        child: Text(status.displayName),
                      );
                    }).toList(),
                    onChanged: (value) {
                      if (value != null) {
                        setState(() => _selectedStatus = value);
                      }
                    },
                  ),
                ),
              ),
              
              const SizedBox(height: 16),
              
              // Grade (pre-filled, read-only)
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Grade',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        widget.climb.displayGrade,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              
              const SizedBox(height: 16),
              
              // Comment
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: TextFormField(
                    controller: _commentController,
                    decoration: const InputDecoration(
                      labelText: 'Comment',
                      hintText: 'How did it go?',
                      border: InputBorder.none,
                    ),
                    maxLines: 4,
                    textCapitalization: TextCapitalization.sentences,
                  ),
                ),
              ),
              
              const SizedBox(height: 24),
              
              // Save button
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: _saveTick,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: const Text(
                    'Save Tick',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
