import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:find_invest_mobile/core/theme/app_colors.dart';
import 'package:find_invest_mobile/features/project/domain/entities/project_entity.dart';
import 'package:find_invest_mobile/features/project/presentation/widgets/modern_card.dart';

class DetailsTab extends StatelessWidget {
  final ProjectEntity project;

  const DetailsTab({super.key, required this.project});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(20.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ModernCard(
            title: 'Financial Details',
            icon: Icons.account_balance_wallet,
            child: Column(
              children: [
                _buildDetailRow(
                  Icons.monetization_on,
                  'Funding Goal',
                  '${_formatCurrency(project.fundingGoal)} ${project.currency ?? 'USD'}',
                ),
                _buildDetailRow(
                  Icons.account_balance,
                  'Current Funding',
                  '${_formatCurrency(project.currentFunding ?? 0)} ${project.currency ?? 'USD'}',
                ),
                _buildDetailRow(
                  Icons.payment,
                  'Minimum Investment',
                  '${_formatCurrency(project.minimumInvestment ?? 0)} ${project.currency ?? 'USD'}',
                ),
                if (project.maximumInvestment != null)
                  _buildDetailRow(
                    Icons.payments,
                    'Maximum Investment',
                    '${_formatCurrency(project.maximumInvestment!)} ${project.currency ?? 'USD'}',
                  ),
                _buildDetailRow(
                  Icons.category,
                  'Funding Type',
                  project.fundingType?.toUpperCase() ?? 'N/A',
                ),
                _buildDetailRow(
                  Icons.security,
                  'Risk Level',
                  project.riskLevel?.toUpperCase() ?? 'N/A',
                ),
              ],
            ),
          ).animate().fadeIn().slideY(begin: 0.3),
          SizedBox(height: 24.h),
          if (project.expectedReturn != null)
            ModernCard(
              title: 'Expected Return',
              icon: Icons.trending_up,
              child: Column(
                children: [
                  if (project.expectedReturn!.percentage != null)
                    _buildDetailRow(
                      Icons.percent,
                      'Percentage',
                      '${project.expectedReturn!.percentage}%',
                    ),
                  if (project.expectedReturn!.period != null)
                    _buildDetailRow(
                      Icons.schedule,
                      'Period',
                      project.expectedReturn!.period!,
                    ),
                ],
              ),
            ).animate(delay: 100.ms).fadeIn().slideY(begin: 0.3),
          SizedBox(height: 24.h),
          if (project.risks?.isNotEmpty ?? false)
            ModernCard(
              title: 'Identified Risks',
              icon: Icons.warning_amber,
              child: Column(
                children: project.risks!.asMap().entries.map((entry) {
                  final index = entry.key;
                  final risk = entry.value;
                  return Container(
                    margin: EdgeInsets.only(bottom: 12.h),
                    padding: EdgeInsets.all(12.w),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          _getRiskColor(risk.probability ?? 'low')
                              .withOpacity(0.1),
                          _getRiskColor(risk.probability ?? 'low')
                              .withOpacity(0.05),
                        ],
                      ),
                      borderRadius: BorderRadius.circular(12.r),
                      border: Border.all(
                        color: _getRiskColor(risk.probability ?? 'low')
                            .withOpacity(0.3),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.05),
                          blurRadius: 6,
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 32.w,
                          height: 32.h,
                          decoration: BoxDecoration(
                            color: _getRiskColor(risk.probability ?? 'low'),
                            shape: BoxShape.circle,
                          ),
                          child: Center(
                            child: Text(
                              '${index + 1}',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                color: Colors.white,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 12.w),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                risk.type ?? 'Unknown Risk',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.textPrimary,
                                ),
                              ),
                              SizedBox(height: 4.h),
                              Text(
                                risk.description ?? 'No description available',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 13.sp,
                                  color: AppColors.textSecondary,
                                  height: 1.4,
                                ),
                              ),
                              SizedBox(height: 4.h),
                              Text(
                                'Probability: ${risk.probability ?? 'N/A'} | Impact: ${risk.impact ?? 'N/A'}',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 12.sp,
                                  color: AppColors.textTertiary,
                                ),
                              ),
                              if (risk.mitigation?.isNotEmpty ?? false) ...[
                                SizedBox(height: 4.h),
                                Text(
                                  'Mitigation: ${risk.mitigation}',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 12.sp,
                                    color: AppColors.textSecondary,
                                  ),
                                ),
                              ],
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                      .animate(
                          delay: Duration(milliseconds: 200 + (index * 50)))
                      .scale();
                }).toList(),
              ),
            ).animate(delay: 200.ms).fadeIn().slideY(begin: 0.3),
        ],
      ),
    );
  }

  Widget _buildDetailRow(IconData icon, String label, String value) {
    return Padding(
      padding: EdgeInsets.only(bottom: 12.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 36.w,
            height: 36.h,
            decoration: BoxDecoration(
              color: AppColors.primary.withOpacity(0.1),
              borderRadius: BorderRadius.circular(8.r),
            ),
            child: Icon(
              icon,
              size: 20.sp,
              color: AppColors.primary,
            ),
          ),
          SizedBox(width: 12.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  label,
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    color: AppColors.textSecondary,
                  ),
                ),
                SizedBox(height: 4.h),
                Text(
                  value,
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 14.sp,
                    color: AppColors.textPrimary,
                    height: 1.4,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ).animate().fadeIn().slideX(begin: 0.2);
  }

  Color _getRiskColor(String probability) {
    switch (probability.toLowerCase()) {
      case 'low':
        return AppColors.success;
      case 'medium':
        return AppColors.warning;
      case 'high':
        return AppColors.error;
      default:
        return AppColors.textTertiary;
    }
  }

  String _formatCurrency(num amount) {
    if (amount >= 1000000) {
      return '${(amount / 1000000).toStringAsFixed(1)}M';
    } else if (amount >= 1000) {
      return '${(amount / 1000).toStringAsFixed(1)}K';
    }
    return amount.toStringAsFixed(0);
  }
}
