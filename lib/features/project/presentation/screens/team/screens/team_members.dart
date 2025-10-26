
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/theme/app_colors.dart';
import '../../../../../../presentation/widgets/custom_text_field.dart';
import '../../../../../job-seeker/global_widget/global.dart';

class TeamMembersView extends ConsumerStatefulWidget {
  // final ProjectEntity projectDto;

  const TeamMembersView({
    super.key,
    // required this.projectDto
  });

  @override
  ConsumerState<TeamMembersView> createState() => _TeamMembersViewState();
}

class _TeamMembersViewState extends ConsumerState<TeamMembersView>
    with SingleTickerProviderStateMixin {

  TextEditingController emailController = TextEditingController();
  String selectedOption = "";
  String? _selectedRole;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      // final user = ref.read(authProvider).user;
      // if (user != null && mounted) {
      //
      //   ref.read(kycProvider.notifier).fetchKYCStatus(user.id);
      //   // Fetch categories (assuming a method exists in projectProvider or elsewhere)
      //   // _categories = ref.read(projectProvider.notifier).getCategories();
      // }
      // _scrollController.addListener(_onScroll);
    });

  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leadingWidth: 30,
          title: const Row(
            children: [
              // Text(widget.name),
              CircleAvatar(
                radius: 15,
                backgroundColor: Colors.grey,
                child: Icon(Icons.person, color: Colors.white),
              ),
              SizedBox(width: 10),
              Text("Fokou's team"),
            ],
          ),
          elevation: 0,
        ),
        bottomSheet: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: _showOptionsSheet,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                padding: const EdgeInsets.symmetric(vertical: 14),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: const Text(
                "Ajouter un membre",
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Membres de l'équipe",
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold,
                    fontSize: 14.sp
                ),
              ),
              SizedBox(height: 10),
              Expanded(
                child: ListView.builder(
                  itemCount: _collaborateurs.length,
                  itemBuilder: (context, index) {
                    final person = _collaborateurs[index];
                    return InkWell(
                      onTap: _showActionsSheet,
                      child: Card(
                        margin: const EdgeInsets.symmetric(vertical: 10),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SizedBox(
                            height: 70,
                            child: Row(
                              children: [
                                const CircleAvatar(child: Icon(Icons.person)),
                                SizedBox(width: 10),
                                Text(person['name']),
                                Spacer(),
                                SkillChip(person['role']),
                                const Icon(Icons.more_vert_rounded),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        )
    );
  }

  final List<Map<String, dynamic>> _collaborateurs = [
    {
      'name': 'Akoa\'s team',
      'role': 'Chef de projet'
    },
    {
      'name': 'Fokou\'s team',
      'role': 'Coordonateur'
    },
  ];

  final Map<String, String> _validRoles = {
    'investor': "investor",
    'project_owner': "project owner",
    'job_candidate': "job candidate"
  };

  void _showActionsSheet() {

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => DraggableScrollableSheet(
        initialChildSize: 0.2,
        maxChildSize: 0.3,
        minChildSize: 0.2,
        builder: (context, scrollController) => Container(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          // height: height/1.8,
          decoration: BoxDecoration(
            color: AppColors.cardBackground,
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
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 12.h),
                      width: 120.w,
                      height: 5.h,
                      decoration: BoxDecoration(
                        color: AppColors.gray300,
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                    ),
                    const SizedBox(height: 15),
                    TextButton(
                        onPressed: (){},
                        child: Text("Changer de rôle",
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 14.sp
                          ),
                        )
                    ),
                    const SizedBox(height: 10),
                    TextButton(
                        onPressed: (){},
                        child: Text("Supprimer du group",
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Colors.red,
                              fontSize: 14.sp
                          ),)
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _showOptionsSheet() {

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
            color: AppColors.cardBackground,
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
                  controller: emailController,
                  label: 'Email',
                  hintText: 'Enter your email',
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.done,
                  prefixIcon: Icons.email_outlined,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your email';
                    }
                    if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$')
                        .hasMatch(value)) {
                      return 'Please enter a valid email';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 24.h),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Rôle",
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: AppColors.textPrimary,
                      ),
                    ),
                    SizedBox(height: 8.h),
                    DropdownButtonFormField<String>(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: AppColors.gray50,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16.r),
                          borderSide: BorderSide.none,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16.r),
                          borderSide: const BorderSide(
                            color: AppColors.gray200,
                            width: 1.5,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16.r),
                          borderSide: const BorderSide(
                            color: AppColors.primary,
                            width: 2,
                          ),
                        ),
                      ),
                      value: _selectedRole,
                      items: _validRoles.entries
                          .map((entry) => DropdownMenuItem<String>(
                        value: entry.key,
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 2),
                            child: Text(
                              entry.value[0].toUpperCase() +
                                  entry.value.substring(1),
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 15.sp,
                                color: AppColors.textPrimary,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ))
                          .toList(),
                      onChanged: (value) {
                        setState(() {
                          _selectedRole = value;
                        });
                      },
                      validator: (value) {
                        if (value == null) {
                          return 'Please select a role';
                        }
                        return null;
                      },
                    ),
                  ],
                ),
                SizedBox(height: 24.h),
                Row(
                  children: [
                    Icon(Icons.info),
                    SizedBox(width: 10.h),
                    Text("Une invitation va être envoyé au membre",
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: AppColors.textPrimary,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  int daysSinceCreated(DateTime createdAt) {
    final now = DateTime.now();
    final difference = now.difference(createdAt); // Duration
    return difference.inDays;
  }

}
