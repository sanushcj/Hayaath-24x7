import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hayaath_24x7/controller/HealthAPI/Trending.dart';
import 'package:hayaath_24x7/view/articles/content/contentscreen.dart';

int? lengthofTrendings;

// ignore: must_be_immutable
class TrendingSlideBox extends StatelessWidget {
  TrendingSlideBox({super.key, required this.indexx});
  int indexx;

  HealthApi Client = Get.put(HealthApi());
  @override
  Widget build(BuildContext context) {
    return  Obx(
      () => Client.loading.value == true ? CircularProgressIndicator() : InkWell(
        onTap: () =>Get.to (ContentScreen(content: Client.healthAPIList[indexx].content.toString(), img: Client.healthAPIList[indexx].urlToImage.toString(), title: Client.healthAPIList[indexx].title,url: Client.healthAPIList[indexx].url ,)),
        child: Column(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  color: Colors
                          .primaries[Random().nextInt(Colors.primaries.length)]
                      [500],
                  image: DecorationImage(
                      image: NetworkImage(
                        Client.healthAPIList[indexx].urlToImage.toString(),
                      ),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(10)),
              width: MediaQuery.of(context).size.width / 1.2,
              height: MediaQuery.of(context).size.height / 5,
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: SizedBox(
                  width: MediaQuery.of(context).size.height / 2.5,
                  child: Text(
                    Client.healthAPIList[indexx].title,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    overflow: TextOverflow.ellipsis,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
