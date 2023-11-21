import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kissanmitr/utils/constant/color_const.dart';
import 'package:kissanmitr/utils/constant/routers_const.dart';
import 'package:kissanmitr/utils/constant/routes_page.dart';
import 'package:kissanmitr/utils/constant/string_const.dart';
import 'package:kissanmitr/utils/global/initial_binding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: StringConst.appName,
      debugShowCheckedModeBanner: false,
      defaultTransition: Transition.rightToLeft,
      initialBinding: InitialBinding(),
      theme: ThemeData(
        primarySwatch: ColorConst.color,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: RoutersConst.initialRoute,
      getPages: routesPage(),
    );
  }
}
