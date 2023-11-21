import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kissanmitr/controller/home_controller.dart';
import 'package:kissanmitr/repositories/common/category_bean.dart';
import 'package:kissanmitr/utils/constant/color_const.dart';
import 'package:kissanmitr/utils/constant/dummy_data.dart';
import 'package:kissanmitr/utils/constant/routers_const.dart';
import 'package:kissanmitr/utils/constant/string_const.dart';
import 'package:kissanmitr/utils/global/widget_helper.dart';

class CategoryPage extends GetView<HomeController> {
  const CategoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.whiteColor,
      body: createUi(),
    );
  }

  Widget createUi() {
    return Column(
      children: [
        getAppBarWithBackBtn(title: StringConst.category),
        getCategory()
      ],
    );
  }

  Widget getCategory() {
    return Expanded(
      child: getStaggered(
          height: 180,
          crossAxisCount: 2,
          itemCount: prodCategoryBean().length,
          widget: (context, index) {
            var item = prodCategoryBean()[index];
            return _categoryList(item);
          }),
    );
  }

  Widget _categoryList(CategoryBean item) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
      elevation: 3,
      child: InkWell(
        onTap: () {
          Get.toNamed(RoutersConst.itemList);
        },
        child: Stack(
          children: <Widget>[
            getCacheImage(url: item.url.toString(), height: 180),
            const SizedBox(height: 5),
            Container(color: Colors.black38),
            Container(
                alignment: Alignment.bottomCenter,
                padding: const EdgeInsets.all(8),
                child: getTxtWhiteColor(
                    msg: "${item.name}",
                    fontSize: 16,
                    fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}
