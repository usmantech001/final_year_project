import 'package:final_year/features/api/apiClient.dart';
import 'package:final_year/features/controllers/auth.dart';
import 'package:final_year/features/repo/auth.dart';
import 'package:final_year/utils/constants/url.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> initDep() async {
  final sharedPreferences = await SharedPreferences.getInstance();
  Get.lazyPut(() => sharedPreferences);
  Get.lazyPut(() => ApiClient(appbaseUrl: UrlConstants.BASEURL));
  Get.lazyPut(() => AuthController(authRepo: Get.find()));
  Get.lazyPut(() => AuthRepo(apiClient: Get.find(), sharedPreferences: sharedPreferences));
}