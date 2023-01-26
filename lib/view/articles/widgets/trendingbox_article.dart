import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hayaath_24x7/model/Articles/articles.dart';
import 'package:hayaath_24x7/services/health.dart';

// ignore: must_be_immutable
class TrendingSlideBox extends StatelessWidget {
  TrendingSlideBox({super.key, required this.indexx});
  int indexx;
  HealthApi kk = new HealthApi();
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: kk.GetHealthNews(),
        builder: (BuildContext context, AsyncSnapshot<List<Article>> snapshot) {
          if (snapshot.hasData) {
            List<Article>? Healthhhh = snapshot.data;
            InkWell(
              child: Column(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.primaries[
                            Random().nextInt(Colors.primaries.length)][500],
                        image: DecorationImage(
                            image: NetworkImage(
                                Healthhhh![indexx].urlToImage.toString())),
                        borderRadius: BorderRadius.circular(10)),
                    width: MediaQuery.of(context).size.width / 1.2,
                    height: MediaQuery.of(context).size.height / 5,
                  ),
                  SizedBox(
                      width: MediaQuery.of(context).size.height / 2.5,
                      child: Text(
                        Healthhhh[indexx].title,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 22),
                        overflow: TextOverflow.ellipsis,
                      )),
                ],
              ),
            );
          } else {
            print('No Data Bro Try Again');
          }
          return Center(
            child: CupertinoActivityIndicator(),
          );
        });
  }
}
