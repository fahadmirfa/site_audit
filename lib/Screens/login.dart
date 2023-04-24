import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:site_audit/Screens/forgetpassword.dart';
import 'package:site_audit/Screens/signup.dart';
import 'package:site_audit/constants/colors.dart';
import 'package:site_audit/constants/sizes.dart';
import 'package:site_audit/view_model/textfeild/inputdecor.dart';
import '../view_model/bottom_navigation_bar/bottomnavigation.dart';
import '../widgets/passwordtextfeildloginsignup/password_textfeild_loginsignup.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  String _name = '';
  final RegExp emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
  TextEditingController loginpasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 20.0),
          child: Form(
            key: formKey,
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
                  "Sign in",
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
                TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please enter an email";
                    } else if (!emailRegex.hasMatch(value)) {
                      return "Please enter a correct email";
                    }
                  },
                  onSaved: (value) {
                    _name = value!.trim();
                  },
                  decoration: InputDecoration(
                    fillColor: tGreenLight,
                    filled: true,
                    focusedErrorBorder: UnderlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                    errorBorder:
                        UnderlineInputBorder(borderSide: BorderSide.none),
                    hintText: "Enter Your Email",
                    labelText: "Email",
                    prefixIcon: SvgPicture.asset(
                      "assets/sms.svg",
                      height: 10,
                      width: 10,
                      fit: BoxFit.scaleDown,
                    ),
                    errorStyle: TextStyle(height: 0, color: tDarkGrey),
                    prefixIconColor: tDarkGrey,
                    labelStyle: TextStyle(color: tDarkGrey),
                    hintStyle: TextStyle(color: tDarkGrey),
                    enabledBorder: myinputborder(),
                    focusedBorder: myfocusborder(),
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                Password_TextFeild_LoginSignup(
                  controller: loginpasswordController,
                  passwordloginsignuptext: "Password",
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ForgetPasssword()));
                        },
                        child: Text("Forget Password?",
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1
                                ?.copyWith(
                                    color: tWatchTutorial, fontSize: 12))),
                  ],
                ),
                SizedBox(
                  height: 24,
                ),
                SizedBox(
                  height: 44,
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MyHomePage()));
                      }
                    },
                    child: Text(
                      "Sign In",
                      style: Theme.of(context).textTheme.headline6,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SignupScreen()));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don’t have an account?",
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1
                            ?.copyWith(fontSize: 12, color: tDarkGrey),
                      ),
                      Text(
                        " Create one",
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1
                            ?.copyWith(fontSize: 12),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
