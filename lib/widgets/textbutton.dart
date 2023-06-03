import 'package:flutter/material.dart';
import './textbutton.dart';

class textbuttonfun extends StatelessWidget {
  String label;
  IconData icon;

  textbuttonfun({
    required this.icon,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
        onPressed: () {},
        icon: Icon(icon),
        label: Text(
          label,
          style: TextStyle(fontSize: 10),
        ));
  }
}
