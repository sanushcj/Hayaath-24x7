import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'userprofilee.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: double.infinity,
      height: MediaQuery.of(context).size.height / 14,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const <Widget>[UserProfile(), NotiAndFav()],
      ),
    );
  }
}
