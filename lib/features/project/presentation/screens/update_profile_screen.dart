// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:go_router/go_router.dart';
// import 'package:intl/intl.dart';
// import 'package:find_invest_mobile/core/theme/app_colors.dart';
// import 'package:find_invest_mobile/features/auth/presentation/providers/auth_provider.dart';
// // import 'package:find_invest_mobile/features/auth/presentation/widgets/auth_message_modal.dart';
// import 'package:find_invest_mobile/features/auth/presentation/widgets/custom_button.dart';
// import 'package:find_invest_mobile/features/auth/presentation/widgets/custom_text_field.dart';

// class UpdateProfileScreen extends ConsumerStatefulWidget {
//   const UpdateProfileScreen({super.key});

//   @override
//   ConsumerState<UpdateProfileScreen> createState() =>
//       _UpdateProfileScreenState();
// }

// class _UpdateProfileScreenState extends ConsumerState<UpdateProfileScreen> {
//   final _formKey = GlobalKey<FormState>();
//   final _firstNameController = TextEditingController();
//   final _lastNameController = TextEditingController();
//   final _phoneController = TextEditingController();
//   final _bioController = TextEditingController();
//   final _locationController = TextEditingController();
//   final _websiteController = TextEditingController();
//   final _linkedinController = TextEditingController();
//   final _twitterController = TextEditingController();
//   final _facebookController = TextEditingController();
//   final _instagramController = TextEditingController();
//   String? _language;
//   String? _gender;
//   String? _profileVisibility;
//   bool _emailNotifications = false;
//   bool _pushNotifications = false;
//   bool _smsNotifications = false;
//   bool _showEmail = false;
//   bool _showPhone = false;
//   DateTime? _dateOfBirth;

//   @override
//   void initState() {
//     super.initState();
//     final user = ref.read(authProvider).user;
//     _firstNameController.text = user?.firstName ?? '';
//     _lastNameController.text = user?.lastName ?? '';
//     _phoneController.text = user?.phone ?? '';
//     _bioController.text = user?.profile?.bio ?? '';
//     _locationController.text = user?.profile?.location ?? '';
//     _websiteController.text = user?.profile?.website ?? '';
//     _linkedinController.text = user?.profile?.socialLinks?.linkedin ?? '';
//     _twitterController.text = user?.profile?.socialLinks?.twitter ?? '';
//     _facebookController.text = user?.profile?.socialLinks?.facebook ?? '';
//     _instagramController.text = user?.profile?.socialLinks?.instagram ?? '';
//     _language = user?.preferences?.language ?? 'en';
//     _gender = user?.profile?.gender ?? 'Not specified';
//     _profileVisibility =
//         user?.preferences?.privacy?.profileVisibility ?? 'public';
//     _emailNotifications = user?.preferences?.notifications?.email ?? false;
//     _pushNotifications = user?.preferences?.notifications?.push ?? false;
//     _smsNotifications = user?.preferences?.notifications?.sms ?? false;
//     _showEmail = user?.preferences?.privacy?.showEmail ?? false;
//     _showPhone = user?.preferences?.privacy?.showPhone ?? false;
//     _dateOfBirth = user?.profile?.dateOfBirth;
//   }

//   @override
//   void dispose() {
//     _firstNameController.dispose();
//     _lastNameController.dispose();
//     _phoneController.dispose();
//     _bioController.dispose();
//     _locationController.dispose();
//     _websiteController.dispose();
//     _linkedinController.dispose();
//     _twitterController.dispose();
//     _facebookController.dispose();
//     _instagramController.dispose();
//     super.dispose();
//   }

//   Future<void> _selectDate(BuildContext context) async {
//     final DateTime? picked = await showDatePicker(
//       context: context,
//       initialDate: _dateOfBirth ?? DateTime.now(),
//       firstDate: DateTime(1900),
//       lastDate: DateTime.now(),
//       builder: (context, child) {
//         return Theme(
//           data: ThemeData.light().copyWith(
//             colorScheme: const ColorScheme.light(
//               primary: AppColors.primary,
//               onPrimary: Colors.white,
//               surface: AppColors.cardBackground,
//             ),
//           ),
//           child: child!,
//         );
//       },
//     );
//     if (picked != null && picked != _dateOfBirth && mounted) {
//       setState(() {
//         _dateOfBirth = picked;
//       });
//       print(
//           'UpdateProfileScreen: Date of Birth selected: ${DateFormat('dd MMM yyyy').format(picked)}');
//     }
//   }

//   Future<void> _handleUpdateProfile() async {
//     print('UpdateProfileScreen: handleUpdateProfile called');
//     if (!_formKey.currentState!.validate()) return;

//     final profileData = {
//       'firstName': _firstNameController.text.trim(),
//       'lastName': _lastNameController.text.trim(),
//       'phone': _phoneController.text.trim().isNotEmpty
//           ? _phoneController.text.trim()
//           : null,
//       'profile': {
//         'bio': _bioController.text.trim().isNotEmpty
//             ? _bioController.text.trim()
//             : null,
//         'location': _locationController.text.trim().isNotEmpty
//             ? _locationController.text.trim()
//             : null,
//         'website': _websiteController.text.trim().isNotEmpty
//             ? _websiteController.text.trim()
//             : null,
//         'gender': _gender != 'Not specified' ? _gender : null,
//         if (_dateOfBirth != null)
//           'dateOfBirth': _dateOfBirth!.toIso8601String(),
//         'socialLinks': {
//           'linkedin': _linkedinController.text.trim().isNotEmpty
//               ? _linkedinController.text.trim()
//               : null,
//           'twitter': _twitterController.text.trim().isNotEmpty
//               ? _twitterController.text.trim()
//               : null,
//           'facebook': _facebookController.text.trim().isNotEmpty
//               ? _facebookController.text.trim()
//               : null,
//           'instagram': _instagramController.text.trim().isNotEmpty
//               ? _instagramController.text.trim()
//               : null,
//         },
//       },
//       'preferences': {
//         'language': _language,
//         'notifications': {
//           'email': _emailNotifications,
//           'push': _pushNotifications,
//           'sms': _smsNotifications,
//         },
//         'privacy': {
//           'profileVisibility': _profileVisibility,
//           'showEmail': _showEmail,
//           'showPhone': _showPhone,
//         },
//       },
//     };

//     // final success = await ref.read(authProvider.notifier).updateProfile(
//     //       firstName: _firstNameController.text.trim(),
//     //       lastName: _lastNameController.text.trim(),
//     //       phone: _phoneController.text.trim().isNotEmpty
//     //           ? _phoneController.text.trim()
//     //           : null,
//     //       bio: _bioController.text.trim().isNotEmpty
//     //           ? _bioController.text.trim()
//     //           : null,
//     //       avatar:
//     //           null, // Not editable in this form (file upload not implemented)
//     //       // UpdateProfileUseCase expects individual fields, but we can modify it if needed
//     //     );

//     // if (mounted) {
//     //   if (success) {
//     //     showDialog(
//     //       context: context,
//     //       builder: (context) => AuthMessageModal(
//     //         title: 'Success',
//     //         message: 'Profile updated successfully!',
//     //         isSuccess: true,
//     //         onClose: () => context.go('/project-owner/profile'),
//     //       ),
//     //     );
//     //   } else {
//     //     final error =
//     //         ref.read(authProvider).error ?? 'Failed to update profile';
//     //     showDialog(
//     //       context: context,
//     //       builder: (context) => AuthMessageModal(
//     //         title: 'Update Profile Error',
//     //         message: error,
//     //         code: error == 'Failed to update profile' ? 'UNKNOWN_ERROR' : null,
//     //       ),
//     //     );
//     //   }
//     // }
//   }

//   @override
//   Widget build(BuildContext context) {
//     print('UpdateProfileScreen build');
//     ref.listen(authProvider, (previous, next) {
//       print(
//           'authProvider state: isLoading=${next.isLoading}, user=${next.user?.email}, error=${next.error}');
//     });
//     final authState = ref.watch(authProvider);

//     return Scaffold(
//       backgroundColor: AppColors.background,
//       appBar: AppBar(
//         backgroundColor: AppColors.cardBackground,
//         elevation: 0,
//         leading: IconButton(
//           icon:
//               Icon(Icons.arrow_back, size: 24.sp, color: AppColors.textPrimary),
//           onPressed: () {
//             print('UpdateProfileScreen: Back button clicked');
//             context.go('/project-owner/profile');
//           },
//         ),
//         title: Text(
//           'Update Profile',
//           style: TextStyle(
//             fontFamily: 'Poppins',
//             fontSize: 20.sp,
//             fontWeight: FontWeight.bold,
//             color: AppColors.textPrimary,
//           ),
//         ),
//         centerTitle: true,
//       ),
//       body: SingleChildScrollView(
//         padding: EdgeInsets.all(16.w),
//         child: Container(
//           padding: EdgeInsets.all(16.w),
//           decoration: BoxDecoration(
//             color: AppColors.cardBackground,
//             borderRadius: BorderRadius.circular(16.r),
//             boxShadow: [
//               BoxShadow(
//                 color: Colors.black.withOpacity(0.08),
//                 blurRadius: 12.r,
//                 offset: Offset(0, 4.h),
//               ),
//             ],
//           ),
//           child: Form(
//             key: _formKey,
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.stretch,
//               children: [
//                 Container(
//                   padding: EdgeInsets.all(12.w),
//                   decoration: const BoxDecoration(
//                     shape: BoxShape.circle,
//                     gradient: LinearGradient(
//                       colors: [AppColors.primary, AppColors.primaryLight],
//                       begin: Alignment.topLeft,
//                       end: Alignment.bottomRight,
//                     ),
//                   ),
//                   child: Icon(
//                     Icons.person,
//                     size: 48.sp,
//                     color: Colors.white,
//                   ),
//                 ),
//                 SizedBox(height: 24.h),
//                 Text(
//                   'Update Your Profile',
//                   style: TextStyle(
//                     fontFamily: 'Poppins',
//                     fontSize: 24.sp,
//                     fontWeight: FontWeight.bold,
//                     color: AppColors.textPrimary,
//                   ),
//                   textAlign: TextAlign.center,
//                 ),
//                 SizedBox(height: 8.h),
//                 Text(
//                   'Edit your personal information and preferences',
//                   style: TextStyle(
//                     fontFamily: 'Poppins',
//                     fontSize: 16.sp,
//                     color: AppColors.textSecondary,
//                   ),
//                   textAlign: TextAlign.center,
//                 ),
//                 SizedBox(height: 24.h),
//                 // Personal Information
//                 ExpansionTile(
//                   title: Text(
//                     'Personal Information',
//                     style: TextStyle(
//                       fontFamily: 'Poppins',
//                       fontSize: 18.sp,
//                       fontWeight: FontWeight.bold,
//                       color: AppColors.textPrimary,
//                     ),
//                   ),
//                   leading: Icon(Icons.person, color: AppColors.primary),
//                   children: [
//                     CustomTextField(
//                       controller: _firstNameController,
//                       label: 'First Name',
//                       hintText: 'Enter your first name',
//                       keyboardType: TextInputType.name,
//                       textInputAction: TextInputAction.next,
//                       prefixIcon: Icons.person_outline,
//                       validator: (value) {
//                         if (value == null || value.isEmpty) {
//                           return 'Please enter your first name';
//                         }
//                         return null;
//                       },
//                       onChanged: (value) => print('First Name input: $value'),
//                     ),
//                     SizedBox(height: 16.h),
//                     CustomTextField(
//                       controller: _lastNameController,
//                       label: 'Last Name',
//                       hintText: 'Enter your last name',
//                       keyboardType: TextInputType.name,
//                       textInputAction: TextInputAction.next,
//                       prefixIcon: Icons.person_outline,
//                       validator: (value) {
//                         if (value == null || value.isEmpty) {
//                           return 'Please enter your last name';
//                         }
//                         return null;
//                       },
//                       onChanged: (value) => print('Last Name input: $value'),
//                     ),
//                     SizedBox(height: 16.h),
//                     CustomTextField(
//                       controller: _phoneController,
//                       label: 'Phone Number',
//                       hintText: 'Enter your phone number',
//                       keyboardType: TextInputType.phone,
//                       textInputAction: TextInputAction.next,
//                       prefixIcon: Icons.phone_outlined,
//                       validator: (value) {
//                         if (value != null &&
//                             value.isNotEmpty &&
//                             !RegExp(r'^\d{10,12}$').hasMatch(value)) {
//                           return 'Enter a valid phone number (10-12 digits)';
//                         }
//                         return null;
//                       },
//                       onChanged: (value) => print('Phone input: $value'),
//                     ),
//                   ],
//                 ),
//                 SizedBox(height: 16.h),
//                 // Profile Details
//                 ExpansionTile(
//                   title: Text(
//                     'Profile Details',
//                     style: TextStyle(
//                       fontFamily: 'Poppins',
//                       fontSize: 18.sp,
//                       fontWeight: FontWeight.bold,
//                       color: AppColors.textPrimary,
//                     ),
//                   ),
//                   leading: Icon(Icons.info, color: AppColors.primary),
//                   children: [
//                     CustomTextField(
//                       controller: _bioController,
//                       label: 'Bio',
//                       hintText: 'Tell us about yourself',
//                       keyboardType: TextInputType.multiline,
//                       maxLines: 4,
//                       textInputAction: TextInputAction.next,
//                       prefixIcon: Icons.description,
//                       onChanged: (value) => print('Bio input: $value'),
//                     ),
//                     SizedBox(height: 16.h),
//                     CustomTextField(
//                       controller: _locationController,
//                       label: 'Location',
//                       hintText: 'Enter your location',
//                       keyboardType: TextInputType.text,
//                       textInputAction: TextInputAction.next,
//                       prefixIcon: Icons.location_on,
//                       onChanged: (value) => print('Location input: $value'),
//                     ),
//                     SizedBox(height: 16.h),
//                     CustomTextField(
//                       controller: _websiteController,
//                       label: 'Website',
//                       hintText: 'Enter your website URL',
//                       keyboardType: TextInputType.url,
//                       textInputAction: TextInputAction.next,
//                       prefixIcon: Icons.link,
//                       validator: (value) {
//                         if (value != null &&
//                             value.isNotEmpty &&
//                             !Uri.parse(value).isAbsolute) {
//                           return 'Enter a valid URL';
//                         }
//                         return null;
//                       },
//                       onChanged: (value) => print('Website input: $value'),
//                     ),
//                     SizedBox(height: 16.h),
//                     DropdownButtonFormField<String>(
//                       value: _gender,
//                       decoration: InputDecoration(
//                         labelText: 'Gender',
//                         prefixIcon: Icon(Icons.person_outline,
//                             color: AppColors.primary),
//                         border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(12.r),
//                           borderSide: BorderSide(color: AppColors.gray200),
//                         ),
//                         enabledBorder: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(12.r),
//                           borderSide: BorderSide(color: AppColors.gray200),
//                         ),
//                         focusedBorder: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(12.r),
//                           borderSide:
//                               BorderSide(color: AppColors.primary, width: 2.w),
//                         ),
//                         labelStyle:
//                             TextStyle(fontFamily: 'Poppins', fontSize: 16.sp),
//                       ),
//                       items: ['Not specified', 'Male', 'Female', 'Other']
//                           .map((gender) => DropdownMenuItem(
//                               value: gender, child: Text(gender)))
//                           .toList(),
//                       onChanged: (value) {
//                         setState(() {
//                           _gender = value;
//                         });
//                         print('Gender selected: $value');
//                       },
//                     ),
//                     SizedBox(height: 16.h),
//                     InkWell(
//                       onTap: () => _selectDate(context),
//                       child: InputDecorator(
//                         decoration: InputDecoration(
//                           labelText: 'Date of Birth',
//                           prefixIcon:
//                               Icon(Icons.cake, color: AppColors.primary),
//                           border: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(12.r),
//                             borderSide: BorderSide(color: AppColors.gray200),
//                           ),
//                           enabledBorder: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(12.r),
//                             borderSide: BorderSide(color: AppColors.gray200),
//                           ),
//                           focusedBorder: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(12.r),
//                             borderSide: BorderSide(
//                                 color: AppColors.primary, width: 2.w),
//                           ),
//                           labelStyle:
//                               TextStyle(fontFamily: 'Poppins', fontSize: 16.sp),
//                         ),
//                         child: Text(
//                           _dateOfBirth != null
//                               ? DateFormat('dd MMM yyyy').format(_dateOfBirth!)
//                               : 'Select date of birth',
//                           style: TextStyle(
//                             fontFamily: 'Poppins',
//                             fontSize: 16.sp,
//                             color: _dateOfBirth != null
//                                 ? AppColors.textPrimary
//                                 : AppColors.textSecondary,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//                 SizedBox(height: 16.h),
//                 // Social Links
//                 ExpansionTile(
//                   title: Text(
//                     'Social Links',
//                     style: TextStyle(
//                       fontFamily: 'Poppins',
//                       fontSize: 18.sp,
//                       fontWeight: FontWeight.bold,
//                       color: AppColors.textPrimary,
//                     ),
//                   ),
//                   leading: Icon(Icons.link, color: AppColors.primary),
//                   children: [
//                     CustomTextField(
//                       controller: _linkedinController,
//                       label: 'LinkedIn',
//                       hintText: 'Enter LinkedIn URL',
//                       keyboardType: TextInputType.url,
//                       textInputAction: TextInputAction.next,
//                       prefixIcon: Icons.link,
//                       validator: (value) {
//                         if (value != null &&
//                             value.isNotEmpty &&
//                             !Uri.parse(value).isAbsolute) {
//                           return 'Enter a valid URL';
//                         }
//                         return null;
//                       },
//                       onChanged: (value) => print('LinkedIn input: $value'),
//                     ),
//                     SizedBox(height: 16.h),
//                     CustomTextField(
//                       controller: _twitterController,
//                       label: 'Twitter',
//                       hintText: 'Enter Twitter URL',
//                       keyboardType: TextInputType.url,
//                       textInputAction: TextInputAction.next,
//                       prefixIcon: Icons.link,
//                       validator: (value) {
//                         if (value != null &&
//                             value.isNotEmpty &&
//                             !Uri.parse(value).isAbsolute) {
//                           return 'Enter a valid URL';
//                         }
//                         return null;
//                       },
//                       onChanged: (value) => print('Twitter input: $value'),
//                     ),
//                     SizedBox(height: 16.h),
//                     CustomTextField(
//                       controller: _facebookController,
//                       label: 'Facebook',
//                       hintText: 'Enter Facebook URL',
//                       keyboardType: TextInputType.url,
//                       textInputAction: TextInputAction.next,
//                       prefixIcon: Icons.link,
//                       validator: (value) {
//                         if (value != null &&
//                             value.isNotEmpty &&
//                             !Uri.parse(value).isAbsolute) {
//                           return 'Enter a valid URL';
//                         }
//                         return null;
//                       },
//                       onChanged: (value) => print('Facebook input: $value'),
//                     ),
//                     SizedBox(height: 16.h),
//                     CustomTextField(
//                       controller: _instagramController,
//                       label: 'Instagram',
//                       hintText: 'Enter Instagram URL',
//                       keyboardType: TextInputType.url,
//                       textInputAction: TextInputAction.done,
//                       prefixIcon: Icons.link,
//                       validator: (value) {
//                         if (value != null &&
//                             value.isNotEmpty &&
//                             !Uri.parse(value).isAbsolute) {
//                           return 'Enter a valid URL';
//                         }
//                         return null;
//                       },
//                       onChanged: (value) => print('Instagram input: $value'),
//                     ),
//                   ],
//                 ),
//                 SizedBox(height: 16.h),
//                 // Preferences
//                 ExpansionTile(
//                   title: Text(
//                     'Preferences',
//                     style: TextStyle(
//                       fontFamily: 'Poppins',
//                       fontSize: 18.sp,
//                       fontWeight: FontWeight.bold,
//                       color: AppColors.textPrimary,
//                     ),
//                   ),
//                   leading: Icon(Icons.settings, color: AppColors.primary),
//                   children: [
//                     DropdownButtonFormField<String>(
//                       value: _language,
//                       decoration: InputDecoration(
//                         labelText: 'Language',
//                         prefixIcon:
//                             Icon(Icons.language, color: AppColors.primary),
//                         border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(12.r),
//                           borderSide: BorderSide(color: AppColors.gray200),
//                         ),
//                         enabledBorder: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(12.r),
//                           borderSide: BorderSide(color: AppColors.gray200),
//                         ),
//                         focusedBorder: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(12.r),
//                           borderSide:
//                               BorderSide(color: AppColors.primary, width: 2.w),
//                         ),
//                         labelStyle:
//                             TextStyle(fontFamily: 'Poppins', fontSize: 16.sp),
//                       ),
//                       items: ['en', 'fr', 'es']
//                           .map((lang) => DropdownMenuItem(
//                               value: lang, child: Text(lang.toUpperCase())))
//                           .toList(),
//                       onChanged: (value) {
//                         setState(() {
//                           _language = value;
//                         });
//                         print('Language selected: $value');
//                       },
//                     ),
//                     SizedBox(height: 16.h),
//                     SwitchListTile(
//                       title: Text(
//                         'Email Notifications',
//                         style: TextStyle(
//                           fontFamily: 'Poppins',
//                           fontSize: 16.sp,
//                           color: AppColors.textPrimary,
//                         ),
//                       ),
//                       value: _emailNotifications,
//                       onChanged: (value) {
//                         setState(() {
//                           _emailNotifications = value;
//                         });
//                         print('Email Notifications toggled: $value');
//                       },
//                       activeColor: AppColors.primary,
//                     ),
//                     SwitchListTile(
//                       title: Text(
//                         'Push Notifications',
//                         style: TextStyle(
//                           fontFamily: 'Poppins',
//                           fontSize: 16.sp,
//                           color: AppColors.textPrimary,
//                         ),
//                       ),
//                       value: _pushNotifications,
//                       onChanged: (value) {
//                         setState(() {
//                           _pushNotifications = value;
//                         });
//                         print('Push Notifications toggled: $value');
//                       },
//                       activeColor: AppColors.primary,
//                     ),
//                     SwitchListTile(
//                       title: Text(
//                         'SMS Notifications',
//                         style: TextStyle(
//                           fontFamily: 'Poppins',
//                           fontSize: 16.sp,
//                           color: AppColors.textPrimary,
//                         ),
//                       ),
//                       value: _smsNotifications,
//                       onChanged: (value) {
//                         setState(() {
//                           _smsNotifications = value;
//                         });
//                         print('SMS Notifications toggled: $value');
//                       },
//                       activeColor: AppColors.primary,
//                     ),
//                     SizedBox(height: 16.h),
//                     DropdownButtonFormField<String>(
//                       value: _profileVisibility,
//                       decoration: InputDecoration(
//                         labelText: 'Profile Visibility',
//                         prefixIcon:
//                             Icon(Icons.visibility, color: AppColors.primary),
//                         border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(12.r),
//                           borderSide: BorderSide(color: AppColors.gray200),
//                         ),
//                         enabledBorder: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(12.r),
//                           borderSide: BorderSide(color: AppColors.gray200),
//                         ),
//                         focusedBorder: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(12.r),
//                           borderSide:
//                               BorderSide(color: AppColors.primary, width: 2.w),
//                         ),
//                         labelStyle:
//                             TextStyle(fontFamily: 'Poppins', fontSize: 16.sp),
//                       ),
//                       items: ['public', 'private', 'contacts']
//                           .map((visibility) => DropdownMenuItem(
//                               value: visibility,
//                               child: Text(visibility.capitalize())))
//                           .toList(),
//                       onChanged: (value) {
//                         setState(() {
//                           _profileVisibility = value;
//                         });
//                         print('Profile Visibility selected: $value');
//                       },
//                     ),
//                     SizedBox(height: 16.h),
//                     SwitchListTile(
//                       title: Text(
//                         'Show Email',
//                         style: TextStyle(
//                           fontFamily: 'Poppins',
//                           fontSize: 16.sp,
//                           color: AppColors.textPrimary,
//                         ),
//                       ),
//                       value: _showEmail,
//                       onChanged: (value) {
//                         setState(() {
//                           _showEmail = value;
//                         });
//                         print('Show Email toggled: $value');
//                       },
//                       activeColor: AppColors.primary,
//                     ),
//                     SwitchListTile(
//                       title: Text(
//                         'Show Phone',
//                         style: TextStyle(
//                           fontFamily: 'Poppins',
//                           fontSize: 16.sp,
//                           color: AppColors.textPrimary,
//                         ),
//                       ),
//                       value: _showPhone,
//                       onChanged: (value) {
//                         setState(() {
//                           _showPhone = value;
//                         });
//                         print('Show Phone toggled: $value');
//                       },
//                       activeColor: AppColors.primary,
//                     ),
//                   ],
//                 ),
//                 SizedBox(height: 24.h),
//                 CustomButton(
//                   text: 'Save Changes',
//                   onPressed: _handleUpdateProfile,
//                   isLoading: authState.isLoading,
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// extension StringExtension on String {
//   String capitalize() {
//     return "${this[0].toUpperCase()}${substring(1)}";
//   }
// }
