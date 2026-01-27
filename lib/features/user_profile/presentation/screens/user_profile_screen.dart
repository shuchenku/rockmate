import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:rockmate/features/user_profile/presentation/bloc/user_profile_bloc.dart';
import 'package:rockmate/features/user_profile/domain/events/user_profile_event.dart';
import 'package:rockmate/features/user_profile/domain/state/user_profile_state.dart';
import 'package:rockmate/features/user_profile/domain/entities/user_profile_entity.dart';

class UserProfileScreen extends StatefulWidget {
  const UserProfileScreen({super.key});

  @override
  State<UserProfileScreen> createState() => _UserProfileScreenState();
}

class _UserProfileScreenState extends State<UserProfileScreen> {
  final _formKey = GlobalKey<FormState>();
  final _displayNameController = TextEditingController();
  final _bioController = TextEditingController();
  final _ageController = TextEditingController();
  final _genderController = TextEditingController();
  final _locationController = TextEditingController();
  final _sportGradeController = TextEditingController();
  final _boulderGradeController = TextEditingController();
  final _tradGradeController = TextEditingController();
  final ImagePicker _picker = ImagePicker();
  
  String? _selectedPhotoPath;
  bool _isPublic = true;
  // Local state for profile being edited serves as a reference for creation/update timestamps
  // but isEditing state is now fully managed by the Bloc
  UserProfileEntity? _editingProfile;

  @override
  void initState() {
    super.initState();
    final user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      context.read<UserProfileBloc>().add(LoadProfile(user.uid));
    }
  }

  void _populateControllers(UserProfileEntity profile) {
    _editingProfile = profile;
    _displayNameController.text = profile.displayName;
    _bioController.text = profile.bio ?? '';
    _ageController.text = profile.age?.toString() ?? '';
    _genderController.text = profile.gender ?? '';
    _locationController.text = profile.location ?? '';
    _sportGradeController.text = profile.sportGrade ?? '';
    _boulderGradeController.text = profile.boulderGrade ?? '';
    _tradGradeController.text = profile.tradGrade ?? '';
    setState(() {
      _isPublic = profile.isPublic;
    });
  }

  void _startEditing(UserProfileEntity profile) {
    _populateControllers(profile);
    context.read<UserProfileBloc>().add(const SetEditMode(true));
  }

  void _cancelEditing() {
    setState(() {
      _selectedPhotoPath = null;
      _editingProfile = null; // Clean up local reference
    });
    context.read<UserProfileBloc>().add(const SetEditMode(false));
  }

  Future<void> _pickPhoto() async {
    try {
      final XFile? image = await _picker.pickImage(
        source: ImageSource.gallery,
        maxWidth: 512,
        maxHeight: 512,
        imageQuality: 85,
      );
      
      if (image != null) {
        setState(() {
          _selectedPhotoPath = image.path;
        });
        
        if (mounted) {
          context.read<UserProfileBloc>().add(UploadPhoto(image.path));
        }
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Error picking image: $e')),
        );
      }
    }
  }

  void _saveProfile(UserProfileEntity currentProfile) {
    if (!_formKey.currentState!.validate()) {
      return;
    }

    final user = FirebaseAuth.instance.currentUser;
    if (user == null) return;

    final updatedProfile = UserProfileEntity(
      userId: user.uid,
      displayName: _displayNameController.text.trim(),
      photoUrl: currentProfile.photoUrl,
      bio: _bioController.text.trim().isNotEmpty ? _bioController.text.trim() : null,
      age: _ageController.text.trim().isNotEmpty ? int.tryParse(_ageController.text.trim()) : null,
      gender: _genderController.text.trim().isNotEmpty ? _genderController.text.trim() : null,
      location: _locationController.text.trim().isNotEmpty ? _locationController.text.trim() : null,
      sportGrade: _sportGradeController.text.trim().isNotEmpty ? _sportGradeController.text.trim() : null,
      boulderGrade: _boulderGradeController.text.trim().isNotEmpty ? _boulderGradeController.text.trim() : null,
      tradGrade: _tradGradeController.text.trim().isNotEmpty ? _tradGradeController.text.trim() : null,
      isPublic: _isPublic,
      createdAt: currentProfile.createdAt ?? DateTime.now(),
      updatedAt: DateTime.now(),
    );

    context.read<UserProfileBloc>().add(UpdateProfile(updatedProfile));
    // The Bloc will handle setting isEditing back to false upon success
    
    setState(() {
      _editingProfile = null;
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<UserProfileBloc, UserProfileState>(
        listener: (context, state) {
          if (state is Loaded && state.isEditing && _editingProfile == null) {
            // Edge case: if state says editing but we haven't populated controllers (e.g. hypothetical hot restart)
            // We should populate them. But normally _startEditing handles this.
            // This is just a safety check if needed, but for now we rely on explicit user action.
          }
        },
        builder: (context, state) {
          return state.when(
            initial: () => const Center(child: CircularProgressIndicator()),
            loading: () => const Center(child: CircularProgressIndicator()),
            loaded: (profile, isEditing) => SingleChildScrollView(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  // Profile Card
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withValues(alpha: 0.05),
                          blurRadius: 10,
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                    clipBehavior: Clip.hardEdge,
                    child: Stack(
                      children: [
                        // Background Column (Header + Content)
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Header background
                            Container(
                              height: 80,
                              decoration: const BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [Color(0xFF2563EB), Color(0xFF1D4ED8)],
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                ),
                              ),
                            ),
                            
                            // Profile Content
                            Padding(
                              // Top padding: 32px (rest of avatar) + 12px (margin) = 44px
                              padding: const EdgeInsets.fromLTRB(16, 44, 16, 16),
                              child: !isEditing ? _buildViewMode(profile) : _buildEditMode(profile),
                            ),
                          ],
                        ),

                        // Overlapping Avatar Row
                        Positioned(
                          top: 40, // 80 (header) - 40 (overlap)
                          left: 16,
                          right: 16,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              // Avatar
                              GestureDetector(
                                onTap: isEditing ? _pickPhoto : null,
                                child: Container(
                                  padding: const EdgeInsets.all(4),
                                  decoration: const BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black12,
                                        blurRadius: 8,
                                      ),
                                    ],
                                  ),
                                  child: CircleAvatar(
                                    radius: 32,
                                    backgroundImage: _selectedPhotoPath != null
                                        ? FileImage(File(_selectedPhotoPath!))
                                        : (profile.photoUrl != null
                                            ? NetworkImage(profile.photoUrl!)
                                            : null) as ImageProvider?,
                                    backgroundColor: Colors.grey.shade200,
                                    child: (_selectedPhotoPath == null && profile.photoUrl == null)
                                        ? Icon(Icons.person, size: 40, color: Colors.grey.shade400)
                                        : null,
                                  ),
                                ),
                              ),

                              // Edit Button (View Mode Only)
                              if (!isEditing)
                                ElevatedButton(
                                  onPressed: () => _startEditing(profile),
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(0xFF2563EB),
                                    foregroundColor: Colors.white,
                                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                                    elevation: 0,
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: const [
                                      Icon(Icons.edit, size: 14),
                                      SizedBox(width: 6),
                                      Text('Edit', style: TextStyle(fontSize: 14)),
                                    ],
                                  ),
                                ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  if (!isEditing) ...[
                    const SizedBox(height: 16),
                    // Sign Out Button
                    SizedBox(
                      width: double.infinity,
                      child: FilledButton.icon(
                        onPressed: () => context.read<UserProfileBloc>().add(const SignOut()),
                        style: FilledButton.styleFrom(
                          backgroundColor: Colors.red,
                        ),
                        icon: const Icon(Icons.logout),
                        label: const Text('Sign Out'),
                      ),
                    ),
                  ],
                ],
              ),
            ),
            uploading: (progress) => const Center(child: CircularProgressIndicator()),
            error: (message) => Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.error, size: 48, color: Colors.red),
                  const SizedBox(height: 16),
                  Text('Error: $message'),
                  const SizedBox(height: 16),
                  FilledButton.icon(
                    onPressed: () => context.read<UserProfileBloc>().add(const SignOut()),
                    icon: const Icon(Icons.logout),
                    label: const Text('Sign Out'),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildViewMode(UserProfileEntity profile) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Name
        Text(
          profile.displayName,
          style: const TextStyle(fontSize: 18),
        ),
        const SizedBox(height: 4),
        
        // Metadata row
        Wrap(
          spacing: 10,
          runSpacing: 4,
          children: [
            if (profile.location != null)
              _buildMetadata(Icons.location_on, profile.location!),
            if (profile.age != null)
              _buildMetadata(Icons.calendar_today, '${profile.age}'),
            _buildMetadata(
              profile.isPublic ? Icons.lock_open : Icons.lock,
              profile.isPublic ? 'Public' : 'Private',
            ),
          ],
        ),
        const SizedBox(height: 8),
        
        // Bio
        if (profile.bio != null && profile.bio!.isNotEmpty)
          Text(
            profile.bio!,
            style: TextStyle(fontSize: 12, color: Colors.grey.shade700, height: 1.625),
          ),
        
        // Climbing Grades
        if (profile.sportGrade != null || profile.boulderGrade != null || profile.tradGrade != null) ...[
          const SizedBox(height: 12),
          Text('Climbing Grades', style: TextStyle(fontSize: 12, color: Colors.grey.shade500)),
          const SizedBox(height: 8),
          Row(
            children: [
              if (profile.sportGrade != null)
                Expanded(child: _buildGradeCard('Sport', profile.sportGrade!, const Color(0xFF3B82F6), const Color(0xFFDCEEFF))),
              if (profile.sportGrade != null && (profile.boulderGrade != null || profile.tradGrade != null))
                const SizedBox(width: 8),
              if (profile.boulderGrade != null)
                Expanded(child: _buildGradeCard('Boulder', profile.boulderGrade!, const Color(0xFF9333EA), const Color(0xFFF3E8FF))),
              if (profile.boulderGrade != null && profile.tradGrade != null)
                const SizedBox(width: 8),
             if (profile.tradGrade != null)
                Expanded(child: _buildGradeCard('Trad', profile.tradGrade!, const Color(0xFF10B981), const Color(0xFFD1FAE5))),
            ],
          ),
        ],
      ],
    );
  }

  Widget _buildEditMode(UserProfileEntity profile) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 12),
          _buildTextField('Name', _displayNameController, required: true),
          _buildTextField('Location', _locationController),
          Row(
            children: [
              Expanded(child: _buildTextField('Age', _ageController, keyboardType: TextInputType.number)),
              const SizedBox(width: 12),
              Expanded(child: _buildTextField('Gender', _genderController)),
            ],
          ),
          Row(
            children: [
              Expanded(child: _buildTextField('Sport', _sportGradeController)),
              const SizedBox(width: 8),
              Expanded(child: _buildTextField('Boulder', _boulderGradeController)),
              const SizedBox(width: 8),
              Expanded(child: _buildTextField('Trad', _tradGradeController)),
            ],
          ),
          _buildTextField('Bio', _bioController, maxLines: 3),
          Row(
            children: [
              Checkbox(
                value: _isPublic,
                onChanged: (value) => setState(() => _isPublic = value ?? true),
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                visualDensity: VisualDensity.compact,
              ),
              const SizedBox(width: 8),
              const Text('Make profile public', style: TextStyle(fontSize: 14, color: Color(0xFF374151))),
            ],
          ),
          const SizedBox(height: 8),
           Row(
             children: [
               Expanded(
                 child: ElevatedButton(
                   onPressed: _cancelEditing,
                   style: ElevatedButton.styleFrom(
                     backgroundColor: Colors.grey.shade200,
                     foregroundColor: Colors.grey.shade700,
                     padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                     elevation: 0,
                   ),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: const [
                       Icon(Icons.close, size: 16),
                       SizedBox(width: 8),
                       Text('Cancel', style: TextStyle(fontSize: 14)),
                     ],
                   ),
                 ),
               ),
               const SizedBox(width: 8),
               Expanded(
                 child: ElevatedButton(
                   onPressed: () => _saveProfile(profile),
                   style: ElevatedButton.styleFrom(
                     backgroundColor: const Color(0xFF2563EB),
                     foregroundColor: Colors.white,
                     padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                   ),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: const [
                       Icon(Icons.check, size: 16),
                       SizedBox(width: 8),
                       Text('Save', style: TextStyle(fontSize: 14)),
                     ],
                   ),
                 ),
               ),
             ],
           ),
        ],
      ),
    );
  }

  Widget _buildTextField(String label, TextEditingController controller, {bool required = false, int maxLines = 1, TextInputType? keyboardType}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label, style: TextStyle(fontSize: 12, color: Colors.grey.shade700, fontWeight: FontWeight.w500)),
          const SizedBox(height: 4),
          TextFormField(
            controller: controller,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(color: Colors.grey.shade300),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(color: Colors.grey.shade300),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(color: Color(0xFF2563EB), width: 2),
              ),
              contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              isDense: true,
            ),
            style: const TextStyle(fontSize: 14),
            maxLines: maxLines,
            keyboardType: keyboardType,
            validator: required ? (value) => (value == null || value.trim().isEmpty) ? '$label is required' : null : null,
          ),
        ],
      ),
    );
  }

  Widget _buildMetadata(IconData icon, String text) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, size: 14, color: Colors.grey.shade600),
        const SizedBox(width: 4),
        Text(text, style: TextStyle(fontSize: 12, color: Colors.grey.shade600)),
      ],
    );
  }

  Widget _buildGradeCard(String label, String grade, Color textColor, Color bgColor) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          Text(label, style: TextStyle(fontSize: 12, color: Colors.grey.shade600)),
          const SizedBox(height: 2),
          Text(grade, style: TextStyle(fontSize: 16, color: textColor)),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _displayNameController.dispose();
    _bioController.dispose();
    _ageController.dispose();
    _genderController.dispose();
    _locationController.dispose();
    _sportGradeController.dispose();
    _boulderGradeController.dispose();
    _tradGradeController.dispose();
    super.dispose();
  }
}
