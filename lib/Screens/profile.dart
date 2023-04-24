import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../constants/colors.dart';
import '../widgets/iconbutton.dart';
import 'login.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: tDarkGrey,
        title: Text(
          "Profile",
          style: Theme.of(context).textTheme.headline1,
        ),
        leading: IconButtons(
          icon: Icons.arrow_back,
          size: 24,
          color: tWhiteColor,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButtons(
            icon: Icons.more_vert,
            size: 24,
            color: tWhiteColor,
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 24.0, left: 18.0, right: 18.0),
        child: Column(
          children: [
            Center(
              child: CircleAvatar(
                child: Image(
                  image: AssetImage("assets/user.png"),
                  height: 30,
                  width: 30,
                ),
                backgroundColor: Color(0xfff2f4f7),
                radius: 40,
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              "John Doe",
              style: Theme.of(context)
                  .textTheme
                  .headline4
                  ?.copyWith(fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 5.0,
            ),
            Text("johndoe@gmail.com",
                style: Theme.of(context).textTheme.bodyText2),
            Container(
              height: 30,
            ),
            Row(
              children: [
                SvgPicture.asset(
                  "assets/share.svg",
                  height: 25,
                  width: 25,
                ),
                SizedBox(
                  width: 18,
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Share App",
                    style: Theme.of(context)
                        .textTheme
                        .headline4
                        ?.copyWith(fontWeight: FontWeight.w500, fontSize: 12),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                SvgPicture.asset(
                  "assets/securitysafe.svg",
                  height: 25,
                  width: 25,
                ),
                SizedBox(
                  width: 18,
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Privacy Policy",
                    style: Theme.of(context)
                        .textTheme
                        .headline4
                        ?.copyWith(fontWeight: FontWeight.w500, fontSize: 12),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                SvgPicture.asset(
                  "assets/document-text.svg",
                  height: 25,
                  width: 25,
                ),
                SizedBox(
                  width: 18,
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Terms & Conditions",
                    style: Theme.of(context)
                        .textTheme
                        .headline4
                        ?.copyWith(fontWeight: FontWeight.w500, fontSize: 12),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 100,
            ),
            OutlinedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginScreen()));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset("assets/logout.svg"),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Logout",
                      style: Theme.of(context).textTheme.headline4?.copyWith(
                            fontWeight: FontWeight.w500,
                          ),
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
