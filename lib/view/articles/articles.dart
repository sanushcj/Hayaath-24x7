
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../core/constants/constants.dart';
import '../Widgets/appbar_public.dart';
import '../Widgets/title_public.dart';
import 'widgets/trendingbox_article.dart';

class ArticlePage extends StatelessWidget {
  const ArticlePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 3, right: 2),
      child: Column(
        children: <Widget>[
          PublicAppBar(title: 'Articles'),
          const PublicSmallTitle(title: 'Trendings'),
          SizedBox(
            width: MediaQuery.of(context).size.height / 1.22,
            height: MediaQuery.of(context).size.height / 4,
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) => const TrendingSlideBox(),
                separatorBuilder: (BuildContext context, int index) =>
                    rrWidth15,
                itemCount: 10),
                
          ),const PublicSmallTitle(title: 'Articles')
        ],
      ),
    );
  }
}
