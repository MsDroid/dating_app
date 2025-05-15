import 'package:flutter/material.dart';

class AppSize {
  static double width(BuildContext context) => MediaQuery.of(context).size.width;
  static double height(BuildContext context) => MediaQuery.of(context).size.height;

  static const double defaultSpace = 10;

  static const double xs = 8;
  static const double sm = 10;
  static const double md = 12;
  static const double lg = 14;
  static const double xl = 16;

  static const double spaceBtwInputField = 20;
  static const double spaceBtwItems = 20;
  static const double spaceBtwSection = 40;
}
