import 'dart:developer';

import 'package:get/get.dart';

class BookingScreenController extends GetxController {
  static List<String> availabilityTime = <String>[
    '10 : 30 am',
    '11 : 00 am',
    '12 : 30 pm',
    '1 : 30 pm',
    '2 : 00 pm',
    '2 : 30 pm',
  ];

  List<bool> boollist =
      List.generate(availabilityTime.length, (index) => false).obs;
  var thelastindex;
  timeSelect(int indexofthewidget) {
    log(' $indexofthewidget');
    for (var i = 0; i < boollist.length; i++) {
      if (i == indexofthewidget) {
        boollist[i] == false ? boollist[i] = true : boollist[i] = false;
        this.thelastindex = indexofthewidget;
      } else {
        boollist[i] = false;
      }
    }
    update();
  }

  Rx<DateTime> today = DateTime.now().obs;

  void ondaySelected(DateTime day, DateTime focusedDay) {
    today.value = day;
  }



}
