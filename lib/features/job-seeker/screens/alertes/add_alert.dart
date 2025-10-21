
import 'package:find_invest_mobile/core/theme/app_colors.dart';
import 'package:find_invest_mobile/features/auth/presentation/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';


class AddAlertForm extends ConsumerStatefulWidget {
  const AddAlertForm({super.key});

  @override
  ConsumerState<AddAlertForm> createState() => _AddAlertFormState();
}

class _AddAlertFormState extends ConsumerState<AddAlertForm>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: const [

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

}