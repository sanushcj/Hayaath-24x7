import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'userprofilee.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const <Widget> [
          UserProfile(),NotiAndFav()
        ],
      ),
    );
  }
}
