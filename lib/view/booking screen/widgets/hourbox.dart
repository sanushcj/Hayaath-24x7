import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:get/get.dart';


import '../../../core/Colors/mycolors.dart';

class HourContainerWidget extends StatelessWidget {
  HourContainerWidget({
    super.key,
    required this.time,
  });

  final String time;
  RxBool taped = false.obs;
  String? value;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(25),
      autofocus: false,
      onTap: () {
        taped.value == false ? taped.value = true : taped.value = false;
        value = time;
      },
      child: Obx(
        () => Container(
            alignment: Alignment.center,
            height: 50,
            width: 125,
            decoration: taped.value == true
                ? BoxDecoration(
                    color: rrPremiumBlue,
                    borderRadius: BorderRadius.circular(25))
                : BoxDecoration(
                    border: Border.all(color: rrPremiumBlue, width: 4),
                    borderRadius: BorderRadius.circular(25)),
            child: Text(time,
                style: TextStyle(
                    color: taped.value == true ? rrWhite : rrPremiumBlue,fontSize: 20))),
      ),
    );
  }
}
