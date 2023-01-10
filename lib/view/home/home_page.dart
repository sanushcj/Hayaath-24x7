import 'package:flutter/cupertino.dart';
import '../../core/constants/constants.dart';
import 'widgets/carosal.dart';
import 'widgets/doctor_speciality.dart';
import 'widgets/homeapp_bar.dart.dart';
import 'widgets/small_title.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: Column(
          children: <Widget>[
            const HomeAppBar(),
            rrheight20,
            const SizedBox(
                height: 50,
                width: double.infinity,
                child: CupertinoSearchTextField(
                  suffixIcon: Icon(CupertinoIcons.sort_up),
                )),
            const CurosalSliderHome(),
            const SmallTitle(
              title: 'Doctor Speciality',
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:  <Widget> [
                DoctorSpeciality(docIcon: CupertinoIcons.group_solid,title: 'General',nextpage: HomePage()),
              ],
            )
          ],
        ),
      ),
    );
  }
}


