import 'package:flutter/material.dart';
import 'package:hayaath_24x7/core/Colors/mycolors.dart';
import 'package:hayaath_24x7/core/constants/constants.dart';

// ignore: must_be_immutable
class ContentScreen extends StatelessWidget {
  ContentScreen(
      {super.key,
      required this.content,
      required this.img,
      required this.title,required this.url});

  String img;
  String content;
  String title;
  String url;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: rrPremiumBlue,p),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            InkWell(
              onTap: () => url,
              child: Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height / 2.9,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(img), fit: BoxFit.cover))),
            ),
            ListView(
              shrinkWrap: true,
              children: [
                SizedBox(
                    width: double.infinity,
                    child: Text(
                      title,
                      style: TextStyle(
                          fontSize: 25, fontWeight: FontWeight.bold),
                    )),
                rrheight10,
                Text(
                  content,
                  style: TextStyle(fontSize: 20,),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
