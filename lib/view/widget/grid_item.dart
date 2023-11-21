import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kissanmitr/controller/home_controller.dart';
import 'package:kissanmitr/repositories/common/category_bean.dart';
import 'package:kissanmitr/utils/constant/color_const.dart';
import 'package:kissanmitr/utils/constant/dummy_data.dart';
import 'package:kissanmitr/utils/constant/routers_const.dart';
import 'package:kissanmitr/utils/global/widget_helper.dart';

class GridItem extends StatelessWidget {
  String title = '';

  GridItem({Key? key, required this.title}) : super(key: key);

  final HomeController _homeController = Get.find();
  List<CategoryBean>? data = [];

  @override
  Widget build(BuildContext context) {
    data = prodCategoryBean();
    return Column(
      children: [
        getHeading(
            title: title,
            onClick: (String title) =>
                Get.toNamed(RoutersConst.category, arguments: [title])),
        getList()
      ],
    );
  }

  Widget getList() {
    return getStaggered(
        height: 150,
        crossAxisCount: 2,
        itemCount: 6,
        widget: (context, index) {
          CategoryBean item = data![index];
          return InkWell(
            onTap: () => Get.toNamed(RoutersConst.productDetails,
                arguments: [title, item]),
            splashColor: ColorConst.splashColor,
            child: Container(
                margin: const EdgeInsets.all(2),
                height: 50,
                child: getCacheImage(url: item.url, height: 50)),
          );
        });
  }
}
