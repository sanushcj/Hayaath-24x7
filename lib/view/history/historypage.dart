import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Widgets/appbar_public.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 3, right: 2),
      child: ListView(
        children: <Widget>[
          PublicAppBar(title: 'History'),
          
        ],
      ),
    );
  }
}
