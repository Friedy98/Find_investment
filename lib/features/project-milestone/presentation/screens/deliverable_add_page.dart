import 'package:dio/dio.dart';
import 'package:file_picker/file_picker.dart';
import 'package:find_invest_mobile/features/project-milestone/presentation/providers/project_milestone_provider.dart';
import 'package:find_invest_mobile/shared/widgets/loading_overlay.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:find_invest_mobile/core/theme/app_colors.dart';
import 'package:go_router/go_router.dart';

class DeliverableAddPage extends ConsumerStatefulWidget {
  final String projectId;
  final String milestoneId;

  const DeliverableAddPage({
    super.key,
    required this.projectId,
    required this.milestoneId,
  });

  @override
  ConsumerState<DeliverableAddPage> createState() => _DeliverableAddPageState();
}

class _DeliverableAddPageState extends ConsumerState<DeliverableAddPage> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _descriptionController = TextEditingController();
  PlatformFile? _selectedFile;

  @override
  void dispose() {
    _nameController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }

  Future<void> _pickFile() async {
    final result = await FilePicker.platform.pickFiles();
    if (result != null && result.files.isNotEmpty) {
      setState(() {
        _selectedFile = result.files.first;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final milestoneState = ref.watch(projectMilestoneProvider);

    if (milestoneState.errorMessage != null) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(milestoneState.errorMessage!),
            backgroundColor: AppColors.error,
          ),
        );
      });
    }

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.cardBackground,
        elevation: 0,
        leading: IconButton(
          icon:
              Icon(Icons.arrow_back, color: AppColors.textPrimary, size: 24.sp),
          onPressed: () => context.pop(),
        ),
        title: Text(
          'Add Deliverable',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 18.sp,
            fontWeight: FontWeight.w600,
            color: AppColors.textPrimary,
          ),
        ),
      ),
      body: LoadingOverlay(
        isLoading: milestoneState.isLoading,
        child: SingleChildScrollView(
          padding: EdgeInsets.all(20.w),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildTextField(
                  controller: _nameController,
                  label: 'Name',
                  hint: 'Enter deliverable name',
                  required: true,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Name is required';
                    }
                    if (value.length < 3) {
                      return 'Name must be at least 3 characters';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 16.h),
                _buildTextField(
                  controller: _descriptionController,
                  label: 'Description',
                  hint: 'Enter deliverable description',
                  maxLines: 4,
                ),
                SizedBox(height: 16.h),
                _buildFilePicker(),
                SizedBox(height: 24.h),
                _buildSubmitButton(),
              ],
            ).animate().fadeIn().slideY(begin: 0.3),
          ),
        ),
      ),
    );
  }

  Widget _buildTextField({
    required TextEditingController controller,
    required String label,
    required String hint,
    bool required = false,
    int maxLines = 1,
    String? Function(String?)? validator,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            if (required)
              Text(
                '*',
                style: TextStyle(
                  color: AppColors.error,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            SizedBox(width: 4.w),
            Text(
              label,
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 16.sp,
                fontWeight: FontWeight.w600,
                color: AppColors.textPrimary,
              ),
            ),
          ],
        ),
        SizedBox(height: 8.h),
        TextFormField(
          controller: controller,
          maxLines: maxLines,
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 14.sp,
              color: AppColors.textTertiary,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.r),
              borderSide: BorderSide(
                color: AppColors.textTertiary.withOpacity(0.3),
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.r),
              borderSide: const BorderSide(
                color: AppColors.primary,
                width: 2,
              ),
            ),
            contentPadding: EdgeInsets.all(16.w),
          ),
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 16.sp,
            color: AppColors.textPrimary,
          ),
          validator: validator,
        ),
      ],
    );
  }

  Widget _buildFilePicker() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'File (Optional)',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 16.sp,
            fontWeight: FontWeight.w600,
            color: AppColors.textPrimary,
          ),
        ),
        SizedBox(height: 8.h),
        InkWell(
          onTap: _pickFile,
          child: Container(
            padding: EdgeInsets.all(16.w),
            decoration: BoxDecoration(
              border: Border.all(
                color: AppColors.textTertiary.withOpacity(0.3),
              ),
              borderRadius: BorderRadius.circular(12.r),
            ),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    _selectedFile != null
                        ? _selectedFile!.name
                        : 'Select a file',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 16.sp,
                      color: _selectedFile != null
                          ? AppColors.textPrimary
                          : AppColors.textTertiary,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Icon(
                  Icons.upload_file,
                  color: AppColors.primary,
                  size: 20.sp,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildSubmitButton() {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () async {
          if (_formKey.currentState!.validate()) {
            final data = {
              'name': _nameController.text,
              'description': _descriptionController.text,
            };
            FormData formData = FormData.fromMap(data);
            if (_selectedFile != null) {
              formData.files.add(MapEntry(
                'file',
                await MultipartFile.fromFile(
                  _selectedFile!.path!,
                  filename: _selectedFile!.name,
                ),
              ));
            }
            ref
                .read(projectMilestoneProvider.notifier)
                .addDeliverable(
                  widget.milestoneId,
                  data,
                  formData,
                )
                .then((_) {
              context.pop();
            });
          }
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primary,
          padding: EdgeInsets.symmetric(vertical: 16.h),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.r),
          ),
        ),
        child: Text(
          'Add Deliverable',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 16.sp,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
      ),
    ).animate(delay: 200.ms).fadeIn();
  }
}
