import 'package:flutter/material.dart';
import 'screens/user_profile.dart';
import 'screens/edit_profile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'accademy',
      home: EditProfile(),
    );
  }
}
