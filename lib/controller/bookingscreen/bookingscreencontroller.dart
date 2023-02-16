import 'dart:developer';

import 'package:get/get.dart';

class BookingScreenController extends GetxController {
  List<bool> boollist = List.generate(12, (index) => false).obs;

  timeSelect(int indexofthewidget) {
    log(' $indexofthewidget');
    for (var i = 0; i < boollist.length; i++) {
      if (i == indexofthewidget) {
        log('ifcase worked $i');
        boollist[i] == false ? boollist[i] =true : boollist[i] =false;
      } else {
        log('ELSEcase worked $i');
        boollist[i] = false;
      }
      //   boollist[i] == false;
      // }
    }
    update();
  }
}
