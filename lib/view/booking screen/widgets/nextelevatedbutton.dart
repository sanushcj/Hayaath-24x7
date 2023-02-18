
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hayaath_24x7/controller/bookingscreen/bookingscreencontroller.dart';
import '../../../core/Colors/mycolors.dart';
import '../packageselection/packageselect.dart';

class NextElevatedButton extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BookingScreenController>(
      builder: (BookingScreenController controller) {
        return SizedBox(
            width: double.infinity,
            height: 55,
            child: ElevatedButton(
              onPressed: () {
                controller.boollist.contains(true)
                    ?
                     Get.to(PackageScreen(
                      dateofPatient: controller.today.value.toString(),timeofPatient: BookingScreenController.availabilityTime[controller.thelastindex] ,
                      ))
                    : Get.snackbar(
                        'Select your date', 'Select your day and time');
              },
              style: ButtonStyle(
                  elevation: MaterialStatePropertyAll(0),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  backgroundColor: controller.boollist.contains(true)
                      ? MaterialStatePropertyAll(rrPremiumBlue)
                      : MaterialStatePropertyAll(
                          rrPremiumBlue.withOpacity(0.5))),
              child: Text('Next',
                  style: TextStyle(
                      color: controller.boollist.contains(true)
                          ? rrWhite
                          : rrWhite.withOpacity(0.4),
                      fontSize: 20)),
            ));
      },
    );
  }
}
