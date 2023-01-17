import 'package:flutter/material.dart';
import '../../core/Colors/mycolors.dart';

class PublicSmallTitle extends StatelessWidget {
  const PublicSmallTitle({
    required this.title,
    super.key,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 8),
      child: SizedBox(
        width: double.infinity,
        height: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
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
      ),
    );
  }
}
