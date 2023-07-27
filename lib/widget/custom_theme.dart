import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData customThemeData() {
  return ThemeData(
    primarySwatch: Colors.blueGrey,
    appBarTheme: customAppbarTheme(),
    inputDecorationTheme: CustomInputDecorationTheme(),
  );
}

InputDecorationTheme CustomInputDecorationTheme() {
  OutlineInputBorder outlineInputBorder = OutlineInputBorder(
    gapPadding: 10.0,
    borderRadius: BorderRadius.circular(50),
    borderSide:
        BorderSide(color: Colors.grey, width: 1.0, style: BorderStyle.solid),
  );

  return InputDecorationTheme(
    floatingLabelBehavior: FloatingLabelBehavior.always,
    contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 40.0),
    border: outlineInputBorder,
    focusedBorder: outlineInputBorder,
    enabledBorder: outlineInputBorder,
  );
}

customTextStyle(
    {double? size,
    Color? clr,
    FontWeight? fw,
    FontStyle? fStyle,
    double? lSpace,
    double? height,
    TextDecoration? decoration}) {
  return GoogleFonts.roboto(
    fontSize: size,
    color: clr,
    fontWeight: fw,
    letterSpacing: lSpace,
    fontStyle: fStyle,
    height: height,
    decoration: decoration,
  );
}

AppBarTheme customAppbarTheme() {
  return const AppBarTheme(
      backgroundColor: Colors.white,
      elevation: 0,
      centerTitle: true,
      iconTheme: IconThemeData(color: Colors.grey),
      titleTextStyle: TextStyle(
          color: Colors.grey, fontSize: 20, fontWeight: FontWeight.bold));
}
