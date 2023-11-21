import 'package:get/get.dart';
import 'package:kissanmitr/controller/base_controller.dart';
import 'package:kissanmitr/controller/home_controller.dart';
import 'package:kissanmitr/controller/login_controller.dart';
import 'package:kissanmitr/repositories/repo/base_repo.dart';
import 'package:kissanmitr/repositories/repo/home_repo.dart';
import 'package:kissanmitr/repositories/repo/login_repo.dart';

class InitialBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BaseController(BaseRepo()), fenix: true);
    Get.lazyPut(() => LoginController(LoginRepo()), fenix: true);
    Get.lazyPut(() => HomeController(HomeRepo()), fenix: true);
  }
}
