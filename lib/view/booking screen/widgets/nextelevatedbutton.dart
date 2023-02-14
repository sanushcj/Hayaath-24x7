// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:hayaath_24x7/controller/bookingscreen/bookingscreencontroller.dart';
// import 'package:hayaath_24x7/view/packageselection/packageselect.dart';
// import '../../../core/Colors/mycolors.dart';

// BookingScreenController controller = Get.find();

// class NextElevatedButton extends StatelessWidget {
//   NextElevatedButton({
//     super.key,
//   });
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       width: double.infinity,
//       height: 55,
//       child: Obx(
//         () => ElevatedButton(
//           onPressed: () {
//            controller. tap == true
//                 ? Get.to(PackageScreen())
//                 : Get.snackbar('Select your date', 'Select your day and time');
//           },
//           style: ButtonStyle(
//               elevation: MaterialStatePropertyAll(0),
//               shape: MaterialStateProperty.all<RoundedRectangleBorder>(
//                 RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(25),
//                 ),
//               ),
//               backgroundColor: controller.tap == true
//                   ? MaterialStatePropertyAll(rrPremiumBlue)
//                   : MaterialStatePropertyAll(rrPremiumBlue.withOpacity(0.5))),
//           child: Text('Next',
//               style: TextStyle(
//                   color:controller. tap == true ? rrWhite : rrWhite.withOpacity(0.4),
//                   fontSize: 20)),
//         ),
//       ),
//     );
//   }
// }
