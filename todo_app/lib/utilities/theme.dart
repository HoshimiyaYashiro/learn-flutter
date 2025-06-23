//Colors
import 'package:flutter/material.dart';

Color blackColor = const Color(0xff0c120c);
Color blueColor = const Color(0xff4285F4);
Color whiteColor = const Color(0xffFDFDFF);
Color iconColor = const Color(0xff565656);
Color outlineColor = const Color(0xffD6D6D6);
Color descriptionColor = const Color(0xff565656);

double verticalPadding(BuildContext context) {
  return MediaQuery.of(context).size.height / 20;
}

double horizontalPadding(BuildContext context) {
  return MediaQuery.of(context).size.width / 20;
}

EdgeInsets textFieldPadding(BuildContext context) {
  return EdgeInsets.symmetric(
      horizontal: MediaQuery.of(context).size.width * 0.1,
      vertical: MediaQuery.of(context).size.height * 0.025);
}