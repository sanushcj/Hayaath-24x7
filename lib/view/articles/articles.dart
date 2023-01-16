import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../core/Colors/mycolors.dart';
import '../../core/constants/constants.dart';
import '../Widgets/appbar_public.dart';

class ArticlePage extends StatelessWidget {
  const ArticlePage({super.key});

  @override
  Widget build(BuildContext context) {
  return  Padding(
     padding: const EdgeInsets.all(4.0),
     child: ListView(
        children: <Widget> [PublicAppBar(title: 'Article')],
      ),
   );
  }
}
