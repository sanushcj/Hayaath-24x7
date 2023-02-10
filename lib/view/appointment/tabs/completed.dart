import 'package:flutter/material.dart';
import 'package:hayaath_24x7/core/Colors/mycolors.dart';
import 'package:hayaath_24x7/core/constants/constants.dart';
import 'package:hayaath_24x7/view/appointment/widgets/listtile_appointment.dart';

class CompletedTab extends StatelessWidget {
   CompletedTab({super.key});



  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        rrheight10,
        Expanded(
          child: ListView.separated(
            shrinkWrap: true,
              itemBuilder: (context, index) => AppointmentTile(docName: docName[index], img: docimg[index], colors: rrgreen, status: 'Completed',),
              separatorBuilder: (context, index) => rrheight20,
              itemCount: docName.length),
        ),
      ],
    );
  }
}
