import 'package:flutter/material.dart';

class Elevatedbuttonfunc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Colors.amber[900],
        minimumSize: const Size.fromHeight(35), // NEW
      ),
      onPressed: () {},
      child: const Text(
        'Update Now',
        style: TextStyle(fontSize: 18),
      ),
    );
  }
}
