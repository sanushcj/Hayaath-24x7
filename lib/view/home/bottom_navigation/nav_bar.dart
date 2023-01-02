// ignore_for_file: must_be_immutable, non_constant_identifier_names
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:hayaath_24x7/controller/navbar_controller.dart';
import 'package:hayaath_24x7/core/Colors/mycolors.dart';

class MyBottomNavigationBar extends StatelessWidget {
   MyBottomNavigationBar({super.key});


NavBarController NavBarUpdater = Get.put(NavBarController());  

  @override
  Widget build(BuildContext context) {
    double displayWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      bottomNavigationBar: Container(
        margin: EdgeInsets.all(displayWidth * .05),
        height: displayWidth * .155,
        decoration: BoxDecoration(
          color: rrWhite,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(.1),
              blurRadius: 30,
              offset: const Offset(0, 10),
            ),
          ],
          borderRadius: BorderRadius.circular(10),
        ),
        child: ListView.builder(
          itemCount: 4,
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.symmetric(horizontal: displayWidth * .02),
          itemBuilder: (context, index) => InkWell(
            onTap: () {
             
                NavBarUpdater.currentIndex.value = index;
                HapticFeedback.lightImpact();
          
            },
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            child: Stack(
              children: [
                AnimatedContainer(
                  duration: const Duration(seconds: 1),
                  curve: Curves.fastLinearToSlowEaseIn,
                  width: index ==  NavBarUpdater.currentIndex.value
                      ? displayWidth * .32
                      : displayWidth * .18,
                  alignment: Alignment.center,
                  child: AnimatedContainer(
                    duration: const Duration(seconds: 1),
                    curve: Curves.fastLinearToSlowEaseIn,
                    height: index ==  NavBarUpdater.currentIndex.value ? displayWidth * .12 : 0,
                    width: index ==  NavBarUpdater.currentIndex.value ? displayWidth * .32 : 0,
                    decoration: BoxDecoration(
                      color: index ==  NavBarUpdater.currentIndex.value
                          ? Colors.blueAccent.withOpacity(.2)
                          : Colors.transparent,
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ),
                AnimatedContainer(
                  duration: const Duration(seconds: 1),
                  curve: Curves.fastLinearToSlowEaseIn,
                  width: index ==  NavBarUpdater.currentIndex.value
                      ? displayWidth * .31
                      : displayWidth * .18,
                  alignment: Alignment.center,
                  child: Stack(
                    children: [
                      Row(


                        
                        children: [
                          AnimatedContainer(
                            duration: const Duration(seconds: 1),
                            curve: Curves.fastLinearToSlowEaseIn,
                            width:
                                index ==  NavBarUpdater.currentIndex.value ? displayWidth * .13 : 0,
                          ),
                          AnimatedOpacity(
                            opacity: index ==  NavBarUpdater.currentIndex.value ? 1 : 0,
                            duration: const Duration(seconds: 1),
                            curve: Curves.fastLinearToSlowEaseIn,
                            child: Text(
                              index ==  NavBarUpdater.currentIndex.value
                                  ? listOfStrings[index]
                                  : '',
                              style: const TextStyle(
                                color: Colors.blueAccent,
                                fontWeight: FontWeight.w600,
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          AnimatedContainer(
                            duration: const Duration(seconds: 1),
                            curve: Curves.fastLinearToSlowEaseIn,
                            width:
                                index ==  NavBarUpdater.currentIndex.value ? displayWidth * .03 : 20,
                          ),
                          Icon(
                            listOfIcons[index],
                            size: displayWidth * .076,
                            color: index ==  NavBarUpdater.currentIndex.value
                                ? Colors.blueAccent
                                : Colors.black26,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  List<IconData> listOfIcons = [
    Icons.home_rounded,
    Icons.note_add_rounded,
    Icons.article_rounded,
    Icons.person_rounded,
  ];

  List<String> IconName = [
    'Home',
    'Appointment',
    'Article',
    'Profie',
  ];

  final List<StatelessWidget> navbarpages = <StatelessWidget>[
  
  ];
}