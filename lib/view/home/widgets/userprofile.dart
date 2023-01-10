import 'package:flutter/material.dart';

import '../../../core/Colors/mycolors.dart';
import '../../../core/constants/constants.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        const CircleAvatar(
          backgroundImage: NetworkImage(
            'https://drive.google.com/uc?export=view&id=1mz-4YQCtVgBbzcDTB8IeM4IG1Q7DdKv0',
          ),
          backgroundColor: rrPremiumBlue,
          radius: 25,
        ),
        rrWidth10,
        Column(
          children: const <Widget>[
            Text(
              'Good Morning 👋',
              style: TextStyle(color: rrGrey, fontSize: 10),
            ),
            Text(
              'Sanush CJ',
              style: TextStyle(
                  color: rrBlack, fontSize: 16, fontWeight: FontWeight.bold),
            )
          ],
        )
      ],
    );
  }
}
