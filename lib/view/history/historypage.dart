import 'package:flutter/cupertino.dart';

import '../Widgets/appbar_public.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
 return  Padding(
     padding: const EdgeInsets.all(4.0),
     child: ListView(
        children: <Widget> [PublicAppBar(title: 'History')],
      ),
   );
  }
}
