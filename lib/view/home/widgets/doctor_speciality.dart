// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/Colors/mycolors.dart';

class IconDoctorSpeciality extends StatelessWidget {
  IconDoctorSpeciality({
    required this.title,
    this.nextpage,
    required this.docIcon,
    super.key,
  });

  String title;
  IconData docIcon;
  StatelessWidget? nextpage;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: gotoPage,
      child: SizedBox(
        height: 125,
        width: 90,
        child: Column(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.all(10),
              height: 70,
              width: 70,
              child: Stack(
                alignment: AlignmentDirectional.center,
                children: <Widget>[
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: rrPremiumBlue.withOpacity(0.2),
                  ),
                  Align(
                      child: Icon(
                    docIcon,
                    size: 25,
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

  Future<void> gotoPage() async {
    await Get.to(nextpage);
  }
}
