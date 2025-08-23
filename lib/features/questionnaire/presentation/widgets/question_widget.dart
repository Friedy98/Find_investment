import 'package:find_invest_mobile/core/theme/app_colors.dart';
import 'package:find_invest_mobile/features/questionnaire/domain/entities/questionnaire_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class QuestionWidget extends StatefulWidget {
  final QuestionEntity question;
  final dynamic answer;
  final Function(dynamic) onAnswerChanged;

  const QuestionWidget({
    super.key,
    required this.question,
    this.answer,
    required this.onAnswerChanged,
  });

  @override
  State<QuestionWidget> createState() => _QuestionWidgetState();
}

class _QuestionWidgetState extends State<QuestionWidget> {
  late TextEditingController _textController;

  @override
  void initState() {
    super.initState();
    _textController = TextEditingController(
      text: widget.answer?.toString() ?? '',
    );
  }

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(24.w),
      decoration: BoxDecoration(
        color: AppColors.cardBackground,
        borderRadius: BorderRadius.circular(16.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Question text
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (widget.question.required)
                Text(
                  '*',
                  style: TextStyle(
                    color: AppColors.error,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              Expanded(
                child: Text(
                  widget.question.question,
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w600,
                    color: AppColors.textPrimary,
                    height: 1.4,
                  ),
                ),
              ),
            ],
          ),

          // Description
          if (widget.question.description != null) ...[
            SizedBox(height: 8.h),
            Text(
              widget.question.description!,
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 14.sp,
                color: AppColors.textSecondary,
                height: 1.4,
              ),
            ),
          ],

          SizedBox(height: 20.h),

          // Answer input based on question type
          _buildAnswerInput(),
        ],
      ),
    );
  }

  Widget _buildAnswerInput() {
    switch (widget.question.type) {
      case 'scale':
        return _buildScaleInput();
      case 'radio':
        return _buildRadioInput();
      case 'textarea':
        return _buildTextAreaInput();
      case 'text':
        return _buildTextInput();
      case 'checkbox':
        return _buildCheckboxInput();
      default:
        return _buildTextInput();
    }
  }

  Widget _buildScaleInput() {
    final min = widget.question.validation?.min ?? 1;
    final max = widget.question.validation?.max ?? 5;
    final currentValue = widget.answer?.toDouble() ?? min.toDouble();

    return Column(
      children: [
        // Scale labels
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Pas du tout',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 12.sp,
                color: AppColors.textSecondary,
              ),
            ),
            Text(
              'Tout à fait',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 12.sp,
                color: AppColors.textSecondary,
              ),
            ),
          ],
        ),

        SizedBox(height: 8.h),

        // Slider
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
            value: currentValue,
            min: min.toDouble(),
            max: max.toDouble(),
            divisions: max - min,
            label: currentValue.toInt().toString(),
            onChanged: (value) {
              widget.onAnswerChanged(value.toInt());
            },
          ),
        ),

        // Scale numbers
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(max - min + 1, (index) {
            final value = min + index;
            final isSelected = currentValue.toInt() == value;

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

  Widget _buildRadioInput() {
    return Column(
      children: widget.question.options?.map((option) {
            final isSelected = widget.answer == option.value;

            return Container(
              margin: EdgeInsets.only(bottom: 12.h),
              child: InkWell(
                onTap: () => widget.onAnswerChanged(option.value),
                borderRadius: BorderRadius.circular(12.r),
                child: Container(
                  padding: EdgeInsets.all(16.w),
                  decoration: BoxDecoration(
                    color: isSelected
                        ? AppColors.primary.withOpacity(0.1)
                        : AppColors.background,
                    border: Border.all(
                      color: isSelected
                          ? AppColors.primary
                          : AppColors.textTertiary.withOpacity(0.3),
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 20.w,
                        height: 20.w,
                        decoration: BoxDecoration(
                          color: isSelected
                              ? AppColors.primary
                              : Colors.transparent,
                          border: Border.all(
                            color: isSelected
                                ? AppColors.primary
                                : AppColors.textTertiary,
                            width: 2,
                          ),
                          shape: BoxShape.circle,
                        ),
                        child: isSelected
                            ? Icon(
                                Icons.check,
                                size: 12.sp,
                                color: Colors.white,
                              )
                            : null,
                      ),
                      SizedBox(width: 12.w),
                      Expanded(
                        child: Text(
                          option.label,
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 16.sp,
                            color: isSelected
                                ? AppColors.primary
                                : AppColors.textPrimary,
                            fontWeight: isSelected
                                ? FontWeight.w600
                                : FontWeight.normal,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          }).toList() ??
          [],
    );
  }

  Widget _buildTextAreaInput() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextField(
          controller: _textController,
          maxLines: 6,
          decoration: InputDecoration(
            hintText: 'Tapez votre réponse ici...',
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
          onChanged: (value) {
            widget.onAnswerChanged(value);
          },
        ),

        SizedBox(height: 8.h),

        // Character count
        if (widget.question.validation?.minLength != null ||
            widget.question.validation?.maxLength != null)
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              if (widget.question.validation?.minLength != null)
                Text(
                  'Minimum ${widget.question.validation!.minLength} caractères',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 12.sp,
                    color: AppColors.textSecondary,
                  ),
                ),
              Text(
                '${_textController.text.length}${widget.question.validation?.maxLength != null ? '/${widget.question.validation!.maxLength}' : ''} caractères',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 12.sp,
                  color: AppColors.textSecondary,
                ),
              ),
            ],
          ),
      ],
    );
  }

  Widget _buildTextInput() {
    return TextField(
      controller: _textController,
      decoration: InputDecoration(
        hintText: 'Tapez votre réponse...',
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
      onChanged: (value) {
        widget.onAnswerChanged(value);
      },
    );
  }

  Widget _buildCheckboxInput() {
    final selectedValues = widget.answer as List<String>? ?? [];

    return Column(
      children: widget.question.options?.map((option) {
            final isSelected = selectedValues.contains(option.value);

            return Container(
              margin: EdgeInsets.only(bottom: 12.h),
              child: InkWell(
                onTap: () {
                  final newValues = List<String>.from(selectedValues);
                  if (isSelected) {
                    newValues.remove(option.value);
                  } else {
                    newValues.add(option.value);
                  }
                  widget.onAnswerChanged(newValues);
                },
                borderRadius: BorderRadius.circular(12.r),
                child: Container(
                  padding: EdgeInsets.all(16.w),
                  decoration: BoxDecoration(
                    color: isSelected
                        ? AppColors.primary.withOpacity(0.1)
                        : AppColors.background,
                    border: Border.all(
                      color: isSelected
                          ? AppColors.primary
                          : AppColors.textTertiary.withOpacity(0.3),
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 20.w,
                        height: 20.w,
                        decoration: BoxDecoration(
                          color: isSelected
                              ? AppColors.primary
                              : Colors.transparent,
                          border: Border.all(
                            color: isSelected
                                ? AppColors.primary
                                : AppColors.textTertiary,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(4.r),
                        ),
                        child: isSelected
                            ? Icon(
                                Icons.check,
                                size: 12.sp,
                                color: Colors.white,
                              )
                            : null,
                      ),
                      SizedBox(width: 12.w),
                      Expanded(
                        child: Text(
                          option.label,
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 16.sp,
                            color: isSelected
                                ? AppColors.primary
                                : AppColors.textPrimary,
                            fontWeight: isSelected
                                ? FontWeight.w600
                                : FontWeight.normal,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          }).toList() ??
          [],
    );
  }
}
