import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';


class UpcomingTab extends StatelessWidget {
   UpcomingTab({super.key});
var _data =null;
  @override
  Widget build(BuildContext context) {

    return 
    _data == null ? Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Lottie.asset('lib/assets/animations/noappointment.json',
        fit: BoxFit.cover,height: 300,
        ),
        Text('You dont have the appointment yet',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20),)
      ],
    ) : Center(child: Text('data'),);
  }
}