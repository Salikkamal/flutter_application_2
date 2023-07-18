import 'package:flutter/material.dart';
import 'package:flutter_application_2/pages/root_app.dart';
import 'package:flutter_application_2/videoCallScreen.dart';
import '../theme/colors.dart';

class JoinMeetingPage extends StatefulWidget {
  const JoinMeetingPage({super.key});

  @override
  State<JoinMeetingPage> createState() => _JoinMeetingPageState();
}

class _JoinMeetingPageState extends State<JoinMeetingPage> {
  bool isAudioSwitch = true;
  bool isVideoSwitch = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: headerAndFooter,
      appBar: getAppBar(),
      body: getBody(),
    );
  }

  getAppBar() {
    return AppBar(
        backgroundColor: headerAndFooter,
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 20, left: 10),
            child: Text(
              "Close",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
          ),
        ),
        title: Text(
          "Join Meeting",
        ));
  }

  getBody() {
    var size = MediaQuery.of(context).size;

    return Column(
      children: [
        SizedBox(
          height: 10,
        ),
        Container(
          height: 50,
          width: size.width,
          decoration: BoxDecoration(color: grey.withOpacity(0.03)),
          child: Row(
            children: [
              Container(
                width: size.width * 0.3,
                height: 40,
              ),
              Container(
                width: size.width * 0.7,
                child: TextField(
                  cursorColor: primary,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Meeting Id",
                      hintStyle: TextStyle(color: grey.withOpacity(0.3)),
                      suffixIcon: Icon(
                        Icons.keyboard_arrow_down,
                        color: grey,
                      )),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          "Join with a personal Link",
          style: TextStyle(color: primary),
        ),
        SizedBox(
          height: 15,
        ),
        Container(
          child: Row(
            children: [
              Container(
                width: size.width * 0.3,
              ),
              Container(
                width: size.width * 0.7,
                child: TextField(
                  cursorColor: primary,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Screen Name",
                    hintStyle: TextStyle(color: grey.withOpacity(0.3)),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 15,
        ),
        GestureDetector(
          onTap: () {
            Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (_) => VideocalScreen()),
                (route) => false);
          },
          child: Container(
            width: size.width * 0.9,
            height: 50,
            decoration: BoxDecoration(
                color: primary, borderRadius: BorderRadius.circular(10)),
            child: Center(
              child: Text(
                "Join",
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                    color: Colors.white),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 20, left: 20),
          child: Text(
            "If you recieved an Inviation Link, Click to Join the Meeting",
            style: TextStyle(color: grey.withOpacity(0.3)),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          width: size.width,
          height: 50,
          decoration: BoxDecoration(color: grey.withOpacity(0.03)),
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Audio Connect",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      height: 1.3,
                      color: grey),
                ),
                Switch(
                    activeColor: primary,
                    value: isAudioSwitch,
                    onChanged: (value) {
                      setState(() {
                        isAudioSwitch = value;
                      });
                    })
              ],
            ),
          ),
        ),
        SizedBox(
          height: 15,
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          width: size.width,
          height: 50,
          decoration: BoxDecoration(color: grey.withOpacity(0.03)),
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Video Connect",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      height: 1.3,
                      color: grey),
                ),
                Switch(
                    activeColor: primary,
                    value: isVideoSwitch,
                    onChanged: (value) {
                      setState(() {
                        isAudioSwitch = value;
                      });
                    })
              ],
            ),
          ),
        ),
      ],
    );
  }
}
