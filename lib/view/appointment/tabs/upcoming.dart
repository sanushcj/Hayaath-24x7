import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import '../../../core/Colors/mycolors.dart';

class UpcomingTab extends StatelessWidget {
  const UpcomingTab({super.key});

  @override
  Widget build(BuildContext context) {
      const  int data = 0;
    return data == 0
        ? Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>  [
              Lottie.asset(
                'lib/assets/animations/noappointment.json',
                fit: BoxFit.cover,
                height: 300,
              ),
              const Text(
                'You dont have the appointment yet',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
              ),
              const Text(
                'You dont have the appointment sheduled at the moment',
                style: TextStyle(
                    fontWeight: FontWeight.w200, fontSize: 12, color: rrGrey),
              )
            ],
          )
        : const Center(
            child: Text('data'),
          );
  }
}
