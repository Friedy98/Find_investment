
import 'package:find_invest_mobile/features/investor/screens/wallet/wallet_view.dart';
import 'package:find_invest_mobile/features/project/presentation/delegates/project_search_delegate.dart';
import 'package:find_invest_mobile/features/project/presentation/providers/project_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:find_invest_mobile/core/theme/app_colors.dart';
import 'package:find_invest_mobile/features/auth/presentation/providers/auth_provider.dart';
import 'package:find_invest_mobile/features/project/presentation/screens/discussions_screen.dart';
import 'Updates/all_updates_view.dart';
import 'community/community_view.dart';
import 'investor_projects_view/investor_home.dart';

class InvestorHomeScreen extends ConsumerStatefulWidget {
  const InvestorHomeScreen({super.key});

  @override
  ConsumerState<InvestorHomeScreen> createState() =>
      _InvestorHomeScreenState();
}

class _InvestorHomeScreenState
    extends ConsumerState<InvestorHomeScreen> {
  int _selectedIndex = 0;

  static const List<Widget> _screens = [
    InvestorHome(),
    WalletPage(),
    UpdatesPage(),
    CommunityView(),
    DiscussionsScreen(),
  ];

  static const List<String> _titles = [
    'Projects',
    'Porte-feuille',
    'Mises à jour',
    'Communauté',
    'Discussions',
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _showSearchDelegate() {
    switch (_selectedIndex) {
      case 0: // Projects
        _showProjectSearch();
        break;
      case 1: // Funding
        _showFundingSearch();
        break;
      case 2: // Team
        _showTeamSearch();
        break;
      case 3: // Collaborate
        _showCollaborateSearch();
        break;
      case 4: // Discussions
        _showDiscussionsSearch();
        break;
    }
  }

  void _showProjectSearch() {
    final projects = ref.read(projectProvider).projects;
    showSearch(
      context: context,
      delegate: ProjectSearchDelegate(
        projects: projects,
        onProjectSelected: (project) {
          context.push('/project/${project.id}');
        },
      ),
    );
  }

  void _showFundingSearch() {
    // showSearch(
    //   context: context,
    //   // delegate: FundingSearchDelegate(
    //   //   onFundingSelected: (funding) {
    //   //     // Navigate to funding details
    //   //     context.push('/funding/${funding.id}');
    //   //   },
    //   // ),
    // );
  }

  void _showTeamSearch() {
    // showSearch(
    //   context: context,
    //   delegate: TeamSearchDelegate(
    //     onMemberSelected: (member) {
    //       // Navigate to member profile
    //       context.push('/team/member/${member.id}');
    //     },
    //   ),
    // );
  }

  void _showCollaborateSearch() {
    // showSearch(
    //   context: context,
    //   delegate: CollaborateSearchDelegate(
    //     onCollaborationSelected: (collaboration) {
    //       // Navigate to collaboration details
    //       context.push('/collaborate/${collaboration.id}');
    //     },
    //   ),
    // );
  }

  void _showDiscussionsSearch() {
    // showSearch(
    //   context: context,
    //   delegate: DiscussionsSearchDelegate(
    //     onDiscussionSelected: (discussion) {
    //       // Navigate to discussion details
    //       context.push('/discussions/${discussion.id}');
    //     },
    //   ),
    // );
  }

  @override
  Widget build(BuildContext context) {
    final user = ref.watch(authProvider).user;

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.cardBackground,
        elevation: 0,
        leading: Builder(
          builder: (context) => IconButton(
            icon: Icon(Icons.menu, size: 24.sp, color: AppColors.textPrimary),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        ),
        title: Text(
          _titles[_selectedIndex],
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 20.sp,
            fontWeight: FontWeight.bold,
            color: AppColors.textPrimary,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.account_circle,
                size: 24.sp, color: AppColors.textPrimary),
            onPressed: () {
              context.push('/investor/profile');
            },
          ),
        ],
      ),
      drawer: Drawer(
        backgroundColor: AppColors.cardBackground,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            // First Block: Menu and Close
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
              color: AppColors.cardBackground,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Menu',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                      color: AppColors.textPrimary,
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.close,
                        size: 24.sp, color: AppColors.textPrimary),
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
              color: AppColors.cardBackground,
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
                            color: AppColors.textPrimary,
                          ),
                        ),
                        Text(
                          user?.email ?? '',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 13.sp,
                            color: AppColors.textSecondary,
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
              color: AppColors.cardBackground,
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
                  color: AppColors.textSecondary,
                ),
              ),
            ),
            Divider(height: 1.h, color: AppColors.gray200),
            ListTile(
              leading: Icon(Icons.work_outline,
                  size: 20.sp, color: AppColors.textPrimary),
              title: Text(
                'Projects',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 15.sp,
                  color: AppColors.textPrimary,
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
              leading: Icon(Icons.account_balance_wallet_outlined,
                  size: 20.sp, color: AppColors.textPrimary),
              title: Text(
                'Funding',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 15.sp,
                  color: AppColors.textPrimary,
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
              leading: Icon(Icons.group_outlined,
                  size: 20.sp, color: AppColors.textPrimary),
              title: Text(
                'Team',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 15.sp,
                  color: AppColors.textPrimary,
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
              leading: Icon(Icons.handshake_outlined,
                  size: 20.sp, color: AppColors.textPrimary),
              title: Text(
                'Collaborate',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 15.sp,
                  color: AppColors.textPrimary,
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
              leading: Icon(Icons.notifications_outlined,
                  size: 20.sp, color: AppColors.textPrimary),
              title: Text(
                'Notifications',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 15.sp,
                  color: AppColors.textPrimary,
                ),
              ),
              onTap: () {
                Navigator.pop(context);
                // TODO: Implement Notifications screen
              },
            ),
            ListTile(
              leading: Icon(Icons.trending_up_outlined,
                  size: 20.sp, color: AppColors.textPrimary),
              title: Text(
                'Evolutions',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 15.sp,
                  color: AppColors.textPrimary,
                ),
              ),
              onTap: () {
                Navigator.pop(context);
                // TODO: Implement Evolutions screen
              },
            ),
            SizedBox(height: 10.h),
            // About Group
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
              child: Text(
                'About',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                  color: AppColors.textSecondary,
                ),
              ),
            ),
            Divider(height: 1.h, color: AppColors.gray200),
            ListTile(
              leading: Icon(Icons.info_outline,
                  size: 20.sp, color: AppColors.textPrimary),
              title: Text(
                'About the Application',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 15.sp,
                  color: AppColors.textPrimary,
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
                  color: AppColors.textSecondary,
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
        unselectedItemColor: AppColors.textSecondary,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        backgroundColor: AppColors.cardBackground,
        selectedLabelStyle: TextStyle(
          fontFamily: 'Poppins',
          fontSize: 12.sp,
          fontWeight: FontWeight.w600,
        ),
        unselectedLabelStyle: TextStyle(
          fontFamily: 'Poppins',
          fontSize: 12.sp,
        ),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.work, size: 24.sp),
            label: 'Projects',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance_wallet, size: 24.sp),
            label: 'Porte-feuille',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.group, size: 24.sp),
            label: 'Mise à jour',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.handshake, size: 24.sp),
            label: 'Communauté',
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
