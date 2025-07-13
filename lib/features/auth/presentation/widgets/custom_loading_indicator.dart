import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomLoadingIndicator extends StatelessWidget {
  const CustomLoadingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 50.h,
        width: 50.w,
        child: CircularProgressIndicator(
          strokeWidth: 4.w,
          color: Colors.blue,
        ),
      ),
    );
  }
}