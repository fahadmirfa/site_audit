import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:site_audit/Screens/newpassword.dart';
import '../constants/colors.dart';
import '../constants/sizes.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 30,
              ),
              Center(
                  child: Image(
                image: AssetImage("assets/login_signup.png"),
              )),
              SizedBox(
                height: tDefaultSize,
              ),
              Text(
                "Enter Code",
                style: Theme.of(context).textTheme.headline4,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                style: Theme.of(context)
                    .textTheme
                    .headline4
                    ?.copyWith(color: tGreyColor, fontSize: 12),
              ),
              SizedBox(
                height: 48,
              ),
              Form(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      height: 56,
                      width: 56,
                      child: TextFormField(
                        onChanged: (value) {
                          if (value.length == 1) {
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.number,
                        inputFormatters: [LengthLimitingTextInputFormatter(1)],
                        style: TextStyle(color: tDarkGrey, fontSize: 24),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: tGreenLight,
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                            style: BorderStyle.solid,
                          )),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 56,
                      width: 56,
                      child: TextFormField(
                        onChanged: (value) {
                          if (value.length == 1) {
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.number,
                        inputFormatters: [LengthLimitingTextInputFormatter(1)],
                        style: TextStyle(color: tDarkGrey, fontSize: 24),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: tGreenLight,
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                            style: BorderStyle.solid,
                          )),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 56,
                      width: 56,
                      child: TextFormField(
                        onChanged: (value) {
                          if (value.length == 1) {
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.number,
                        inputFormatters: [LengthLimitingTextInputFormatter(1)],
                        style: TextStyle(color: tDarkGrey, fontSize: 24),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: tGreenLight,
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                            style: BorderStyle.solid,
                          )),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 56,
                      width: 56,
                      child: TextFormField(
                        onChanged: (value) {
                          if (value.length == 1) {
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.number,
                        inputFormatters: [LengthLimitingTextInputFormatter(1)],
                        style: TextStyle(color: tDarkGrey, fontSize: 24),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: tGreenLight,
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                            style: BorderStyle.solid,
                          )),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 264,
              ),
              SizedBox(
                height: 44,
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => NewPassword()));
                  },
                  child: Text(
                    "Reset Password",
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Did not recieve OTP ? ",
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1
                          ?.copyWith(fontSize: 12, color: tDarkGrey),
                    ),
                    Text(
                      " Resend OTP",
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1
                          ?.copyWith(fontSize: 12),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
