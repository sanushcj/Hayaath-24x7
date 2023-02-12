import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hayaath_24x7/controller/HealthAPI/trending.dart';
import '../../core/Colors/mycolors.dart';
import '../../core/constants/constants.dart';
import '../Widgets/appbar/appbar_public.dart';
import '../Widgets/title_public.dart';
import 'tabs/corona.dart';
import 'tabs/food.dart';
import 'tabs/lifstyle.dart';
import 'tabs/medicaltab.dart';
import 'tabs/newest.dart';
import 'widgets/trendingbox_article.dart';

final HealthApi client = Get.find();

// ignore: must_be_immutable
class ArticlePage extends StatelessWidget {
  ArticlePage({super.key});
  HealthApi controller = Get.put(HealthApi());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(
          MediaQuery.of(context).size.height / 11,
        ),
        child: PublicAppBar(title: 'Articles'),
      ),
      body: DefaultTabController(
          animationDuration: const Duration(milliseconds: 500),
          length: 5,
          child: Column(children: <Widget>[
            const PublicSmallTitle(title: 'Trendings'),
            Obx(
              () => client.loading.value == true
                  ? SizedBox(
                      height: MediaQuery.of(context).size.height / 4,
                      child: const CupertinoActivityIndicator())
                  : SizedBox(
                      width: MediaQuery.of(context).size.height / 1.22,
                      height: MediaQuery.of(context).size.height / 4,
                      child: ListView.separated(
                          shrinkWrap: true,
                          physics: const BouncingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (BuildContext context, int index) =>
                              TrendingSlideBox(indexx: index),
                          separatorBuilder: (BuildContext context, int index) =>
                              rrWidth15,
                          itemCount: 20),
                    ),
            ),
            const PublicSmallTitle(title: 'Articles'),
            SizedBox(
                width: double.infinity,
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
                  ],
                )),
            const Expanded(
                child: SizedBox(
              child: TabBarView(
                children: <StatelessWidget>[
                  NewestTab(),
                  HealthTab(),
                  CoronaTab(),
                  LifstyleTab(),
                  FoodTab()
                ],
              ),
            )),
          ])),
    );
  }
}
