import 'dart:io';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'accademy',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white70),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'accademy'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //int _counter = 0;

  // void _incrementCounter() {
  //   setState(() {
  //     //  _counter++;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          //backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: EdgeInsets.only(left: 0),
            child: Row(
              children: [
                Image.asset(
                  'assets/photos/yes.png',
                  fit: BoxFit.contain,
                  height: 20,
                ),
                Text(widget.title),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 0),
            child: IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          ),
        ],
      )),
      body: ListView(
        children: [
          Container(
              padding: EdgeInsets.all(30),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
              ),
              height: 200,
              width: 200,
              child: Image.asset('assets/photos/abc.PNG')),
          Text(
            "Signe Thompson",
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          ListTile(
            leading: Icon(
              Icons.person,
            ),
            title: Text('Edit Profile'),
            trailing: Icon(Icons.directions),
          ),
          ListTile(
            leading: Icon(Icons.download),
            title: Text('Downloaded Courses'),
            trailing: Icon(Icons.directions),
          ),
          ListTile(
            leading: Icon(Icons.key_off),
            title: Text('Change Password'),
            trailing: Icon(Icons.directions),
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text('Log Out'),
            trailing: Icon(Icons.directions),
          ),
          Container(
              margin: EdgeInsets.only(top: 60),
              child: Row(
                children: [
                  Expanded(
                    child: TextButton.icon(
                        onPressed: () {},
                        icon: Icon(Icons.home),
                        label: Text("Home")),
                  ),
                  Expanded(
                    child: TextButton.icon(
                        onPressed: () {},
                        icon: Icon(Icons.book),
                        label: Text("My Course")),
                  ),
                  Expanded(
                    child: TextButton.icon(
                        onPressed: () {},
                        icon: Icon(Icons.favorite),
                        label: Text("Whishlist")),
                  ),
                  Expanded(
                    child: TextButton.icon(
                        onPressed: () {},
                        icon: Icon(Icons.account_circle),
                        label: Text("Account")),
                  ),
                ],
              ))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(
          Icons.list,
        ),
      ),
    );
  }
}
