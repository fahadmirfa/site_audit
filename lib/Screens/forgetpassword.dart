import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:site_audit/Screens/otpscreen.dart';
import '../constants/colors.dart';
import '../constants/sizes.dart';
import '../view_model/textfeild/inputdecor.dart';
import 'login.dart';

class ForgetPasssword extends StatefulWidget {
  const ForgetPasssword({Key? key}) : super(key: key);

  @override
  State<ForgetPasssword> createState() => _ForgetPassswordState();
}

class _ForgetPassswordState extends State<ForgetPasssword> {
  final formKey = GlobalKey<FormState>();

  final RegExp emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
  TextEditingController _emailController = TextEditingController();

  String _name = '';

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
                key: formKey,
                child: TextFormField(
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
                      borderSide: BorderSide(color: tDarkGrey),
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
              ),
              SizedBox(
                height: 264,
              ),
              SizedBox(
                height: 44,
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => OtpScreen()));
                    }
                  },
                  child: Text(
                    "Send Code",
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
    );
  }
}
