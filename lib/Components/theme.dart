import 'package:flutter/material.dart';
import 'package:manasa/Components/Constants.dart';

ThemeData theme() {
  return ThemeData(
    appBarTheme: appBarTheme(),
    fontFamily: 'IBMPlexSansArabic',
    scaffoldBackgroundColor: Colors.white,
    textTheme: textTheme(),
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
    useMaterial3: true,
    visualDensity: VisualDensity.adaptivePlatformDensity,

  );
}

AppBarTheme appBarTheme() {
  return AppBarTheme(
      color: Colors.white,
      elevation: 0,
      iconTheme: IconThemeData(color: Colors.black),
      titleTextStyle: TextStyle(
          color: Colors.grey,
          fontSize: (20),
          fontWeight: FontWeight.bold));
}
TextTheme textTheme() {
  return TextTheme(
    bodyMedium: TextStyle(color: ktextColor),
    bodyLarge: TextStyle(color: ktextColor),
  );
}

InputDecoration phoneNumberForm() {
  return InputDecoration(
      floatingLabelBehavior: FloatingLabelBehavior.always,
      hintText: "من فضلك ضع رقم هاتفك"  , hintTextDirection: TextDirection.rtl ,
      iconColor: Colors.black,
      contentPadding: EdgeInsets.symmetric(
        horizontal: 30,
        vertical: 15,
      ),
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: ktextColor),
          gapPadding: 10),
      enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: ktextColor),
          gapPadding: 10),
      );
}

InputDecoration passwordForm() {
  return InputDecoration(

      floatingLabelBehavior: FloatingLabelBehavior.always,
      hintText: "من فضلك ضع كلمه السر ",hintTextDirection: TextDirection.rtl,
      iconColor: Colors.black,
      contentPadding: EdgeInsets.symmetric(
        horizontal: 40,
        vertical: 15,
      ),
      prefixIcon: Icon(Icons.remove_red_eye_outlined),
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: ktextColor),
          gapPadding: 10),
      enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: ktextColor),
          gapPadding: 10),
      );
}
InputDecoration confirmPassForm() {
  return InputDecoration(

    floatingLabelBehavior: FloatingLabelBehavior.always,
    hintText: "من فضلك ضع كلمه السر مره اخري ",hintTextDirection: TextDirection.rtl,
    iconColor: Colors.black,
    contentPadding: EdgeInsets.symmetric(
      horizontal: 40,
      vertical: 15,
    ),
    prefixIcon: Icon(Icons.remove_red_eye_outlined),
    focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(color: ktextColor),
        gapPadding: 10),
    enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(color: ktextColor),
        gapPadding: 10),
  );
}

