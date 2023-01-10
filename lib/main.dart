import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'view/splash/splash_screen.dart';

void main(List<String> args) async {
   WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
 
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return   GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: MySplashScreen(),
    );
  }
}
