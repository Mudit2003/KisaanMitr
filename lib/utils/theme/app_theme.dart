import 'package:flutter/material.dart';
import 'package:rallis/utils/constant/color_const.dart';
import 'package:rallis/utils/theme/text_style.dart';

ThemeData lightThemeData(BuildContext context) {
  return ThemeData(
    primaryColor: ColorConst.appColor,
    indicatorColor: Colors.white,
    splashColor: Colors.white24,
    splashFactory: InkRipple.splashFactory,
    fontFamily: "poppins",
    shadowColor: Theme.of(context).disabledColor,
    dividerColor: const Color.fromARGB(255, 112, 112, 112),
    canvasColor: Colors.white,
    scaffoldBackgroundColor: const Color.fromARGB(255, 245, 245, 245),
    visualDensity: VisualDensity.adaptivePlatformDensity,
    tabBarTheme: const TabBarTheme(
      unselectedLabelStyle: AppTextStyle.normalGrey12,
      labelColor: Colors.black,
      unselectedLabelColor: Colors.grey,
      indicatorSize: TabBarIndicatorSize.tab,
      labelStyle: AppTextStyle.normalBlack12,
    ), colorScheme: const ColorScheme.light(
        primary: ColorConst.appColor, secondary: ColorConst.appColor).copyWith(background: const Color.fromARGB(255, 255, 255, 255)).copyWith(error: ColorConst.redColor),
  );
}

ThemeData darkThemeData(BuildContext context) {
  return ThemeData(
    scaffoldBackgroundColor: Colors.grey.shade900,
    primaryColor: ColorConst.appColor,
    indicatorColor: Colors.white,
    splashColor: Colors.white24,
    splashFactory: InkRipple.splashFactory,
    fontFamily: "poppins",
    shadowColor: Theme.of(context).disabledColor,
    dividerColor: const Color(0xff707070),
    canvasColor: Colors.white,
    visualDensity: VisualDensity.adaptivePlatformDensity, colorScheme: const ColorScheme.dark().copyWith(background: Colors.black).copyWith(error: ColorConst.redColor),
  );
}