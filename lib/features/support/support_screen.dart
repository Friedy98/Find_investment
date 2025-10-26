import 'package:find_invest_mobile/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../presentation/widgets/custom_text_field.dart';


class SupportScreen extends ConsumerStatefulWidget {
  // final ProjectEntity projectDto;

  const SupportScreen({super.key});

  @override
  ConsumerState<SupportScreen> createState() => _SupportScreenState();
}

class _SupportScreenState extends ConsumerState<SupportScreen>
    with SingleTickerProviderStateMixin {

  String status = "";
  TextEditingController problemController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text("Support",
          style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 16.sp,
              fontWeight: FontWeight.bold
          )),
        actions: [
          IconButton(
            icon: Icon(Icons.account_circle,
                size: 24.sp),
            onPressed: () {
              context.go('/project-owner/profile');
            },
          ),
        ],
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // --- Avatar et infos de base ---
            ListTile(
              leading: CircleAvatar(
                radius: 25,
                backgroundColor: Colors.blue[100],
                child: const Icon(Icons.message, size: 20, color: AppColors.primary),
              ),
              title: const Text( "Envoyer un message",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
              ),
              subtitle: const Text( "Envoyer un message directement au service client",
                style: TextStyle(fontSize: 12),
              ),
              onTap: _showMessageFormSheet,
            ),

            SizedBox(height: 15.h),
            Divider(),
            SizedBox(height: 15.h),

            ListTile(
              leading: CircleAvatar(
                radius: 25,
                backgroundColor: Colors.blue[100],
                child: const Icon(Icons.call, size: 20, color: AppColors.primary),
              ),
              title: const Text( "Contacter le servie client",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
              ),
              subtitle: const Text( "Passer un appel au service pour leur soumetre votre problème",
                style: TextStyle(fontSize: 12),
              ),
            ),

          ],
        ),
      ),
    );
  }

  void _showMessageFormSheet() {

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => DraggableScrollableSheet(
        initialChildSize: 0.6,
        maxChildSize: 0.8,
        minChildSize: 0.6,
        builder: (context, scrollController) => Container(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          // height: height/1.8,
          decoration: BoxDecoration(
            color: Theme.of(context).dialogBackgroundColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(24.r),
              topRight: Radius.circular(24.r),
            ),
            boxShadow: [
              BoxShadow(
                color: AppColors.gray200.withOpacity(0.3),
                blurRadius: 10,
                offset: const Offset(0, -2),
              ),
            ],
          ),
          child: SingleChildScrollView(
            controller: scrollController,
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 12.h),
                  alignment: Alignment.center,
                  width: 120.w,
                  height: 5.h,
                  decoration: BoxDecoration(
                    color: AppColors.gray300,
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                ),
                SizedBox(height: 16.h),
                CustomTextField(
                  controller: problemController,
                  label: 'Problème',
                  hintText: 'Bug lors de l\'ajout d\'un projet',
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.done,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please describe your problem';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 24.h),

                SizedBox(height: 16.h),
                CustomTextField(
                  controller: descriptionController,
                  label: 'Description',
                  hintText: 'Saisissez la description de voter problème',
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.done,
                  maxLines: 8,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a description';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 24.h),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      padding: const EdgeInsets.symmetric(vertical: 14),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: const Text("Envoyer",
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(height: 24.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}