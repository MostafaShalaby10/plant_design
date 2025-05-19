import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextWidget extends StatelessWidget {
  const CustomTextWidget({
    super.key,
    required this.text,
    required this.fontSize,
    required this.fontWeight,
    this.fontStyle,
    this.color,
  });
  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final FontStyle? fontStyle;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: TextAlign.center,
      text,
      style: TextStyle(
        color: color ?? Colors.black,
        fontSize: fontSize.sp,
        fontWeight: fontWeight,
        fontStyle: fontStyle ?? FontStyle.normal,
      ),
    );
  }
}
