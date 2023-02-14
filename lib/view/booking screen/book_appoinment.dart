import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hayaath_24x7/core/Colors/mycolors.dart';
import 'package:hayaath_24x7/view/booking%20screen/widgets/timecontainerwidget.dart';
import 'package:table_calendar/table_calendar.dart';

import 'widgets/nextelevatedbutton.dart';

// ignore: must_be_immutable
class BookingAppointmentScreen extends StatelessWidget {
  BookingAppointmentScreen({super.key});

  DateTime today = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Booking Screen',
          style: TextStyle(color: rrBlack),
        ),
        elevation: 0,
        centerTitle: true,
        backgroundColor: rrWhite,
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(
              CupertinoIcons.back,
              color: rrBlack,
            )),
        primary: true,
      ),
      body: SizedBox(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Select Date',
                style: TextStyle(
                    color: rrBlack, fontSize: 20, fontWeight: FontWeight.w500),
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: rrGrey,
                ),
                child: TableCalendar(
                    rowHeight: 50,
                    focusedDay: today,
                    firstDay: DateTime.utc(today.year),
                    lastDay: DateTime(2025)),
              ),
              Text(
                'Select Hour',
                style: TextStyle(
                    color: rrBlack, fontSize: 20, fontWeight: FontWeight.w500),
              ),
             TimeContainer(),
            //  NextElevatedButton(),
            ],
          ),
        ),
      ),
    );
  }
}
