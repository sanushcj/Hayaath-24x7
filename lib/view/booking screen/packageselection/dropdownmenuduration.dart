import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:hayaath_24x7/core/Colors/mycolors.dart';

// ignore: must_be_immutable
class IconTextDropdown extends StatelessWidget {
  var selectedOption = "30 minutes".obs;

  final List<Map<String, dynamic>> _options = [
    {
      "text": "30 minutes",
      "icon": FontAwesomeIcons.solidClock,
    },
    {
      "text": "45 minutes",
      "icon": FontAwesomeIcons.solidClock,
    },
    {"text": "60 minutes", "icon": FontAwesomeIcons.solidClock},
  ];

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Container(
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
        
          color: rrGrey.withOpacity(0.1),
          borderRadius: BorderRadius.circular(25)
        ),
        child: DropdownButton<String>(
          underline: SizedBox(),
          value: selectedOption.value,
          onChanged: (newValue) {
            selectedOption.value = newValue.toString();
          },
          items: _options.map((Map<String, dynamic> option) {
            return DropdownMenuItem<String>(
              value: option['text'],
              // enabled: true,
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Icon(option['icon']),
                  SizedBox(width: 10),
                  Text(option['text']),
                ],
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
