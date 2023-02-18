

// int indexofPatient=0;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../../controller/bookingscreen/bookingscreencontroller.dart';
import '../../../core/Colors/mycolors.dart';
import '../widgets/hourbox.dart';
import '../widgets/nextelevatedbutton.dart';

BookingScreenController bookingScreenController = Get.find();

// ignore: must_be_immutable
class BookingAppointmentScreen extends StatelessWidget {
  BookingAppointmentScreen({super.key});
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Select Date',
                style: TextStyle(
                    color: rrBlack, fontSize: 20, fontWeight: FontWeight.w500),
              ),
              Obx(
                () => Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: rrPremiumBlue.withOpacity(0.15),
                  ),
                  child: TableCalendar(
                      availableGestures: AvailableGestures.all,
                      selectedDayPredicate: (day) =>
                          isSameDay(day, bookingScreenController.today.value),
                      onDaySelected: bookingScreenController. ondaySelected,
                      rowHeight: 50,
                      focusedDay: bookingScreenController.today.value,
                      firstDay: DateTime.utc(bookingScreenController.today.value.year),
                      lastDay: DateTime(2025)),
                ),
              ),
              Text(
                'Select Hour',
                style: TextStyle(
                    color: rrBlack, fontSize: 20, fontWeight: FontWeight.w500),
              ),
              Container(
                height: MediaQuery.of(context).size.height / 3.5,
                child: Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children: List.generate(
                      BookingScreenController.availabilityTime.length,
                      (index) => HourContainerWidget(
                            time:
                                BookingScreenController.availabilityTime[index],
                            indexofthewidget: index,
                          )),
                ),
              ),
           NextElevatedButton(),
            ],
          ),
        ),
      ),
    );
  }
}
