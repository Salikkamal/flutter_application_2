import 'package:flutter/material.dart';
import 'package:flutter_application_2/json/home_json.dart';
import 'package:flutter_application_2/pages/join_meeting_page.dart';
import 'package:flutter_application_2/pages/root_app.dart';
import 'package:flutter_application_2/theme/colors.dart';
import 'package:flutter_application_2/videoCallScreen.dart';
import '../community_material_icon.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../json/home_json.dart';
import './signin_page.dart';
import './setting_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int activeTab = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: headerAndFooter,
      appBar: getAppBar(),
      bottomNavigationBar: getFooter(),
      body: getBody(),
    );
  }

  PreferredSizeWidget getAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: headerAndFooter,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => SettingPage()));
                },
                child: Icon(
                  Icons.settings,
                  color: grey,
                ),
              ),
            ],
          ),
          Spacer(),
          Row(
              children: List.generate(4, (index) {
            return Padding(
              padding: const EdgeInsets.only(right: 8),
              child: Container(
                width: 8,
                height: 8,
                decoration: BoxDecoration(
                    color: activeTab == index ? grey : grey.withOpacity(0.2),
                    shape: BoxShape.circle),
              ),
            );
          })),
          Spacer(),
        ],
      ),
    );
  }

  Widget getFooter() {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: 200,
      decoration: BoxDecoration(color: headerAndFooter),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: () {
                onTap:
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => JoinMeetingPage(),
                      fullscreenDialog: true,
                    ));
              },
              child: Container(
                width: size.width * 0.75,
                height: 50,
                decoration: BoxDecoration(
                    color: primary, borderRadius: BorderRadius.circular(15)),
                child: Center(
                  child: Text(
                    "Join a Meeting",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Sign Up",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: primary),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (_) => SignInPage()),
                        (route) => false);
                  },
                  child: Text(
                    "Sign In",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: primary),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget getBody() {
    var size = MediaQuery.of(context).size;
    return CarouselSlider(
      items: List.generate(4, (index) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    items[index]['title'],
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    items[index]['description'],
                    style: TextStyle(color: Colors.white60, fontSize: 15),
                  ),
                )
              ],
            ),
            Container(
              width: 220,
              height: 220,
              decoration: BoxDecoration(
                  image:
                      DecorationImage(image: AssetImage(items[index]['img']))),
            ),
          ],
        );
      }),
      options: CarouselOptions(
        onPageChanged: (index, reason) {
          setState(() {
            activeTab = index;
          });
        },
        height: 480.0,
        enlargeCenterPage: true,
        autoPlay: true,
        aspectRatio: 16 / 9,
        autoPlayCurve: Curves.fastOutSlowIn,
        enableInfiniteScroll: true,
        autoPlayAnimationDuration: Duration(milliseconds: 800),
        viewportFraction: 0.9,
      ),
    );
  }
}
