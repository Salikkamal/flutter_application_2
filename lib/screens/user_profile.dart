import 'package:flutter/material.dart';
import '../widgets/listtile_widget.dart';
import '../widgets/textbutton.dart';

class UserProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
              padding: EdgeInsets.all(10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100.0),
                child: Image.asset(
                  "assets/photos/abc.PNG",
                  height: 180.0,
                  width: 190.0,
                  fit: BoxFit.cover,
                ),
              )),
          Text(
            "Signe Thompson",
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Spacer(),
          Container(
            child: Column(
              children: [
                listtile(
                  title: "Edit profile",
                  leading: Icons.person,
                  trailing: Icons.forward,
                ),
                listtile(
                    title: "Downloaded Courses",
                    leading: Icons.download,
                    trailing: Icons.forward),
                listtile(
                    title: "Change Password",
                    leading: Icons.key,
                    trailing: Icons.forward),
                listtile(
                    title: "Log Out",
                    leading: Icons.logout,
                    trailing: Icons.forward)
              ],
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Spacer(),
              textbuttonfun(icon: Icons.home, label: "Home"),
              textbuttonfun(icon: Icons.book, label: "My Courses"),
              textbuttonfun(icon: Icons.favorite, label: "Whishlist"),
              textbuttonfun(icon: Icons.person, label: "Account"),
            ],
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(
          Icons.list,
        ),
        backgroundColor: Colors.brown[800],
      ),
    );
  }
}
