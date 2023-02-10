import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Widgets/appbar/appbar_public.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: PreferredSize(
          preferredSize: Size.fromHeight(
            MediaQuery.of(context).size.height / 11,
          ),
          child: PublicAppBar(title: 'History')),
      body: Padding(
        padding: const EdgeInsets.only(left: 3, right: 2),
        child: ListView(
          children: <Widget>[            
          ],
        ),
      ),
    );
  }
}
