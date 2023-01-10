
import 'package:flutter/material.dart';
import '../../../core/Colors/mycolors.dart';

class SmallTitle extends StatelessWidget {
  const SmallTitle({
    required this.title,
    super.key,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:  <Widget>[
          Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          const Text(
            'See All',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: rrPremiumBlue,
                fontSize: 15),
          ),
        ],
      ),
    );
  }
}
