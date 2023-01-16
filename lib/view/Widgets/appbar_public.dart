
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../core/Colors/mycolors.dart';
import '../../core/constants/constants.dart';

// ignore: must_be_immutable
class PublicAppBar extends StatelessWidget {
   PublicAppBar({ 
    super.key,required this.title
  });

  String  title;


  @override
  Widget build(BuildContext context) {
    return SizedBox(
        
     
      height: MediaQuery.of(context).size.height / 11,
      width: double.infinity,
      child: Row(
        children: <Widget>[
          SizedBox(
          
            height: MediaQuery.of(context).size.height / 11,
            width: MediaQuery.of(context).size.width/1.5,
            child: Row(
              children: <Widget>[
                const Icon(
                  FontAwesomeIcons.stethoscope,
                  size: 40,
                  color: rrPremiumBlue,
                ),
                rrWidth15,
                 Text(
                  title,
                  style: const TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: rrBlack),
                ),
              ],
            ),
          ),
          const Spacer(),
          SizedBox(
            height: MediaQuery.of(context).size.height / 11,
            width: MediaQuery.of(context).size.width / 5.5,
            child: Row(
              children:  <Widget>[
                const Icon(FontAwesomeIcons.magnifyingGlass,size: 25,),
                rrWidth15,
                const Icon(
                  FontAwesomeIcons.ellipsisVertical,
                  size: 25,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
