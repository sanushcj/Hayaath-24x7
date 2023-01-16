import 'dart:math';

import 'package:flutter/material.dart';

import '../../../core/Colors/mycolors.dart';

class TrendingSlideBox extends StatelessWidget {
  const TrendingSlideBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
              color: Colors.primaries[Random().nextInt(Colors.primaries.length)]
                  [500],
              borderRadius: BorderRadius.circular(10)),
          width: MediaQuery.of(context).size.width / 1.2,
          height: MediaQuery.of(context).size.height / 5,
        ),
        SizedBox(
            width: MediaQuery.of(context).size.height / 2.5,
            child: const Text(
              'Niklaus Mikaelson is the original vampire-werewolf hybrid. He is the biological son of Ansel Aumont and Esther Mikaelson, being born though their affair with one another, and is the stepson of Esther',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
              overflow: TextOverflow.ellipsis,
            )),
        TabBar(
          
            isScrollable: true,
            indicator: BoxDecoration(
                color: rrBlack, borderRadius: BorderRadius.circular(30)),
            labelColor: rrBlack,
            labelStyle: const TextStyle(
                color: rrGrey, fontSize: 17, fontWeight: FontWeight.bold),
            unselectedLabelColor: rrBlack,
            tabs: const <Widget>[
              Tab(
                text: 'Medical',
              ),
              Tab(
                text: 'Corona',
              ),
            ]),
      ],
    );
  }
}
