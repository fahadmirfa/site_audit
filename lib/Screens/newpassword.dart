import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:site_audit/Screens/login.dart';
import '../constants/colors.dart';
import '../constants/sizes.dart';
import '../widgets/passwordtextfeildloginsignup/password_textfeild_loginsignup.dart';

class NewPassword extends StatefulWidget {
  const NewPassword({Key? key}) : super(key: key);

  @override
  State<NewPassword> createState() => _NewPasswordState();
}

class _NewPasswordState extends State<NewPassword> {
  final formKey = GlobalKey<FormState>();

  TextEditingController newpasswordController = TextEditingController();
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
                  "Reset Password",
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
                Password_TextFeild_LoginSignup(
                  controller: newpasswordController,
                  passwordloginsignuptext: "New Password",
                ),
                SizedBox(
                  height: 24,
                ),
                Password_TextFeild_LoginSignup(
                  controller: confirmpasswordController,
                  passwordloginsignuptext: "Confirm Password",
                ),
                SizedBox(
                  height: 184,
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
                                builder: (context) => LoginScreen()));
                      }
                    },
                    child: Text(
                      "Reset Password",
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
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
