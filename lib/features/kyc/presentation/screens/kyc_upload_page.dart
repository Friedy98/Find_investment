import 'dart:io';
import 'package:dio/dio.dart';
import 'package:find_invest_mobile/core/theme/app_colors.dart';
import 'package:find_invest_mobile/features/auth/presentation/providers/auth_provider.dart';
import 'package:find_invest_mobile/features/kyc/domain/entities/kyc_entity.dart';
import 'package:find_invest_mobile/features/kyc/presentation/providers/kyc_provider.dart';
import 'package:find_invest_mobile/shared/widgets/custom_button.dart';
import 'package:find_invest_mobile/shared/widgets/loading_overlay.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:file_picker/file_picker.dart';

class KycUploadPage extends ConsumerStatefulWidget {
  const KycUploadPage({super.key});

  @override
  ConsumerState<KycUploadPage> createState() => _KycUploadPageState();
}

class _KycUploadPageState extends ConsumerState<KycUploadPage> {
  final ImagePicker _picker = ImagePicker();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final user = ref.read(authProvider).user;
      if (user != null) {
        ref.read(kycProvider.notifier).fetchRequiredDocuments(user.id);
        ref.read(kycProvider.notifier).fetchKYC(user.id);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final authState = ref.watch(authProvider);
    final kycState = ref.watch(kycProvider);
    final user = authState.user;

    if (user == null) {
      return Scaffold(
        backgroundColor: AppColors.background,
        appBar: AppBar(
          backgroundColor: AppColors.cardBackground,
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.arrow_back,
                color: AppColors.textPrimary, size: 24.sp),
            onPressed: () => context.pop(),
          ),
          title: Text(
            'Télécharger des documents KYC',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 18.sp,
              fontWeight: FontWeight.w600,
              color: AppColors.textPrimary,
            ),
          ),
        ),
        body: Center(
          child: Padding(
            padding: EdgeInsets.all(20.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.lock_outline,
                  size: 80.sp,
                  color: AppColors.textTertiary,
                ).animate().fadeIn(),
                SizedBox(height: 16.h),
                Text(
                  'Connexion requise',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold,
                    color: AppColors.textPrimary,
                  ),
                ).animate(delay: 100.ms).fadeIn(),
                SizedBox(height: 8.h),
                Text(
                  'Veuillez vous connecter pour télécharger des documents KYC.',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 14.sp,
                    color: AppColors.textSecondary,
                    height: 1.5,
                  ),
                  textAlign: TextAlign.center,
                ).animate(delay: 200.ms).fadeIn(),
                SizedBox(height: 24.h),
                CustomButton(
                  text: 'Se connecter',
                  onPressed: () => context.push('/login'),
                  backgroundColor: AppColors.primary,
                  textColor: Colors.white,
                  height: 56.h,
                ).animate(delay: 300.ms).fadeIn().scale(),
              ],
            ),
          ),
        ),
      );
    }

    final requiredDocs = kycState.requiredDocuments ?? [];
    final currentDocs = kycState.selectedKyc?.documents ?? [];

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
          'Télécharger des documents KYC',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 18.sp,
            fontWeight: FontWeight.w600,
            color: AppColors.textPrimary,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.info_outline,
                color: AppColors.textPrimary, size: 24.sp),
            onPressed: () => _showHelpDialog(),
          ),
        ],
      ),
      body: LoadingOverlay(
        isLoading: kycState.isLoading,
        message: 'Téléchargement en cours...',
        child: RefreshIndicator(
          onRefresh: () async {
            await ref
                .read(kycProvider.notifier)
                .fetchRequiredDocuments(user.id);
            await ref.read(kycProvider.notifier).fetchKYC(user.id);
          },
          child: SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            padding: EdgeInsets.all(20.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                _buildRequiredDocuments(requiredDocs, currentDocs),
                SizedBox(height: 24.h),
                _buildUploadSection(),
                SizedBox(height: 24.h),
                _buildCurrentDocuments(currentDocs),
                SizedBox(height: 32.h),
                CustomButton(
                  text: 'Soumettre KYC',
                  onPressed: () => _submitKyc(),
                  backgroundColor: AppColors.primary,
                  textColor: Colors.white,
                  height: 56.h,
                ).animate(delay: 500.ms).fadeIn().scale(),
                SizedBox(height: 20.h),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildRequiredDocuments(
      List<String> requiredDocs, List<DocumentEntity> currentDocs) {
    return Container(
      padding: EdgeInsets.all(20.w),
      decoration: BoxDecoration(
        color: AppColors.cardBackground,
        borderRadius: BorderRadius.circular(12.r),
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
          Text(
            'Documents requis',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 18.sp,
              fontWeight: FontWeight.w600,
              color: AppColors.textPrimary,
            ),
          ).animate().fadeIn(),
          SizedBox(height: 16.h),
          if (requiredDocs.isEmpty)
            Text(
              'Aucun document requis pour votre rôle.',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 14.sp,
                color: AppColors.textSecondary,
              ),
            )
          else
            ...requiredDocs.asMap().entries.map((entry) {
              final index = entry.key;
              final docType = entry.value;
              final isUploaded = currentDocs.any((doc) => doc.type == docType);
              return Container(
                margin: EdgeInsets.only(bottom: 12.h),
                padding: EdgeInsets.all(16.w),
                decoration: BoxDecoration(
                  color: AppColors.background,
                  borderRadius: BorderRadius.circular(12.r),
                  border: Border(
                    left: BorderSide(
                      width: 4.w,
                      color: isUploaded ? AppColors.success : AppColors.warning,
                    ),
                  ),
                ),
                child: Row(
                  children: [
                    Container(
                      width: 40.w,
                      height: 40.h,
                      decoration: BoxDecoration(
                        color:
                            (isUploaded ? AppColors.success : AppColors.warning)
                                .withOpacity(0.1),
                        borderRadius: BorderRadius.circular(8.r),
                      ),
                      child: Icon(
                        isUploaded ? Icons.check_circle : Icons.warning,
                        size: 20.sp,
                        color:
                            isUploaded ? AppColors.success : AppColors.warning,
                      ),
                    ),
                    SizedBox(width: 12.w),
                    Expanded(
                      child: Text(
                        _getDocumentTypeName(docType),
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                          color: AppColors.textPrimary,
                        ),
                      ),
                    ),
                    if (!isUploaded)
                      IconButton(
                        icon: Icon(Icons.upload,
                            color: AppColors.primary, size: 20.sp),
                        onPressed: () => _uploadSpecificDocument(docType),
                      ),
                  ],
                ),
              )
                  .animate(delay: Duration(milliseconds: 200 + index * 100))
                  .fadeIn()
                  .slideX(begin: 0.3);
            }),
        ],
      ),
    );
  }

  Widget _buildUploadSection() {
    return Container(
      padding: EdgeInsets.all(20.w),
      decoration: BoxDecoration(
        color: AppColors.cardBackground,
        borderRadius: BorderRadius.circular(12.r),
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
          Text(
            'Télécharger un document',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 18.sp,
              fontWeight: FontWeight.w600,
              color: AppColors.textPrimary,
            ),
          ).animate().fadeIn(),
          SizedBox(height: 16.h),
          _buildUploadOption(
            'Prendre une photo',
            Icons.camera_alt,
            () => _pickImage(ImageSource.camera),
          ),
          _buildUploadOption(
            'Choisir depuis la galerie',
            Icons.photo_library,
            () => _pickImage(ImageSource.gallery),
          ),
          _buildUploadOption(
            'Choisir un fichier',
            Icons.insert_drive_file,
            _pickFile,
          ),
        ],
      ),
    );
  }

  // Widget _buildUploadCard() {
  //   return Container(
  //     padding: EdgeInsets.all(20.w),
  //     decoration: BoxDecoration(
  //       color: AppColors.cardBackground,
  //       borderRadius: BorderRadius.circular(12.r),
  //       boxShadow: [
  //         BoxShadow(
  //           color: Colors.black.withOpacity(0.05),
  //           blurRadius: 10,
  //           offset: const Offset(0, 2),
  //         ),
  //       ],
  //     ),
  //     child: Column(
  //       crossAxisAlignment: CrossAxisAlignment.start,
  //       children: [
  //         Text(
  //           'Télécharger un document',
  //           style: TextStyle(
  //             fontFamily: 'Poppins',
  //             fontSize: 18.sp,
  //             fontWeight: FontWeight.w600,
  //             color: AppColors.textPrimary,
  //           ),
  //         ).animate().fadeIn(),
  //         SizedBox(height: 16.h),
  //         _buildUploadOption(
  //           'Prendre une photo',
  //           Icons.camera_alt,
  //           () => _pickImage(ImageSource.camera),
  //         ),
  //         _buildUploadOption(
  //           'Choisir depuis la galerie',
  //           Icons.photo_library,
  //           () => _pickImage(ImageSource.gallery),
  //         ),
  //         _buildUploadOption(
  //           'Choisir un fichier',
  //           Icons.insert_drive_file,
  //           _pickFile,
  //         ),
  //       ],
  //     ),
  //   );
  // }

  Widget _buildUploadOption(String title, IconData icon, VoidCallback onTap) {
    return Container(
      margin: EdgeInsets.only(bottom: 12.h),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12.r),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.gray200),
            borderRadius: BorderRadius.circular(12.r),
          ),
          child: Row(
            children: [
              Container(
                width: 40.w,
                height: 40.h,
                decoration: BoxDecoration(
                  color: AppColors.primary.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(8.r),
                ),
                child: Icon(
                  icon,
                  color: AppColors.primary,
                  size: 20.sp,
                ),
              ),
              SizedBox(width: 16.w),
              Text(
                title,
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                  color: AppColors.textPrimary,
                ),
              ),
            ],
          ),
        ),
      ),
    ).animate(delay: 200.ms).fadeIn().slideX(begin: 0.3);
  }

  // Widget _buildCurrentDocuments(String userId) {
  //   final kycState = ref.watch(kycProvider);
  //   final documents = kycState.selectedKyc?.documents ?? [];

  //   if (documents.isEmpty) {
  //     return Container(
  //       padding: EdgeInsets.all(24.w),
  //       decoration: BoxDecoration(
  //         color: AppColors.warning.withOpacity(0.1),
  //         borderRadius: BorderRadius.circular(12.r),
  //         border: Border.all(
  //           color: AppColors.warning.withOpacity(0.3),
  //           width: 1,
  //         ),
  //       ),
  //       child: Column(
  //         children: [
  //           Icon(
  //             Icons.upload_file,
  //             size: 48.sp,
  //             color: AppColors.warning,
  //           ),
  //           SizedBox(height: 12.h),
  //           Text(
  //             'Aucun document téléchargé',
  //             style: TextStyle(
  //               fontFamily: 'Poppins',
  //               fontSize: 16.sp,
  //               fontWeight: FontWeight.w600,
  //               color: AppColors.textPrimary,
  //             ),
  //           ),
  //           SizedBox(height: 8.h),
  //           Text(
  //             'Téléchargez vos documents d\'identité pour continuer.',
  //             style: TextStyle(
  //               fontFamily: 'Poppins',
  //               fontSize: 14.sp,
  //               color: AppColors.textSecondary,
  //               height: 1.5,
  //             ),
  //             textAlign: TextAlign.center,
  //           ),
  //         ],
  //       ),
  //     ).animate(delay: 300.ms).fadeIn().slideY(begin: 0.3);
  //   }

  //   return Container(
  //     padding: EdgeInsets.all(20.w),
  //     decoration: BoxDecoration(
  //       color: AppColors.cardBackground,
  //       borderRadius: BorderRadius.circular(12.r),
  //       boxShadow: [
  //         BoxShadow(
  //           color: Colors.black.withOpacity(0.05),
  //           blurRadius: 10,
  //           offset: const Offset(0, 2),
  //         ),
  //       ],
  //     ),
  //     child: Column(
  //       crossAxisAlignment: CrossAxisAlignment.start,
  //       children: [
  //         Text(
  //           'Documents actuels',
  //           style: TextStyle(
  //             fontFamily: 'Poppins',
  //             fontSize: 18.sp,
  //             fontWeight: FontWeight.w600,
  //             color: AppColors.textPrimary,
  //           ),
  //         ).animate(delay: 300.ms).fadeIn(),
  //         SizedBox(height: 16.h),
  //         ...documents.asMap().entries.map((entry) {
  //           final index = entry.key;
  //           final document = entry.value;
  //           return _buildDocumentItem(document, index);
  //         }),
  //       ],
  //     ),
  //   );
  // }

  Widget _buildCurrentDocuments(List<DocumentEntity> currentDocs) {
    if (currentDocs.isEmpty) {
      return Container(
        padding: EdgeInsets.all(24.w),
        decoration: BoxDecoration(
          color: AppColors.warning.withOpacity(0.1),
          borderRadius: BorderRadius.circular(12.r),
          border: Border.all(
            color: AppColors.warning.withOpacity(0.3),
            width: 1,
          ),
        ),
        child: Column(
          children: [
            Icon(
              Icons.upload_file,
              size: 48.sp,
              color: AppColors.warning,
            ),
            SizedBox(height: 12.h),
            Text(
              'Aucun document téléchargé',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 16.sp,
                fontWeight: FontWeight.w600,
                color: AppColors.textPrimary,
              ),
            ),
            SizedBox(height: 8.h),
            Text(
              'Téléchargez vos documents d\'identité pour continuer.',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 14.sp,
                color: AppColors.textSecondary,
                height: 1.5,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ).animate(delay: 300.ms).fadeIn().slideY(begin: 0.3);
    }

    return Container(
      padding: EdgeInsets.all(20.w),
      decoration: BoxDecoration(
        color: AppColors.cardBackground,
        borderRadius: BorderRadius.circular(16.r),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            AppColors.cardBackground,
            AppColors.cardBackground.withOpacity(0.8),
          ],
        ),
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Documents actuels',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w600,
                  color: AppColors.textPrimary,
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
                decoration: BoxDecoration(
                  color: AppColors.primary.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(20.r),
                ),
                child: Text(
                  '${currentDocs.length} documents',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w500,
                    color: AppColors.primary,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 16.h),
          ...currentDocs.asMap().entries.map((entry) {
            final index = entry.key;
            final document = entry.value;
            return _buildDocumentItem(document, index);
          }),
        ],
      ),
    );
  }

  Widget _buildDocumentItem(DocumentEntity document, int index) {
    Color statusColor =
        document.verified ? AppColors.success : AppColors.warning;
    IconData statusIcon = document.verified ? Icons.verified : Icons.pending;
    String statusText = document.verified ? 'Vérifié' : 'En attente';

    return Container(
      margin: EdgeInsets.only(bottom: 12.h),
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
      decoration: BoxDecoration(
        color: AppColors.background,
        borderRadius: BorderRadius.circular(14.r),
        border: Border.all(
          color: AppColors.border.withOpacity(0.2),
          width: 1,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.03),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          // ICONE TYPE DOCUMENT
          Container(
            width: 50.w,
            height: 50.h,
            decoration: BoxDecoration(
              color: _getDocumentTypeColor(document.type).withOpacity(0.15),
              borderRadius: BorderRadius.circular(12.r),
            ),
            child: Icon(
              _getDocumentTypeIcon(document.type),
              size: 26.sp,
              color: _getDocumentTypeColor(document.type),
            ),
          ),
          SizedBox(width: 16.w),

          // INFOS DOCUMENT
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  _getDocumentTypeName(document.type),
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold,
                    color: AppColors.textPrimary,
                  ),
                ),
                SizedBox(height: 4.h),
                Text(
                  document.category.toUpperCase(),
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w500,
                    color: AppColors.textSecondary,
                  ),
                ),
              ],
            ),
          ),

          // STATUT ET DELETE
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 4.h),
                decoration: BoxDecoration(
                  color: statusColor.withOpacity(0.15),
                  borderRadius: BorderRadius.circular(16.r),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(statusIcon, size: 12.sp, color: statusColor),
                    SizedBox(width: 4.w),
                    Text(
                      statusText,
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w600,
                        color: statusColor,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 8.h),
              IconButton(
                icon: Icon(Icons.delete, color: AppColors.error, size: 22.sp),
                onPressed: () => _deleteDocument(document.id ?? ''),
                padding: EdgeInsets.zero,
                constraints: const BoxConstraints(),
              ),
            ],
          ),
        ],
      ),
    )
        .animate(delay: Duration(milliseconds: 300 + index * 100))
        .fadeIn()
        .slideX(begin: 0.25);
  }

  Future<void> _pickImage(ImageSource source) async {
    try {
      final XFile? image = await _picker.pickImage(source: source);
      if (image != null && mounted) {
        _showUploadDialog(File(image.path), image.name);
      }
    } catch (e) {
      if (mounted) {
        _showErrorSnackBar('Erreur lors de la sélection de l\'image : $e');
      }
    }
  }

  Future<void> _pickFile() async {
    try {
      final result = await FilePicker.platform.pickFiles();
      if (result != null && result.files.isNotEmpty && mounted) {
        final file = File(result.files.single.path!);
        final fileName = result.files.single.name;
        _showUploadDialog(file, fileName);
      }
    } catch (e) {
      if (mounted) {
        _showErrorSnackBar('Erreur lors de la sélection du fichier : $e');
      }
    }
  }

  Future<void> _uploadSpecificDocument(String docType) async {
    try {
      // Show a dialog to choose the source (camera, gallery, or file)
      final source = await showDialog<ImageSource>(
        context: context,
        builder: (context) => AlertDialog(
          backgroundColor: AppColors.cardBackground,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.r),
          ),
          title: Text(
            'Choisir une source',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 18.sp,
              fontWeight: FontWeight.w600,
              color: AppColors.textPrimary,
            ),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                contentPadding: const EdgeInsets.symmetric(horizontal: 0),
                leading: const Icon(Icons.camera_alt, color: AppColors.primary),
                title: Text(
                  'Prendre une photo',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 14.sp,
                    color: AppColors.textPrimary,
                  ),
                ),
                onTap: () => Navigator.pop(context, ImageSource.camera),
              ),
              ListTile(
                contentPadding: const EdgeInsets.symmetric(horizontal: 0),
                leading:
                    const Icon(Icons.photo_library, color: AppColors.primary),
                title: Text(
                  'Choisir depuis la galerie',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 14.sp,
                    color: AppColors.textPrimary,
                  ),
                ),
                onTap: () => Navigator.pop(context, ImageSource.gallery),
              ),
              ListTile(
                contentPadding: const EdgeInsets.symmetric(horizontal: 0),
                leading: const Icon(Icons.insert_drive_file,
                    color: AppColors.primary),
                title: Text(
                  'Choisir un fichier',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 14.sp,
                    color: AppColors.textPrimary,
                  ),
                ),
                onTap: () => Navigator.pop(context, null),
              ),
            ],
          ),
        ),
      );

      File? file;
      String fileName = '';

      if (source == ImageSource.camera || source == ImageSource.gallery) {
        final XFile? image = await _picker.pickImage(source: source!);
        if (image != null) {
          file = File(image.path);
          fileName = image.name;
        }
      } else if (source == null) {
        final result = await FilePicker.platform.pickFiles();
        if (result != null && result.files.isNotEmpty) {
          file = File(result.files.single.path!);
          fileName = result.files.single.name;
        }
      }

      if (file != null && mounted) {
        _showUploadDialog(file, fileName, docType);
      } else if (mounted) {
        _showErrorSnackBar('Aucun fichier sélectionné.');
      }
    } catch (e) {
      if (mounted) {
        _showErrorSnackBar('Erreur lors de la sélection du fichier : $e');
      }
    }
  }

  void _showUploadDialog(File? file, String fileName,
      [String? preselectedType]) {
    final nameController = TextEditingController(text: fileName);
    final descriptionController = TextEditingController();
    String selectedType = preselectedType ?? 'identity_card';
    String selectedCategory = _getCategoryFromType(selectedType);

    showDialog(
      context: context,
      builder: (context) => StatefulBuilder(
        builder: (context, setState) => AlertDialog(
          backgroundColor: AppColors.cardBackground,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.r),
          ),
          title: Text(
            'Télécharger un document',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 18.sp,
              fontWeight: FontWeight.w600,
              color: AppColors.textPrimary,
            ),
          ),
          content: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(
                  controller: nameController,
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 14.sp,
                    color: AppColors.textPrimary,
                  ),
                  decoration: InputDecoration(
                    labelText: 'Nom du document',
                    labelStyle: const TextStyle(
                      fontFamily: 'Poppins',
                      color: AppColors.textSecondary,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.r),
                      borderSide: const BorderSide(color: AppColors.primary),
                    ),
                  ),
                ),
                SizedBox(height: 16.h),
                TextField(
                  controller: descriptionController,
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 14.sp,
                    color: AppColors.textPrimary,
                  ),
                  decoration: InputDecoration(
                    labelText: 'Description (optionnelle)',
                    labelStyle: const TextStyle(
                      fontFamily: 'Poppins',
                      color: AppColors.textSecondary,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.r),
                      borderSide: const BorderSide(color: AppColors.primary),
                    ),
                  ),
                  maxLines: 2,
                ),
                SizedBox(height: 16.h),
                DropdownButtonFormField<String>(
                  value: selectedType,
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 14.sp,
                    color: AppColors.textPrimary,
                  ),
                  decoration: InputDecoration(
                    labelText: 'Type de document',
                    labelStyle: const TextStyle(
                      fontFamily: 'Poppins',
                      color: AppColors.textSecondary,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.r),
                      borderSide: const BorderSide(color: AppColors.primary),
                    ),
                  ),
                  items: const [
                    DropdownMenuItem(
                        value: 'identity_card',
                        child: Text('Carte d\'identité')),
                    DropdownMenuItem(
                        value: 'passport', child: Text('Passeport')),
                    DropdownMenuItem(
                        value: 'driving_license',
                        child: Text('Permis de conduire')),
                    DropdownMenuItem(
                        value: 'utility_bill',
                        child: Text('Facture de services')),
                    DropdownMenuItem(
                        value: 'bank_statement',
                        child: Text('Relevé bancaire')),
                    DropdownMenuItem(value: 'resume', child: Text('CV')),
                    DropdownMenuItem(value: 'other', child: Text('Autre')),
                  ],
                  onChanged: (value) {
                    setState(() {
                      selectedType = value!;
                      selectedCategory = _getCategoryFromType(value);
                    });
                  },
                ),
                SizedBox(height: 16.h),
                if (file != null)
                  Container(
                    padding: EdgeInsets.all(12.w),
                    decoration: BoxDecoration(
                      color: AppColors.gray50,
                      borderRadius: BorderRadius.circular(12.r),
                      border: Border.all(color: AppColors.gray200),
                    ),
                    child: Row(
                      children: [
                        Icon(_getFileIcon(fileName.split('.').last)),
                        SizedBox(width: 12.w),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                fileName,
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.textPrimary,
                                ),
                              ),
                              Text(
                                _formatFileSize(file.lengthSync()),
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 12.sp,
                                  color: AppColors.textSecondary,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text(
                'Annuler',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  color: AppColors.textSecondary,
                ),
              ),
            ),
            CustomButton(
              text: 'Télécharger',
              onPressed: file == null
                  ? null // Disable button if no file
                  : () async {
                      Navigator.pop(context);
                      final data = {
                        'name': nameController.text,
                        'description': descriptionController.text,
                        'type': selectedType,
                        'category': selectedCategory,
                      };
                      final formData = await MultipartFile.fromFile(
                          file?.path ?? '',
                          filename: fileName);
                      await ref
                          .read(kycProvider.notifier)
                          .uploadDocument(data, formData);
                      final state = ref.read(kycProvider);
                      if (mounted) {
                        if (state.errorMessage != null) {
                          _showErrorSnackBar(state.errorMessage!);
                        } else {
                          _showSuccessSnackBar(
                              'Document téléchargé avec succès !');
                          if (context.mounted) {
                            context.pop();
                          }
                        }
                      }
                    },
              backgroundColor: AppColors.primary,
              textColor: Colors.white,
              height: 48.h,
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _submitKyc() async {
    final kycState = ref.read(kycProvider);
    final requiredDocs = kycState.requiredDocuments ?? [];
    final currentDocs = kycState.selectedKyc?.documents ?? [];
    final uploadedTypes = currentDocs.map((doc) => doc.type).toSet();
    final missingDocs =
        requiredDocs.where((type) => !uploadedTypes.contains(type)).toList();

    if (missingDocs.isNotEmpty) {
      if (mounted) {
        await showDialog(
          context: context,
          builder: (context) => AlertDialog(
            backgroundColor: AppColors.cardBackground,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16.r),
            ),
            title: Text(
              'Documents manquants',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 18.sp,
                fontWeight: FontWeight.w600,
                color: AppColors.textPrimary,
              ),
            ),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Vous devez uploader les documents suivants avant de soumettre :',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 14.sp,
                    color: AppColors.textSecondary,
                  ),
                ),
                SizedBox(height: 12.h),
                ...missingDocs.map((type) => Padding(
                      padding: EdgeInsets.only(bottom: 8.h),
                      child: Row(
                        children: [
                          Icon(
                            Icons.warning,
                            color: AppColors.warning,
                            size: 16.sp,
                          ),
                          SizedBox(width: 8.w),
                          Text(
                            _getDocumentTypeName(type),
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 14.sp,
                              color: AppColors.textPrimary,
                            ),
                          ),
                        ],
                      ),
                    )),
              ],
            ),
            actions: [
              CustomButton(
                text: 'OK',
                onPressed: () => Navigator.pop(context),
                backgroundColor: AppColors.primary,
                textColor: Colors.white,
                height: 48.h,
              ),
            ],
          ),
        );
      }
      return;
    }

    // Soumettre si tous les documents sont présents
    await ref.read(kycProvider.notifier).submitKYC();
    if (mounted) {
      final state = ref.read(kycProvider);
      if (state.errorMessage != null) {
        _showErrorSnackBar(state.errorMessage!);
      } else {
        _showSuccessSnackBar('KYC soumis avec succès !');
        context.pop();
      }
    }
  }

  Future<void> _deleteDocument(String docId) async {
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: AppColors.cardBackground,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.r),
        ),
        title: Text(
          'Supprimer le document',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 18.sp,
            fontWeight: FontWeight.w600,
            color: AppColors.textPrimary,
          ),
        ),
        content: Text(
          'Cette action est définitive et ne peut pas être annulée. Êtes-vous sûr de vouloir supprimer ce document ?',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 14.sp,
            color: AppColors.textSecondary,
            height: 1.5,
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: const Text(
              'Annuler',
              style: TextStyle(
                fontFamily: 'Poppins',
                color: AppColors.textSecondary,
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () => Navigator.pop(context, true),
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.error,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.r),
              ),
            ),
            child: const Text(
              'Supprimer',
              style: TextStyle(
                fontFamily: 'Poppins',
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );

    if (confirmed == true) {
      final user = ref.read(authProvider).user!;
      await ref.read(kycProvider.notifier).deleteDocument(user.id, docId);
      ref.read(kycProvider.notifier).fetchKYC(user.id);
      if (mounted) {
        final state = ref.read(kycProvider);
        if (state.errorMessage != null) {
          _showErrorSnackBar(state.errorMessage!);
        } else {
          _showSuccessSnackBar('Document supprimé avec succès !');
        }
      }
    }
  }

  void _showHelpDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: AppColors.cardBackground,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.r),
        ),
        title: Text(
          'Aide pour le téléchargement',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 18.sp,
            fontWeight: FontWeight.w600,
            color: AppColors.textPrimary,
          ),
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Conseils pour un téléchargement réussi :',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 14.sp,
                color: AppColors.textSecondary,
              ),
            ),
            SizedBox(height: 12.h),
            _buildNoteItem('Utilisez des images claires et lisibles.'),
            _buildNoteItem('Assurez-vous que le document est à jour.'),
            _buildNoteItem('Les formats acceptés sont : PDF, JPG, PNG.'),
          ],
        ),
        actions: [
          CustomButton(
            text: 'Fermer',
            onPressed: () => Navigator.pop(context),
            backgroundColor: AppColors.primary,
            textColor: Colors.white,
            height: 48.h,
          ),
        ],
      ),
    );
  }

  Widget _buildNoteItem(String note) {
    return Padding(
      padding: EdgeInsets.only(bottom: 8.h),
      child: Row(
        children: [
          Icon(
            Icons.check_circle,
            color: AppColors.info,
            size: 16.sp,
          ),
          SizedBox(width: 8.w),
          Expanded(
            child: Text(
              note,
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 14.sp,
                color: AppColors.textSecondary,
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _showSuccessSnackBar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          message,
          style: const TextStyle(
            fontFamily: 'Poppins',
            color: Colors.white,
          ),
        ),
        backgroundColor: AppColors.success,
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.r),
        ),
      ),
    );
  }

  void _showErrorSnackBar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          message,
          style: const TextStyle(
            fontFamily: 'Poppins',
            color: Colors.white,
          ),
        ),
        backgroundColor: AppColors.error,
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.r),
        ),
      ),
    );
  }

  // Helper methods
  Color _getDocumentTypeColor(String type) {
    switch (type.toLowerCase()) {
      case 'identity_card':
        return AppColors.primary;
      case 'passport':
        return AppColors.success;
      case 'driving_license':
        return AppColors.warning;
      case 'utility_bill':
        return AppColors.info;
      case 'bank_statement':
        return Colors.teal;
      case 'resume':
        return AppColors.accent;
      default:
        return AppColors.textSecondary;
    }
  }

  IconData _getDocumentTypeIcon(String type) {
    switch (type.toLowerCase()) {
      case 'identity_card':
        return Icons.credit_card;
      case 'passport':
        return Icons.book;
      case 'driving_license':
        return Icons.drive_eta;
      case 'utility_bill':
        return Icons.receipt;
      case 'bank_statement':
        return Icons.account_balance;
      case 'resume':
        return Icons.description;
      default:
        return Icons.file_copy;
    }
  }

  String _getDocumentTypeName(String type) {
    switch (type.toLowerCase()) {
      case 'identity_card':
        return 'Carte d\'identité';
      case 'passport':
        return 'Passeport';
      case 'driving_license':
        return 'Permis de conduire';
      case 'utility_bill':
        return 'Facture de services';
      case 'bank_statement':
        return 'Relevé bancaire';
      case 'resume':
        return 'CV';
      default:
        return type.replaceAll('_', ' ').toUpperCase();
    }
  }

  String _getCategoryFromType(String type) {
    switch (type.toLowerCase()) {
      case 'identity_card':
      case 'passport':
      case 'driving_license':
        return 'kyc';
      case 'utility_bill':
        return 'kyc';
      case 'bank_statement':
        return 'professional';
      case 'resume':
        return 'professional';
      default:
        return 'kyc';
    }
  }

  IconData _getFileIcon(String? extension) {
    switch (extension?.toLowerCase()) {
      case 'pdf':
        return Icons.picture_as_pdf;
      case 'jpg':
      case 'jpeg':
      case 'png':
        return Icons.image;
      default:
        return Icons.insert_drive_file;
    }
  }

  String _formatFileSize(int bytes) {
    if (bytes < 1024) return '$bytes B';
    if (bytes < 1024 * 1024) return '${(bytes / 1024).toStringAsFixed(1)} KB';
    if (bytes < 1024 * 1024 * 1024)
      return '${(bytes / (1024 * 1024)).toStringAsFixed(1)} MB';
    return '${(bytes / (1024 * 1024 * 1024)).toStringAsFixed(1)} GB';
  }
}
