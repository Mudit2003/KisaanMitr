import 'package:get/get.dart';
import 'package:kissanmitr/repositories/repo/login_repo.dart';

class LoginController extends GetxController {
  static LoginController get to => Get.find();
  final LoginRepo _loginRepo;

  LoginController(this._loginRepo);
}
