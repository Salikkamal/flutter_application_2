import 'package:flutter/material.dart';
import '../Screens/UserProfile.dart';
import '../screens/EditProfile.dart';

class listview extends StatelessWidget {
  String title;
  String subtitle;
  IconData leading, trailing;

  listview(
      {required this.title,
      required this.leading,
      required this.subtitle,
      required this.trailing});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(leading),
      trailing: Icon(trailing),
      title: Text(title),
      subtitle: Text(subtitle),
    );
  }
}
