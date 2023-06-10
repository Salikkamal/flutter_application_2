import 'package:flutter/material.dart';
import 'package:flutter_application_2/screens/downloaded_courses.dart';
import 'package:flutter_application_2/screens/user_profile.dart';
import '../widgets/textfield.dart';
import '../widgets/elevatedbuttonfunc.dart';
import '../widgets/animated_elevated_text_button.dart';

class EditProfile extends StatefulWidget {
  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Text(
                "Update Profile Picture",
                style: TextStyle(fontSize: 22),
              ),
            ),
            Stack(
              children: [
                CircleAvatar(
                  radius: 60,
                  backgroundColor: Colors.white,
                  child: Container(
                      padding: EdgeInsets.all(2),
                      child: CircleAvatar(
                        radius: 70,
                        backgroundImage: AssetImage('assets/photos/abc.PNG'),
                        backgroundColor: Colors.white,
                        //
                      )),
                ),
                Positioned(
                    bottom: 0,
                    right: 0,
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        child: Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Icon(Icons.add_a_photo, color: Colors.white),
                        ),
                        decoration: BoxDecoration(
                            border: Border.all(
                              width: 4,
                              color: Colors.white,
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(
                                50,
                              ),
                            ),
                            color: Colors.redAccent,
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(2, 4),
                                color: Colors.black.withOpacity(
                                  0.3,
                                ),
                                blurRadius: 3,
                              ),
                            ]),
                      ),
                    )),
              ],
            ),
            textfield(
                text: "First Name",
                maxLine: 1,
                icon: Icons.person,
                hinttext: "Signe"),
            textfield(
                text: "Last Name", icon: Icons.person, hinttext: "Thompson"),
            textfield(
                text: "Email",
                icon: Icons.email,
                hinttext: "student@example.com"),
            textfield(
                text: "Biography",
                maxLine: 4,
                icon: Icons.edit,
                hinttext: "Hello World!"),
            textfield(
                text: "Facebook Link",
                icon: Icons.facebook,
                hinttext: "https://www.facebook.com/john"),
            textfield(
                text: "Twitter Link",
                icon: Icons.face,
                hinttext: "https://www.twitter.com/john"),
            textfield(
                text: "LinkedIn Link",
                icon: Icons.link,
                hinttext: "https://www.linkedin.com/john"),
            Padding(padding: EdgeInsets.only(bottom: 12)),
            AnimatedElevatedTextButton(text: "Update Now", onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
