import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hayaath_24x7/view/home/widgets/userprofile.dart';

import '../../core/Colors/mycolors.dart';
import '../../core/constants/constants.dart';

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
          children: const <Widget>[
            UserProfile(),
          ],
        ),
      ),
    );
  }
}



