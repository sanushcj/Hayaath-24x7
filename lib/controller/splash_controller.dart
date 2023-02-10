import 'package:get/get.dart';
import '../view/bottom_navigation/nav_bar.dart';
import 'HealthAPI/Trending.dart';

class SplashScreenController  extends GetxController{
 
 @override
  void onInit() {
    gotToHome();
    super.onInit();
  }
Future<void> gotToHome() async {
    await Future<dynamic>.delayed(
      const Duration(seconds: 3),
    );
    Get.to(
      () => const MybottomNavBar(),
    );


  }
}
