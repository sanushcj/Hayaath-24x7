import 'package:flutter/material.dart';
import '../../../core/Colors/mycolors.dart';
import '../../../core/constants/constants.dart';
import '../widgets/listtile_appointment.dart';

class CancelledTab extends StatelessWidget {
  const CancelledTab({super.key});

@override
  Widget build(BuildContext context) {
    docName.shuffle();
    docimg.shuffle();
    return Column(
      children: [
        rrheight10,
        Expanded(
          child: ListView.separated(
            shrinkWrap: true,
              itemBuilder: (context, index) => AppointmentTile(docName: docName[index], img: docimg[index], colors: rrred, status: 'Cancelled',),
              separatorBuilder: (context, index) => rrheight20,
              itemCount: docName.length),
        ),
      ],
    );
  }
}

