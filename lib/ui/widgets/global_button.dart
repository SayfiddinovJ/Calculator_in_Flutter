import 'package:calculator/ui/widgets/zoom_tap_animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GlobalButton extends StatelessWidget {
  const GlobalButton({
    super.key,
    required this.text,
    required this.btnColor,
    required this.textColor,
    required this.onTap,
  });

  final String text;
  final VoidCallback onTap;
  final Color btnColor;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return ZoomTapAnimation(
      onTap: onTap,
      child: Container(
        height: 64.w,
        width: 64.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: btnColor,
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontSize: 28.sp,
              fontWeight: FontWeight.w500,
              color: textColor,
            ),
          ),
        ),
      ),
    );
  }
}
