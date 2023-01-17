import 'package:flutter/material.dart';

import '../../core/Colors/mycolors.dart';
import '../../core/constants/constants.dart';
import '../Widgets/appbar_public.dart';
import '../Widgets/title_public.dart';
import 'tabs/lifstyle.dart';
import 'tabs/corona.dart';
import 'tabs/food.dart';
import 'tabs/medicaltab.dart';
import 'tabs/newest.dart';
import 'widgets/trendingbox_article.dart';

class ArticlePage extends StatelessWidget {
  const ArticlePage({super.key});

  @override
  Widget build(BuildContext context) {
    
    return ListView(
      children: <Widget>[
        PublicAppBar(title: 'Articles'),
        const PublicSmallTitle(title: 'Trendings'),
        SizedBox(
          width: MediaQuery.of(context).size.height / 1.22,
          height: MediaQuery.of(context).size.height / 4,
          child: ListView.separated(
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) =>
                  const TrendingSlideBox(),
              separatorBuilder: (BuildContext context, int index) => rrWidth15,
              itemCount: 10),
        ),
        const PublicSmallTitle(title: 'Articles'),
        DefaultTabController(
          animationDuration: const Duration(milliseconds: 500),
          length: 6,
          child: SizedBox(
            width: double.infinity,
            // color: rrBlack,
            height: 50,
            child: TabBar(
              isScrollable: true,
              unselectedLabelStyle: const TextStyle(
                color: rrWhite,
                fontSize: 17,
              ),
              indicator: BoxDecoration(
                color: rrPremiumBlue,
                borderRadius: BorderRadius.circular(50),
              ),
              labelColor: rrWhite,
              labelStyle: const TextStyle(
                color: rrWhite,
                fontSize: 17,
              ),
              unselectedLabelColor: rrPremiumBlue,
              tabs: const <Widget>[
                Tab(
                  text: 'Newest',
                ),
                Tab(
                  text: 'Health',
                ),
                Tab(
                  text: 'Covid-19',
                ),
                Tab(
                  text: 'Lifstyle',
                ),
                Tab(
                  text: 'Food',
                ),

                // Expanded(child: TabBarView(children:<StatelessWidget> [NewestTab(),HealthTab(),CoronaTab(),LifstyleTab(),FoodTab()],))
              ],
            ),
          ),
        ),
      ],
    );
  }
}
