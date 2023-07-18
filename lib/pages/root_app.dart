import 'package:flutter/material.dart';
import 'package:flutter_application_2/json/participants_json.dart';
import 'package:flutter_application_2/pages/home_page.dart';
import 'package:flutter_application_2/pages/participants_page.dart';
import 'package:flutter_application_2/theme/colors.dart';
import '../community_material_icon.dart';

class RootApp extends StatefulWidget {
  @override
  State<RootApp> createState() => _RootAppState();
}

class _RootAppState extends State<RootApp> {
  int pageindex = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar(),
      backgroundColor: black,
      bottomNavigationBar: getFooter(),
      body: getBody(),
    );
  }

  PreferredSizeWidget getAppBar() {
    return AppBar(
      backgroundColor: headerAndFooter,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(
                Icons.video_call_outlined,
                color: grey,
              ),
              SizedBox(
                width: 15,
              ),
              Icon(
                Icons.voice_chat,
                color: grey,
              )
            ],
          ),
          Row(
            children: [
              Icon(
                Icons.security_outlined,
                color: green,
                size: 15,
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                "Zoom",
                style: TextStyle(
                    fontSize: 17, color: grey, fontWeight: FontWeight.bold),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (_) => ParticipantsPage()),
                      (route) => false);
                },
                child: const Icon(
                  Icons.keyboard_arrow_down,
                  color: grey,
                  size: 20,
                ),
              ),
            ],
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (_) => HomePage()),
                  (route) => false);
            },
            child: Container(
              decoration: BoxDecoration(
                  color: red, borderRadius: BorderRadius.circular(8)),
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 12, right: 12, top: 5, bottom: 5),
                child: Text("Leave",
                    style: TextStyle(
                        fontSize: 15,
                        color: grey,
                        fontWeight: FontWeight.w600)),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget getFooter() {
    return GestureDetector(
      child: Container(
        height: 90,
        width: double.infinity,
        decoration: BoxDecoration(
            color: headerAndFooter,
            border: Border(
                top: BorderSide(width: 2, color: black.withOpacity(0.06)))),
        child: const Padding(
          padding:
              const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Icon(
                    Icons.voicemail,
                    color: red,
                    size: 30,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "Mute",
                    style: TextStyle(
                        fontSize: 10, fontWeight: FontWeight.w600, color: grey),
                  ),
                ],
              ),
              Column(
                children: [
                  Icon(
                    Icons.video_call,
                    color: red,
                    size: 30,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "Stop Video",
                    style: TextStyle(
                        fontSize: 10, fontWeight: FontWeight.w600, color: grey),
                  ),
                ],
              ),
              Column(
                children: [
                  Icon(
                    Icons.present_to_all_outlined,
                    color: red,
                    size: 30,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "Presentation",
                    style: TextStyle(
                        fontSize: 10, fontWeight: FontWeight.w600, color: grey),
                  ),
                ],
              ),
              Column(
                children: [
                  Icon(
                    Icons.group,
                    color: red,
                    size: 30,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "Participant",
                    style: TextStyle(
                        fontSize: 10, fontWeight: FontWeight.w600, color: grey),
                  ),
                ],
              ),
              Column(
                children: [
                  Icon(
                    Icons.do_not_touch,
                    size: 30,
                    color: red,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "More",
                    style: TextStyle(
                        fontSize: 10, fontWeight: FontWeight.w600, color: grey),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget getBody() {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height,
      child: Stack(
        children: [
          Positioned(
            top: 15,
            right: 15,
            child: Container(
              width: 120,
              height: 170,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://images.unsplash.com/photo-1543486958-d783bfbf7f8e?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mnx8c2VsZmllfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60"),
                      fit: BoxFit.cover)),
            ),
          ),
          Center(
            child: Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://yt3.ggpht.com/yti/ANoDKi7t8UDpIBhR4vFhxH8woiUdojAZ-8kqhQKj3kki7g=s108-c-k-c0x00ffffff-no-rj"),
                      fit: BoxFit.cover)),
            ),
          )
        ],
      ),
    );
  }
}
