import 'package:flutter/material.dart';

import '../common/app_color.dart';
import 'custom_theme.dart';


// ignore: must_be_immutable
class CustomTextField extends StatelessWidget {
  CustomTextField({
    super.key,
    this.prefixIcon,
    this.inputType,
    this.lebelText,
    this.maxLine,
    this.data,
    this.hintText,
    this.initialText,
    this.suffixIcon,
    this.formatter,
    required this.obscureText,
    required this.controller,
    this.onChanged,
    this.fillColor,
    this.validatorText,
    this.padding,
    this.radius,
    this.readOnly,
    this.minLines,
    this.textInputAction,
    this.maxLength,
    this.textAlign,
    this.textAlignVertical,
    this.counterText,
    this.onTap,
    this.textStyle,
    this.hintStyle,
    this.textCopyPaste, 
  });

  final TextEditingController controller;
  final dynamic data;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final String? initialText;
  final String? hintText;
  final int? maxLine;
  final String? lebelText;
  final dynamic formatter;
  final TextInputType? inputType;
  final bool obscureText;
  final Color? fillColor;
  final void Function(String)? onChanged;
  final String? validatorText;
  final EdgeInsetsGeometry? padding;
  final double? radius;
  final bool? readOnly;
  final int? minLines;
  final TextInputAction? textInputAction;
  final int? maxLength;
  final TextAlign? textAlign;
  final TextAlignVertical? textAlignVertical;
  final String? counterText;
  final VoidCallback? onTap;
  final TextStyle? textStyle;
  final TextStyle? hintStyle;
  final bool? textCopyPaste;

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.symmetric(vertical: 6.0),
      child: TextFormField(
        // showCursor: true,
        onTap: onTap,
        readOnly: readOnly ?? false,
        minLines: minLines ?? 1,
        maxLines: maxLine ?? 1,
        initialValue: initialText,
        keyboardType: inputType,
        controller: controller,
        inputFormatters: formatter,
        // autocorrect: true,
        enableInteractiveSelection: textCopyPaste ?? true,

        obscureText: obscureText,
        obscuringCharacter: '*',
        validator: (value) {
          if (value == null || value.isEmpty) {
            return '$validatorText';
          }
          return null;
        },
        //onSaved: (String value) => data[keyy] = value,
        // onChanged: (initialText) => {},
        onChanged: onChanged,
        textInputAction: textInputAction ?? TextInputAction.done,
        autofocus: false,
        style: textStyle ??
            customTextStyle(
              size: 18.0,
              clr: Colors.black,
              lSpace: 1.0,
              decoration: TextDecoration.none,
            ),
        maxLength: maxLength,
        textAlign: textAlign ?? TextAlign.start,
        textAlignVertical: textAlignVertical,
        decoration: InputDecoration(
          // fillColor: Color(0xFF252525),
          // filled: true,
          // border: OutlineInputBorder(
          //   borderRadius: BorderRadius.circular(10.0),
          //   gapPadding: 5.0,
          //   borderSide: BorderSide(width: 1.0),
          // ),
          counterText: counterText,

          fillColor: fillColor,
          filled: true,
          border: InputBorder.none,
          labelText: lebelText,
          suffixIcon: suffixIcon,

          prefixIcon: prefixIcon,
          labelStyle: TextStyle(color: Colors.black54, fontSize: 16),
          hintText: hintText,
          hintStyle: hintStyle ??
              customTextStyle(
                clr: Colors.black38,
                fw: FontWeight.w400,
                size: 14.0,
              ),

          contentPadding:
              padding ?? EdgeInsets.fromLTRB(36.0, 10.0, -20.0, 10.0),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey, width: 0.6),
            borderRadius: BorderRadius.all(Radius.circular(radius ?? 50.0)),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: primaryColor, width: 0.8),
            borderRadius: BorderRadius.all(Radius.circular(radius ?? 50.0)),
          ),
          disabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey, width: 0.8),
            borderRadius: BorderRadius.all(Radius.circular(radius ?? 50.0)),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: primaryColor, width: 0.8),
            borderRadius: BorderRadius.all(Radius.circular(radius ?? 50.0)),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: primaryColor, width: 0.8),
            borderRadius: BorderRadius.all(Radius.circular(radius ?? 50.0)),
          ),
        ),
      ),
    );
  }
}
