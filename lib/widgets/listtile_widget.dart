import 'package:flutter/material.dart';
import '../screens/user_profile.dart';
import '../screens/edit_profile.dart';

class listtile extends StatelessWidget {
  String title;
  String? subtitle;
  IconData leading, trailing;

  listtile(
      {required this.title,
      required this.leading,
      this.subtitle,
      required this.trailing});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(leading),
      trailing: Icon(trailing),
      title: Text(title),
    );
  }
}
