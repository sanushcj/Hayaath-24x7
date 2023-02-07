import 'package:flutter/cupertino.dart';

import '../../core/constants/constants.dart';
import '../Widgets/title_public.dart';
import 'widgets/appbar_home.dart';
import 'widgets/carosal.dart';
import 'widgets/row__doctorspeciality.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
      //  height: MediaQuery.of(context).size.height,
      //  width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
              const PublicSmallTitle(
                title: 'Doctor Speciality',
              ),
               const RowIconDoctorSpeciality()
            ],
          ),
        ),
      ),
    );
  }
}
