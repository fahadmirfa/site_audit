import 'package:flutter/material.dart';
import 'package:site_audit/Screens/login.dart';
import '../constants/colors.dart';
import '../widgets/button/txtbtn.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.001,
            ),
            Image(
              image: AssetImage(
                "assets/home1.png",
              ),
              height: 200,
              width: MediaQuery.of(context).size.width,
            ),
            SizedBox(
              height: 16,
            ),
            TxtBttn(
                txtbtntext: "Home Inspections",
                txtfntsize: 17,
                txtbtncolorfrgrund: tDarkGrey,
                txtbtncolorborder: tDarkGrey,
                txtbtnpadding: 15,
                txtbtnradius: 18,
                txtbtn_onpressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginScreen()));
                }),
          ],
        ),
      ),
    );
  }
}
