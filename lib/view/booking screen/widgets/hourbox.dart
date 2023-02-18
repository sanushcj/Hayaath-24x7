import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controller/bookingscreen/bookingscreencontroller.dart';
import '../../../core/Colors/mycolors.dart';

// ignore: must_be_immutable
class HourContainerWidget extends StatelessWidget {
  HourContainerWidget({
    super.key,
    required this.time,
    required this.indexofthewidget,
  });
  final int indexofthewidget;
  BookingScreenController controller = Get.put(BookingScreenController());
  final String time;
  // String?;
  @override
  Widget build(BuildContext context) {
    return GetBuilder<BookingScreenController>(
        builder: (BookingScreenController controller1) {
      return InkWell(
        borderRadius: BorderRadius.circular(25),
        // autofocus: true,
        onTap: () {
 controller1.timeSelect(indexofthewidget);
          },
        child: Container(
          alignment: Alignment.center,
          height: 50,
          width: 120,
          decoration: controller1.boollist[indexofthewidget] == true
              ? BoxDecoration(
                  color: rrPremiumBlue, borderRadius: BorderRadius.circular(25))
              : BoxDecoration(
                  border: Border.all(color: rrPremiumBlue, width: 4),
                  borderRadius: BorderRadius.circular(25)),
          child: Text(
            time,
            style: TextStyle(
                color: controller1.boollist[indexofthewidget] == true
                    ? rrWhite
                    : rrPremiumBlue,
                fontSize: 20),
          ),
        ),
      );
    });
  }
}
