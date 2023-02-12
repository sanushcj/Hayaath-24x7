
import 'package:flutter/material.dart';
import '../../../core/Colors/mycolors.dart';

class NextElevatedButton extends StatelessWidget {
  const NextElevatedButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 55,
      child: ElevatedButton(
          style: ButtonStyle(
              elevation: MaterialStatePropertyAll(0),
              shape:
                  MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              )),
              backgroundColor:
                  MaterialStatePropertyAll(rrPremiumBlue)),
          onPressed: () {},
          child: Text('Next',
              style: TextStyle(color: rrWhite, fontSize: 20))),
    );
  }
}
