import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../core/Colors/mycolors.dart';
import '../../../core/constants/constants.dart';
import '../home_page.dart';

import 'doctor_speciality.dart';

class RowIconDoctorSpeciality extends StatelessWidget {
  const RowIconDoctorSpeciality({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // color: rrGrey,
      height: MediaQuery.of(context).size.height/3.5,
      width: double.infinity,
      child: Column(
        children: <Widget> [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:  <Widget> [
              IconDoctorSpeciality(docIcon: CupertinoIcons.group_solid,title: 'General',nextpage: const HomePage()),
               IconDoctorSpeciality(docIcon: FontAwesomeIcons.tooth,title: 'Dental',nextpage: const HomePage()),
                IconDoctorSpeciality(docIcon: FontAwesomeIcons.solidEye,title: 'Ophthal',nextpage: const HomePage()),
               IconDoctorSpeciality(docIcon: FontAwesomeIcons.nutritionix,title: 'Nutrition',nextpage: const HomePage()),
            ],
          ),
          rrheight05,
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children:  <Widget> [
              IconDoctorSpeciality(docIcon: FontAwesomeIcons.brain,title: 'Neurology',
              // nextpage: const HomePage()
              ),
               IconDoctorSpeciality(docIcon: FontAwesomeIcons.children,title: 'Pediatric',
              //  nextpage: const HomePage()
               ),
                IconDoctorSpeciality(docIcon: FontAwesomeIcons.xRay,title: 'Radiology',
                // nextpage: const HomePage()
                ),
               IconDoctorSpeciality(docIcon: FontAwesomeIcons.heartPulse,title: 'Cardiologist',
              //  nextpage: const HomePage()
               ),
            ],
          )
        ],
      ),
    );
  }
}
