import 'package:find_invest_mobile/features/auth/domain/entities/user_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:find_invest_mobile/core/theme/app_colors.dart';
import 'package:find_invest_mobile/features/auth/presentation/providers/auth_provider.dart';
import 'package:find_invest_mobile/features/auth/presentation/widgets/custom_button.dart';
import 'package:flutter_animate/flutter_animate.dart';

class NotificationsScreen extends ConsumerStatefulWidget {
  const NotificationsScreen({super.key});

  @override
  ConsumerState<NotificationsScreen> createState() =>
      _NotificationsScreenState();
}

class _NotificationsScreenState extends ConsumerState<NotificationsScreen> {
  Notifications? _notifications;

  @override
  void initState() {
    super.initState();
    final prefs = ref.read(authProvider).user?.preferences;
    _notifications = prefs?.notifications != null
        ? Notifications(
            email: prefs!.notifications!.email,
            push: prefs.notifications!.push,
            sms: prefs.notifications!.sms,
          )
        : null;
  }

  Future<void> _updateNotifications() async {
    final updateData = <String, dynamic>{};

    if (_notifications != null) {
      final notificationsData = <String, dynamic>{};
      if (_notifications!.email != null) {
        notificationsData['email'] = {
          'marketing': _notifications!.email!.marketing,
          'updates': _notifications!.email!.updates,
          'security': _notifications!.email!.security,
        }..removeWhere((k, v) => v == null);
      }
      if (_notifications!.push != null) {
        notificationsData['push'] = {
          'enabled': _notifications!.push!.enabled,
          'marketing': _notifications!.push!.marketing,
          'updates': _notifications!.push!.updates,
        }..removeWhere((k, v) => v == null);
      }
      if (_notifications!.sms != null) {
        notificationsData['sms'] = {
          'enabled': _notifications!.sms!.enabled,
          'security': _notifications!.sms!.security,
        }..removeWhere((k, v) => v == null);
      }
      if (notificationsData.isNotEmpty) {
        updateData['notifications'] = notificationsData;
      }
    }

    if (updateData.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Aucun changement à enregistrer')),
      );
      return;
    }

    final authNotifier = ref.read(authProvider.notifier);
    await authNotifier.updatePreferences(
      notifications: updateData['notifications'],
    );

    if (mounted && authNotifier.state.error == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Paramètres de notification mis à jour')),
      );
      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    final isLoading =
        ref.watch(authProvider.select((state) => state.isLoading));

    return Scaffold(
      backgroundColor: AppColors.cardBackground,
      appBar: AppBar(
        title: Text('Notifications',
            style: TextStyle(fontSize: 20.sp, color: AppColors.textPrimary)),
        backgroundColor: AppColors.cardBackground,
        elevation: 0,
        leading: IconButton(
          icon:
              Icon(Icons.arrow_back, color: AppColors.textPrimary, size: 20.sp),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 30.h),
              _buildSection('Email', [
                SwitchListTile(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 0),
                  title: const Text('Marketing'),
                  value: _notifications?.email?.marketing ?? false,
                  onChanged: (value) {
                    setState(() {
                      _notifications = Notifications(
                        email: EmailNotifications(
                          marketing: value,
                          updates: _notifications?.email?.updates,
                          security: _notifications?.email?.security,
                        ),
                        push: _notifications?.push,
                        sms: _notifications?.sms,
                      );
                    });
                  },
                  activeColor: AppColors.primary,
                ),
                SwitchListTile(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 0),
                  title: const Text('Mises à jour'),
                  value: _notifications?.email?.updates ?? false,
                  onChanged: (value) {
                    setState(() {
                      _notifications = Notifications(
                        email: EmailNotifications(
                          marketing: _notifications?.email?.marketing,
                          updates: value,
                          security: _notifications?.email?.security,
                        ),
                        push: _notifications?.push,
                        sms: _notifications?.sms,
                      );
                    });
                  },
                  activeColor: AppColors.primary,
                ),
                SwitchListTile(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 0),
                  title: const Text('Sécurité'),
                  value: _notifications?.email?.security ?? false,
                  onChanged: (value) {
                    setState(() {
                      _notifications = Notifications(
                        email: EmailNotifications(
                          marketing: _notifications?.email?.marketing,
                          updates: _notifications?.email?.updates,
                          security: value,
                        ),
                        push: _notifications?.push,
                        sms: _notifications?.sms,
                      );
                    });
                  },
                  activeColor: AppColors.primary,
                ),
              ]),
              SizedBox(height: 25.h),
              _buildSection('Push', [
                SwitchListTile(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 0),
                  title: const Text('Activé'),
                  value: _notifications?.push?.enabled ?? false,
                  onChanged: (value) {
                    setState(() {
                      _notifications = Notifications(
                        email: _notifications?.email,
                        push: PushNotifications(
                          enabled: value,
                          marketing: _notifications?.push?.marketing,
                          updates: _notifications?.push?.updates,
                        ),
                        sms: _notifications?.sms,
                      );
                    });
                  },
                  activeColor: AppColors.primary,
                ),
                SwitchListTile(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 0),
                  title: const Text('Marketing'),
                  value: _notifications?.push?.marketing ?? false,
                  onChanged: (value) {
                    setState(() {
                      _notifications = Notifications(
                        email: _notifications?.email,
                        push: PushNotifications(
                          enabled: _notifications?.push?.enabled,
                          marketing: value,
                          updates: _notifications?.push?.updates,
                        ),
                        sms: _notifications?.sms,
                      );
                    });
                  },
                  activeColor: AppColors.primary,
                ),
                SwitchListTile(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 0),
                  title: const Text('Mises à jour'),
                  value: _notifications?.push?.updates ?? false,
                  onChanged: (value) {
                    setState(() {
                      _notifications = Notifications(
                        email: _notifications?.email,
                        push: PushNotifications(
                          enabled: _notifications?.push?.enabled,
                          marketing: _notifications?.push?.marketing,
                          updates: value,
                        ),
                        sms: _notifications?.sms,
                      );
                    });
                  },
                  activeColor: AppColors.primary,
                ),
              ]),
              SizedBox(height: 25.h),
              _buildSection('SMS', [
                SwitchListTile(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 0),
                  title: const Text('Activé'),
                  value: _notifications?.sms?.enabled ?? false,
                  onChanged: (value) {
                    setState(() {
                      _notifications = Notifications(
                        email: _notifications?.email,
                        push: _notifications?.push,
                        sms: SmsNotifications(
                          enabled: value,
                          security: _notifications?.sms?.security,
                        ),
                      );
                    });
                  },
                  activeColor: AppColors.primary,
                ),
                SwitchListTile(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 0),
                  title: const Text('Sécurité'),
                  value: _notifications?.sms?.security ?? false,
                  onChanged: (value) {
                    setState(() {
                      _notifications = Notifications(
                        email: _notifications?.email,
                        push: _notifications?.push,
                        sms: SmsNotifications(
                          enabled: _notifications?.sms?.enabled,
                          security: value,
                        ),
                      );
                    });
                  },
                  activeColor: AppColors.primary,
                ),
              ]),
              SizedBox(height: 30.h),
              CustomButton(
                text: 'Enregistrer',
                onPressed: _updateNotifications,
                isLoading: isLoading,
                // gradient: const LinearGradient(
                //   colors: [AppColors.primary, AppColors.primaryLight],
                //   begin: Alignment.topLeft,
                //   end: Alignment.bottomRight,
                // ),
              )
                  .animate()
                  .scale(duration: 500.ms, curve: Curves.easeOut)
                  .then()
                  .fadeIn(),
              SizedBox(height: 20.h),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSection(String title, List<Widget> children) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 20.sp,
            fontWeight: FontWeight.w500,
            color: AppColors.textPrimary.withOpacity(0.9),
          ),
        ),
        SizedBox(height: 15.h),
        Container(
          // padding: EdgeInsets.symmetric(vertical: 15.w),
          decoration: BoxDecoration(
            color: AppColors.white.withOpacity(0.05),
            borderRadius: BorderRadius.circular(12.r),
            // boxShadow: [
            //   BoxShadow(
            //     color: AppColors.shadow.withOpacity(0.1),
            //     blurRadius: 10,
            //     offset: const Offset(0, 5),
            //   ),
            // ],
          ),
          child: Column(children: children),
        ),
      ],
    ).animate().fadeIn(duration: 600.ms).slideY(begin: 0.3, end: 0);
  }
}
