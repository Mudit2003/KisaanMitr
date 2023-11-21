import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kissanmitr/controller/home_controller.dart';
import 'package:kissanmitr/utils/constant/color_const.dart';
import 'package:kissanmitr/utils/constant/string_const.dart';
import 'package:kissanmitr/utils/global/widget_helper.dart';

class ComplaintPage extends GetView<HomeController> {
  const ComplaintPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.whiteColor,
      body: createUi(),
    );
  }

  Widget createUi() {
    return Stack(
      children: <Widget>[
        Column(
          children: [
            getAppBarWithBackBtn(title: StringConst.appName),
            Flexible(child: noDataFound())
          ],
        ),
      ],
    );
  }
}
