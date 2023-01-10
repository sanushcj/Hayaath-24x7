// ignore_for_file: must_be_immutable

import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/Colors/mycolors.dart';

class DoctorSpeciality extends StatelessWidget {
   DoctorSpeciality({ required this.title,this.nextpage,required this.docIcon,
    super.key,
  });

String title;
IconData docIcon;
StatelessWidget? nextpage;

  @override
  Widget build(BuildContext context)  {
    return InkWell(
      onTap: gotoPage,
      child: SizedBox(
        height: 90,
        width: 90,
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 70,
              width: 70,
              child: Stack(
                children: <Widget>[
                  CircleAvatar(
                    radius: 40,
                    backgroundColor: rrGrey.withOpacity(0.3),
                  ),
                   Align(
                      child: Icon(
                    docIcon,
                    size: 40,
                    color: rrPremiumBlue,
                  )),
                ],
              ),
            ),
             Text(title),
          ],
        ),
      ),
    );
  }
 Future<void> gotoPage()async {
    await Get.to(nextpage);
  }
}
