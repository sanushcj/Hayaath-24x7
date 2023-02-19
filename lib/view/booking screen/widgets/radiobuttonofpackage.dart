import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:hayaath_24x7/core/constants/constants.dart';

// ignore: must_be_immutable
class RadioButtonAdvancedWidget extends StatelessWidget {
  List<Widget> IconsofPackage = [
    CircleAvatar(radius: 50, child: Icon(FontAwesomeIcons.message)),
    CircleAvatar(radius: 50, child: Icon(FontAwesomeIcons.phone)),
    CircleAvatar(radius: 50, child: Icon(FontAwesomeIcons.video)),
  ];

  static const users = [
    User(
      name: 'Message',
      description: 'Chat Message with doctor',
    ),
    User(
      name: 'Voice Call',
      description: 'Voice Call with doctor',
    ),
    User(
      name: 'Video Call',
      description: 'VideoCall with doctor',
    ),
  ];

  var selectedValue = 1.obs;

  @override
  Widget build(BuildContext context) => 
  // Obx(() => 
  ListView.separated(
      shrinkWrap: true,
      itemBuilder: (context, index) => ListTile(
          leading: IconsofPackage[index],
          title: Text(users[index].name),
          subtitle: Text(users[index].description),
          trailing: Radio(
            value: IconsofPackage[0],
            groupValue: selectedValue,
            onChanged: (value) => this.selectedValue.value = index
          ),),
      separatorBuilder: (context, index) => rrheight20,
      itemCount: 3);
      // );
}

class User {
  final String name;
  final String description;

  const User({
    required this.name,
    required this.description,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is User &&
          runtimeType == other.runtimeType &&
          name == other.name &&
          description == other.description;

  @override
  int get hashCode => name.hashCode ^ description.hashCode;
}
