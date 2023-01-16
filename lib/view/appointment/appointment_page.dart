import 'package:flutter/cupertino.dart';

import '../Widgets/appbar_public.dart';

class AppoinmentPage extends StatelessWidget {
  const AppoinmentPage({super.key});

  @override
  Widget build(BuildContext context) {
   return  Padding(
    padding: const EdgeInsets.only(left: 3,right: 2),
     child: ListView(
        children: <Widget> [PublicAppBar(title: 'Appointment'),
        ],
      ),
   );
  }
}
