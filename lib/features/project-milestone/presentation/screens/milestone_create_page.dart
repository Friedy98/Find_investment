import 'package:find_invest_mobile/features/project-milestone/presentation/providers/project_milestone_provider.dart';
import 'package:find_invest_mobile/shared/widgets/loading_overlay.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:find_invest_mobile/core/theme/app_colors.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

class MilestoneCreatePage extends ConsumerStatefulWidget {
  final String projectId;

  const MilestoneCreatePage({super.key, required this.projectId});

  @override
  ConsumerState<MilestoneCreatePage> createState() =>
      _MilestoneCreatePageState();
}

class _MilestoneCreatePageState extends ConsumerState<MilestoneCreatePage> {
  final _formKey = GlobalKey<FormState>();
  final _titleController = TextEditingController();
  final _descriptionController = TextEditingController();
  DateTime? _dueDate;
  String _status = 'pending';
  final _progressController = TextEditingController(text: '0');

  @override
  void dispose() {
    _titleController.dispose();
    _descriptionController.dispose();
    _progressController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final milestoneState = ref.watch(projectMilestoneProvider);

    // if (milestoneState.errorMessage != null) {
    //   WidgetsBinding.instance.addPostFrameCallback((_) {
    //     ScaffoldMessenger.of(context).showSnackBar(
    //       SnackBar(
    //         content: Text(milestoneState.errorMessage!),
    //         backgroundColor: AppColors.error,
    //       ),
    //     );
    //   });
    // }

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
          'Create Milestone',
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
                  controller: _titleController,
                  label: 'Title',
                  hint: 'Enter milestone title',
                  required: true,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Title is required';
                    }
                    if (value.length < 3) {
                      return 'Title must be at least 3 characters';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 16.h),
                _buildTextField(
                  controller: _descriptionController,
                  label: 'Description',
                  hint: 'Enter milestone description',
                  maxLines: 4,
                ),
                SizedBox(height: 16.h),
                _buildDatePickerField(context),
                SizedBox(height: 16.h),
                _buildStatusDropdown(),
                SizedBox(height: 16.h),
                _buildProgressSlider(),
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

  Widget _buildDatePickerField(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
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
              'Due Date',
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
        InkWell(
          onTap: () async {
            final selectedDate = await showDatePicker(
              context: context,
              initialDate: DateTime.now(),
              firstDate: DateTime.now(),
              lastDate: DateTime.now().add(const Duration(days: 365 * 5)),
            );
            if (selectedDate != null) {
              setState(() {
                _dueDate = selectedDate;
              });
            }
          },
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
                    _dueDate != null
                        ? DateFormat('dd/MM/yyyy').format(_dueDate!)
                        : 'Select due date',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 16.sp,
                      color: _dueDate != null
                          ? AppColors.textPrimary
                          : AppColors.textTertiary,
                    ),
                  ),
                ),
                Icon(
                  Icons.calendar_today,
                  color: AppColors.primary,
                  size: 20.sp,
                ),
              ],
            ),
          ),
        ),
        if (_dueDate == null)
          Padding(
            padding: EdgeInsets.only(top: 8.h),
            child: Text(
              'Due date is required',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 12.sp,
                color: AppColors.error,
              ),
            ),
          ),
      ],
    );
  }

  Widget _buildStatusDropdown() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
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
              'Status',
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
        DropdownButtonFormField<String>(
          value: _status,
          decoration: InputDecoration(
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
            contentPadding:
                EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
          ),
          items: const [
            DropdownMenuItem(value: 'pending', child: Text('Pending')),
            DropdownMenuItem(value: 'in_progress', child: Text('In Progress')),
            DropdownMenuItem(value: 'completed', child: Text('Completed')),
            DropdownMenuItem(value: 'cancelled', child: Text('Cancelled')),
          ],
          onChanged: (value) {
            setState(() {
              _status = value!;
            });
          },
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 16.sp,
            color: AppColors.textPrimary,
          ),
        ),
      ],
    );
  }

  Widget _buildProgressSlider() {
    final progress = int.tryParse(_progressController.text) ?? 0;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
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
              'Progress (%)',
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
        SliderTheme(
          data: SliderTheme.of(context).copyWith(
            activeTrackColor: AppColors.primary,
            inactiveTrackColor: AppColors.textTertiary.withOpacity(0.3),
            thumbColor: AppColors.primary,
            overlayColor: AppColors.primary.withOpacity(0.2),
            thumbShape: RoundSliderThumbShape(enabledThumbRadius: 12.r),
            trackHeight: 4.h,
          ),
          child: Slider(
            value: progress.toDouble(),
            min: 0,
            max: 100,
            divisions: 100,
            label: progress.toString(),
            onChanged: (value) {
              setState(() {
                _progressController.text = value.toInt().toString();
              });
            },
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(5, (index) {
            final value = index * 25;
            final isSelected = progress == value;
            return Container(
              width: 32.w,
              height: 32.w,
              decoration: BoxDecoration(
                color: isSelected ? AppColors.primary : Colors.transparent,
                border: Border.all(
                  color:
                      isSelected ? AppColors.primary : AppColors.textTertiary,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(16.r),
              ),
              child: Center(
                child: Text(
                  value.toString(),
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                    color: isSelected ? Colors.white : AppColors.textSecondary,
                  ),
                ),
              ),
            );
          }),
        ),
      ],
    );
  }

  Widget _buildSubmitButton() {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          if (_formKey.currentState!.validate() && _dueDate != null) {
            final data = {
              'project': widget.projectId,
              'title': _titleController.text,
              'description': _descriptionController.text,
              'dueDate': _dueDate!.toIso8601String(),
              'status': _status,
              'progress': int.parse(_progressController.text),
              'deliverables': [],
              'createdBy': 'current_user_id', // Replace with actual user ID
            };
            ref
                .read(projectMilestoneProvider.notifier)
                .createMilestone(data)
                .then((_) {
              if (!mounted) return;
              ref
                  .read(projectMilestoneProvider.notifier)
                  .fetchProgressStats(widget.projectId);
              ref
                  .read(projectMilestoneProvider.notifier)
                  .fetchStatusStats(widget.projectId);
              context.pop();
            });
          } else {
            setState(() {}); // Trigger validation UI update
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
          'Create Milestone',
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
