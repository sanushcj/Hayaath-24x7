import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

class RadioButtonAdvancedWidget extends StatefulWidget {
  @override
  _RadioButtonAdvancedWidgetState createState() =>
      _RadioButtonAdvancedWidgetState();
}

class _RadioButtonAdvancedWidgetState extends State<RadioButtonAdvancedWidget> {
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

  User selectedValue = users.first;

  @override
  Widget build(BuildContext context) => ListView(
      padding: EdgeInsets.symmetric(vertical: 16),
      children: users
          .map((user) => Container(
                margin: EdgeInsets.only(bottom: 16),
                child: RadioListTile<User>(
                  value: user,
                  onChanged: (value) => setState(() => selectedValue = value!),
                  groupValue: selectedValue,
                  title: Text(user.name),
                  subtitle: Text(user.description),
                  secondary: OutlinedButton(
                    child: Text('View Profile'),
                    onPressed: () {},
                  ),
                ),
              ))
          .toList());
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
