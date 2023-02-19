import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hayaath_24x7/view/booking%20screen/packageselection/dropdownmenuduration.dart';
import 'package:hayaath_24x7/view/booking%20screen/widgets/radiobuttonofpackage.dart';
import '../../../core/Colors/mycolors.dart';

class PackageScreen extends StatelessWidget {
  const PackageScreen({
    super.key,
    required this.dateofPatient,
    required this.timeofPatient,
  });
  final String dateofPatient;
  final String timeofPatient;

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
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Select Duration',
                style: TextStyle(
                    color: rrBlack, fontSize: 20, fontWeight: FontWeight.w500),
              ),
              IconTextDropdown(),
              Text(
                'Select Package',
                style: TextStyle(
                    color: rrBlack, fontSize: 20, fontWeight: FontWeight.w500),
              ),
              RadioButtonAdvancedWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
