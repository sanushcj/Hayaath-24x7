import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../core/Colors/mycolors.dart';
import '../../core/constants/constants.dart';
import '../Widgets/appbar_public.dart';
import '../Widgets/title_public.dart';

class ArticlePage extends StatelessWidget {
  const ArticlePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 3, right: 2),
      child: Column(
        children: <Widget>[
          PublicAppBar(title: 'Article'),
          const PublicSmallTitle(title: 'Trendings'),
          SizedBox(
            width: double.infinity,
            height: MediaQuery.of(context).size.height / 4.5,
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) => Container(
                      decoration: BoxDecoration(
                          color: Colors.primaries[
                              Random().nextInt(Colors.primaries.length)][500],
                          borderRadius: BorderRadius.circular(10)),
                      width: 350,
                    ),
                separatorBuilder: (BuildContext context, int index) =>
                    rrWidth15,
                itemCount: 10),
          )
        ],
      ),
    );
  }
}
