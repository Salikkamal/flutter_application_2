import 'package:flutter/material.dart';
import 'package:flutter_application_2/Screens/DownloadedCourses.dart';
import 'package:flutter_application_2/Screens/UserProfile.dart';
import '../widgets/textfield.dart';
import '../widgets/elevatedbuttonfunc.dart';

class EditProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Row(
              children: [
                Image.asset(
                  'assets/photos/yes.png',
                  fit: BoxFit.contain,
                  height: 20,
                ),
                Text("accademy"),
              ],
            ),
          ),
        ],
      )),
      body: ListView(
        children: [
          Text(
            "Update Profile Picture",
            style: TextStyle(fontSize: 22),
          ),
          Container(
              height: 100,
              width: 100,
              child: Image.asset('assets/photos/abc.PNG')),
          TextButton.icon(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => UserProfile()));
              },
              icon: Icon(Icons.upload_file),
              label: Text("Change Picture")),
          Textfieldfunc(labeltext: "First Name"),
          Textfieldfunc(labeltext: "Last Name"),
          Textfieldfunc(labeltext: "Email"),
          Textfieldfunc(labeltext: "Biography"),
          Textfieldfunc(labeltext: "Facebook Link"),
          Textfieldfunc(labeltext: "Twitter Link"),
          Textfieldfunc(labeltext: "Linkedin Link"),
          Elevatedbuttonfunc(),
        ],
      ),
    );
  }
}
