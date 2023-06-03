import 'package:flutter/material.dart';
import 'Screens/UserProfile.dart';
import './screens/EditProfile.dart';

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
