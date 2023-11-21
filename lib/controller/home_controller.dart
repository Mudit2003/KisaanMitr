import 'package:get/get.dart';
import 'package:kissanmitr/repositories/repo/home_repo.dart';

class HomeController extends GetxController {
  static HomeController get to => Get.find();
  final HomeRepo _homeRepo;

  HomeController(this._homeRepo);
// final allCityRespo = (ApiResponse<UpdateProfileReq>()).obs;

// allCity() async {
//   allCityRespo.value = ApiResponse.loading();
//   if (employeeId.isEmpty) employeeId = await getCustomerId();
//   final data = await _homeRepo.allCity(employeeId);
//   allCityRespo.value = data;
//   // print("LoginRespo : ${callLoginRespo}");
//   return data;
// }
}
