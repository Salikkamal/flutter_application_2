import 'package:flutter/material.dart';
import 'package:flutter_application_2/Screens/DownloadedCourses.dart';
import 'package:flutter_application_2/Screens/EditProfile.dart';
import '../widgets/listview.dart';
import '../widgets/textbutton.dart';

class UserProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
                Text("User Profile"),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 0),
            child: IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          ),
        ],
      )),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
          Spacer(),
          Container(
            child: Column(
              children: [
                listview(
                  title: "Edit profile",
                  leading: Icons.person,
                  subtitle: "Changer your profile here",
                  trailing: Icons.forward,
                ),
                listview(
                    title: "Downloaded Courses",
                    leading: Icons.download,
                    subtitle: "You can see your downloaded materials here",
                    trailing: Icons.forward),
                listview(
                    title: "Change Password",
                    leading: Icons.key,
                    subtitle: "change your password here",
                    trailing: Icons.forward),
                listview(
                    title: "Log Out",
                    leading: Icons.logout,
                    subtitle: "Sign out from your account",
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
      ),
    );
  }
}
