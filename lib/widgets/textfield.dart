import 'package:flutter/material.dart';

class Textfieldfunc extends StatelessWidget {
  String labeltext;

  Textfieldfunc({required this.labeltext});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: labeltext,
      ),
    );
  }
}
