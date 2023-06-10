import 'package:flutter/material.dart';

class textfield extends StatelessWidget {
  String text;
  int? maxLine;
  IconData icon;
  String hinttext;

  textfield(
      {required this.text,
      this.maxLine,
      required this.icon,
      required this.hinttext});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(padding: EdgeInsets.all(5)),
        Text(text),
        Padding(padding: EdgeInsets.all(2)),
        TextFormField(
          maxLines: maxLine,
          decoration: InputDecoration(
              hintText: hinttext,
              hintStyle: TextStyle(color: Colors.grey),
              contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
              isDense: true,
              prefixIcon: Icon(icon),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                borderSide: BorderSide(color: Colors.lightBlue),
              )),
        )
      ],
    );
  }
}
