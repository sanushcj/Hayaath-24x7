import 'dart:math';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controller/HealthAPI/trending.dart';
import '../content/contentscreen.dart';

int? lengthofTrendings;

// ignore: must_be_immutable
class TrendingSlideBox extends StatelessWidget {
  TrendingSlideBox({super.key, required this.indexx});
  int indexx;
  final HealthApi client = Get.find();

  @override
  Widget build(BuildContext context) {
    return Obx(
      () =>  InkWell(
              onTap: () => Get.to(ContentScreen(
                content: client.healthAPIList[indexx].content.toString(),
                img: client.healthAPIList[indexx].urlToImage.toString(),
                title: client.healthAPIList[indexx].title,
                url: client.healthAPIList[indexx].url,
              )),
              child: Column(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.primaries[
                            Random().nextInt(Colors.primaries.length)][500],
                        image: DecorationImage(
                            image: NetworkImage(
                              client.healthAPIList[indexx].urlToImage
                                  .toString(),
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
                          client.healthAPIList[indexx].title,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                          overflow: TextOverflow.ellipsis,
                        )),
                  ),
                ],
              ),
            ),
    );
  }
}
