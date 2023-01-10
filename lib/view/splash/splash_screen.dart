import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controller/splash_controller.dart';
import '../../core/Colors/mycolors.dart';
import '../../core/constants/constants.dart';

// import 'Animation/loading.dart';
class MySplashScreen extends StatelessWidget {
   MySplashScreen({super.key});

SplashScreenController splashController = Get.put(SplashScreenController());

  @override
  Widget build(BuildContext context) {
    // ignore: use_colored_box
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: rrWhite,
      child: Stack(
        children: <Widget>[
          rrheight20,
          const Align(
            child: SizedBox(
              height: 300,
              width: 300,
              child: Image(
                  image: AssetImage('lib/assets/img/hayaath logo blue.png')),
            ),
          ),
          rrheight50,

          // const Align(
          //     alignment: Alignment.bottomCenter,
          //     child:
          //         SizedBox(height: 100, width: 100, child: LoadingAnimation()))
        ],
      ),
    );
  }

  
}
