import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../constants/colors.dart';
import '../widgets/iconbutton.dart';
import 'login.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: tDarkGrey,
        title: Text(
          "Profile",
          style: Theme.of(context).textTheme.displayLarge,
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
        padding: const EdgeInsets.only(top: 24.0, left: 18.0, right: 18.0),
        child: Column(
          children: [
            Center(
              child: CircleAvatar(
                backgroundColor: const Color(0xffF2F4F7),
                radius: 40,
                child: Image(
                  image: const AssetImage("assets/user.png"),
                  height: 30,
                  width: 30,
                  color: profileIcon,
                ),
              ),
            ),
            const SizedBox(
              height: 8.0,
            ),
            Text(
              "John Doe",
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium
                  ?.copyWith(fontSize: 15, fontWeight: FontWeight.w700, color: profileIconText),
            ),
            const SizedBox(
              height: 5.0,
            ),
            Text("johndoe@gmail.com",
                style: Theme.of(context).textTheme.bodyMedium),
            Container(
              height: 30,
            ),
            Row(
              children: [
                SvgPicture.asset(
                  "assets/share.svg",
                  height: 25,
                  width: 25,
                  colorFilter: ColorFilter.mode(profileTilesIcon, BlendMode.modulate),
                ),
                const SizedBox(
                  width: 10,
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Share App",
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.w700,
                        fontSize: 12,
                        color: profileTilesText),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                SvgPicture.asset(
                  "assets/securitysafe.svg",
                  height: 25,
                  width: 25,
                  colorFilter: ColorFilter.mode(profileTilesIcon, BlendMode.modulate),
                ),
                const SizedBox(
                  width: 10,
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Privacy Policy",
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.w700,
                        fontSize: 12,
                        color: profileTilesText),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                SvgPicture.asset(
                  "assets/document-text.svg",
                  height: 25,
                  width: 25,
                  colorFilter: ColorFilter.mode(profileTilesIcon, BlendMode.modulate),
                ),
                const SizedBox(
                  width: 10,
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Terms & Conditions",
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.w700,
                        fontSize: 12,
                        color: profileTilesText),
                  ),
                ),
              ],
            ),
            const Spacer(),
            GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const LoginScreen()));
                },
                child: Container(
                  height: 44,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      border: Border.all(color: gray, width: 1.0),
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        "assets/logout.svg",
                        colorFilter: ColorFilter.mode(logOutBlack, BlendMode.modulate),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Logout",
                        style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                            fontWeight: FontWeight.w500, color: logOutBlack),
                      )
                    ],
                  ),
                )),
            const SizedBox(
              height: 25,
            )
          ],
        ),
      ),
    );
  }
}
