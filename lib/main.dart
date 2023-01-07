import 'package:flutter/material.dart';
import 'package:hayaath_24x7/view/bottom_navigation/nav_bar.dart';
void main(List<String> args) async {
   runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(debugShowCheckedModeBanner: false, home: MybottomNavBar(),);
  }
}
