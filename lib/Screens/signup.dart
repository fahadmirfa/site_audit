import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:site_audit/constants/colors.dart';
import 'package:site_audit/constants/sizes.dart';
import 'package:site_audit/view_model/textfeild/inputdecor.dart';
import '../widgets/passwordtextfeildloginsignup/password_textfeild_loginsignup.dart';
import 'login.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final formKey = GlobalKey<FormState>();
  final RegExp emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
  final _nameRegex = RegExp(r'^[a-z A-Z]+$');
  String _name = '';
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmpasswordController = TextEditingController();
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
                  "Create Account",
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
                  onSaved: (value) {
                    _name = value!.trim();
                  },
                  validator: (value) {
                    if (value!.isEmpty || !_nameRegex.hasMatch(value)) {
                      return "Please enter your name";
                    } else {
                      return null;
                    }
                  },
                  decoration: InputDecoration(
                    fillColor: tGreenLight,
                    filled: true,
                    focusedErrorBorder: UnderlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                    errorBorder:
                        UnderlineInputBorder(borderSide: BorderSide.none),
                    hintText: "Enter Your Name",
                    labelText: "Name",
                    errorStyle: TextStyle(height: 0, color: tDarkGrey),
                    prefixIcon: SvgPicture.asset(
                      "assets/useradd.svg",
                      height: 10,
                      width: 10,
                      fit: BoxFit.scaleDown,
                    ),
                    prefixIconColor: tDarkGrey,
                    labelStyle: TextStyle(color: tDarkGrey),
                    hintStyle: TextStyle(color: tDarkGrey),
                    enabledBorder: myInputBorder(),
                    focusedBorder: myFocusBorder(),
                  ),
                ),
                SizedBox(
                  height: 24,
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
                    enabledBorder: myInputBorder(),
                    focusedBorder: myFocusBorder(),
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                Password_TextFeild_LoginSignup(
                  controller: passwordController,
                  passwordloginsignuptext: "Password",
                ),
                SizedBox(
                  height: 24,
                ),
                Password_TextFeild_LoginSignup(
                  controller: confirmpasswordController,
                  passwordloginsignuptext: "Confirm Password",
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
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            backgroundColor: tGreenLight,
                            behavior: SnackBarBehavior.floating,
                            content: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(CupertinoIcons.bell),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Your account has been created",
                                  style: Theme.of(context).textTheme.headline3,
                                )
                              ],
                            )));
                      }
                    },
                    child: Text(
                      "Create Account",
                      style: Theme.of(context).textTheme.headline6,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginScreen()));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Alredy have an account?",
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1
                            ?.copyWith(fontSize: 12, color: tDarkGrey),
                      ),
                      Text(
                        " Sign In",
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
