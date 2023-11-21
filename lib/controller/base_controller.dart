import 'package:get/get.dart';
import 'package:rallis/repositories/repo/base_repo.dart';
import 'package:rallis/utils/shared_preference/sp_manager.dart';

class BaseController extends GetxController {
  static BaseController get to => Get.find();
  final BaseRepo _baseRepo;

  BaseController(this._baseRepo);

  String employeeId = '';

  // final allCityRespo = (ApiResponse<UpdateProfileReq>()).obs;


  Future<String> getCustomerId() async {
    if (employeeId.isEmpty) employeeId = await SPManager.getCustomerId();
    return employeeId;
  }
}
