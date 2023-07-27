import 'package:flutter/material.dart';

import '../common/app_color.dart';
import 'custom_theme.dart';


// ignore: must_be_immutable
class CustomButton extends StatelessWidget {
  CustomButton({
    Key? key,
    required this.onTap,
    this.height,
    this.width,
    this.title,
    this.bgClr,
    this.padding,
    this.radius,
    this.fSize,
    this.child,
  }) : super(key: key);
  final VoidCallback onTap;
  final double? width;
  final double? height;
  final String? title;
  final Color? bgClr;
  final EdgeInsetsGeometry? padding;
  final BorderRadiusGeometry? radius;
  final double? fSize;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        // height: height,
        padding: padding ?? EdgeInsets.symmetric(vertical: 12.0),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: radius ?? BorderRadius.circular(50.0),
          color: bgClr ?? primaryColor,
        ),
        child: child ??
            Text(
              "${title ?? ''}",
              style: customTextStyle(
                size: fSize ?? 18.0,
                fw: FontWeight.w600,
                clr: Colors.white,
              ),
            ),
      ),
    );
  }
}
