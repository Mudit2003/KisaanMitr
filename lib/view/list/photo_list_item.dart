import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kissanmitr/repositories/common/category_bean.dart';
import 'package:kissanmitr/utils/constant/color_const.dart';
import 'package:kissanmitr/utils/constant/dummy_data.dart';
import 'package:kissanmitr/utils/constant/routers_const.dart';
import 'package:kissanmitr/utils/global/widget_helper.dart';

class PhotoListItem extends StatelessWidget {
  PhotoListItem({Key? key, this.title}) : super(key: key);

  String? title;
  // final HomeController _homeController = Get.find();
  final ScrollController _scrollController = ScrollController();
  List<CategoryBean> data = [];

  @override
  Widget build(BuildContext context) {
    data = categoryBean();
    return getList();
  }

  Widget getList() {
    return getStaggered(
        height: 280,
        crossAxisCount: 2,
        itemCount: data.length,
        controller: _scrollController,
        widget: (context, index) {
          var item = data[index];
          return Container(
            margin: const EdgeInsets.all(2),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Stack(
                children: [
                  getCacheImage(url: item.url.toString()),
                  Positioned.fill(
                      child: Material(
                          color: Colors.transparent,
                          child: InkWell(
                              splashColor: ColorConst.splashColor,
                              onTap: () {
                                Get.toNamed(RoutersConst.productDetails,
                                    arguments: [title, item]);
                              }))),
                ],
              ),
            ),
          );
        });
  }
}
