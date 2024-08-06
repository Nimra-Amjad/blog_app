import 'package:blog_app/core/theme/app_pallete.dart';
import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final Color? textColor;
  final double? fontSize;
  final FontWeight? fontWeight;
  final TextAlign? textAlign;
  final TextOverflow? overflow;
  final int? maxlines;
  final TextDecoration? underline;
  const CustomText(
      {super.key,
      required this.text,
      this.textColor,
      this.fontSize,
      this.fontWeight,
      this.textAlign,
      this.overflow,
      this.maxlines,
      this.underline});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textScaler: const TextScaler.linear(1.0),
      style: TextStyle(
          fontFamily: 'SafeGoogleFont',
          decoration: underline,
          decorationColor: AppPallete.whiteColor,
          fontWeight: fontWeight ?? FontWeight.normal,
          overflow: overflow,
          letterSpacing: -0.48,
          color: textColor ?? AppPallete.whiteColor,
          fontSize: fontSize ?? 20),
    );
  }
}
