
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:find_invest_mobile/core/theme/app_colors.dart';
import 'package:find_invest_mobile/features/auth/presentation/providers/auth_provider.dart';
import '../../chat/chats_view.dart';
import '../../support/support_screen.dart';
import 'alertes/alerte_view.dart';
import 'my_applications/applications_view.dart';
import 'offers/job_offers.dart';

class JobSeekerHome extends ConsumerStatefulWidget {
  const JobSeekerHome({super.key});

  @override
  ConsumerState<JobSeekerHome> createState() =>
      _JobSeekerHomeState();
}

class _JobSeekerHomeState
    extends ConsumerState<JobSeekerHome> {
  int _selectedIndex = 0;

  static const List<Widget> _screens = [
    JobOffers(),
    ApplicationPage(),
    AlertView(),
    MessagesPage(),
  ];

  static const List<String> _titles = [
    'Offres d\'emploi',
    'Mes candidatures',
    'Alertes et favoris',
    'Messagerie'
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // void _showProjectSearch() {
  //   final projects = ref.read(projectProvider).projects;
  //   showSearch(
  //     context: context,
  //     delegate: ProjectSearchDelegate(
  //       projects: projects,
  //       onProjectSelected: (project) {
  //         context.push('/project/${project.id}');
  //       },
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    final user = ref.watch(authProvider).user;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: Builder(
          builder: (context) => IconButton(
            icon: Icon(Icons.menu, size: 24.sp),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        ),
        title: Text(
          _titles[_selectedIndex],
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 16.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.account_circle,
                size: 24.sp),
            onPressed: () {
              context.push('/investor/profile');
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            // First Block: Menu and Close
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Menu',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.close, size: 24.sp,),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
            ),
            // Second Block: Profile Info
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 20.r,
                    backgroundColor: AppColors.primary,
                    child: Icon(Icons.person, size: 20.sp, color: Colors.white),
                  ),
                  SizedBox(width: 12.w),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '${user?.firstName} ${user?.lastName}',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          user?.email ?? '',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 13.sp
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // Third Block: Project Owner Button
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                  context.go('/investor/profile');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primary,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 12.h),
                ),
                child: Text(user?.role ?? '',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 15.sp,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.h),
            // General Group
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
              child: Text(
                'General',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Divider(height: 1.h, color: AppColors.gray200),
            ListTile(
              leading: Icon(Icons.work, size: 20.sp),
              title: Text(
                'Offres',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 15.sp,
                ),
              ),
              onTap: () {
                Navigator.pop(context);
                setState(() {
                  _selectedIndex = 0;
                });
              },
            ),
            ListTile(
              leading: Icon(Icons.local_offer_rounded, size: 20.sp),
              title: Text(
                'Mes candidatures',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 15.sp,
                ),
              ),
              onTap: () {
                Navigator.pop(context);
                setState(() {
                  _selectedIndex = 1;
                });
              },
            ),
            ListTile(
              leading: Icon(Icons.notification_important_outlined, size: 20.sp),
              title: Text(
                'Alertes',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 15.sp,
                ),
              ),
              onTap: () {
                Navigator.pop(context);
                setState(() {
                  _selectedIndex = 2;
                });
              },
            ),
            ListTile(
              leading: Icon(Icons.message, size: 20.sp),
              title: Text(
                'Messagerie',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 15.sp,
                ),
              ),
              onTap: () {
                Navigator.pop(context);
                setState(() {
                  _selectedIndex = 3;
                });
              },
            ),
            ListTile(
              leading: Icon(Icons.star, size: 20.sp,),
              title: Text(
                'Feedbacks',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 15.sp,
                ),
              ),
              onTap: () {
                Navigator.pop(context);
                // TODO: Implement About screen
              },
            ),
            ListTile(
              leading: Icon(Icons.support_agent_sharp, size: 20.sp,),
              title: Text(
                'Support et assistance',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 15.sp,
                ),
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SupportScreen()),
                );
              },
            ),
            SizedBox(height: 10.h),
            // About Group
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
              child: Text(
                'A propos',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Divider(height: 1.h, color: AppColors.gray200),
            ListTile(
              leading: Icon(Icons.question_mark, size: 20.sp),
              title: Text(
                'A propso de l\'application',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 15.sp,
                ),
              ),
              onTap: () {
                Navigator.pop(context);
                // TODO: Implement About screen
              },
            ),
            // Copyright
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
              child: Text(
                '© 2025 Find Invest Mobile. All rights reserved.',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 12.sp,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: AppColors.primary,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle: TextStyle(
          fontFamily: 'Poppins',
          fontSize: 12.sp,
          fontWeight: FontWeight.w600,
        ),
        backgroundColor: Theme.of(context).dialogBackgroundColor,
        unselectedLabelStyle: TextStyle(
          fontFamily: 'Poppins',
          fontSize: 12.sp,
        ),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.work, size: 24.sp),
            label: 'Offres',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_offer_rounded, size: 24.sp),
            label: 'Mes Candidatures',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notification_important_outlined, size: 24.sp),
            label: 'Alertes',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat, size: 24.sp),
            label: 'Messagerie',
          ),
        ],
      ),
    );
  }
}
