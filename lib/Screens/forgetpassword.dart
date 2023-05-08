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

  final RegExp emailRegex = RegExp(r'^[\w-]+@([\w-]+\.)+[\w-]{2,4}$');

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
              const Center(
                  child: Image(
                image: AssetImage("assets/login_signup.png"),
              )),
              const SizedBox(
                height: tDefaultSize,
              ),
              Text(
                "Enter Code",
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                style: Theme.of(context)
                    .textTheme
                    .headlineMedium
                    ?.copyWith(color: tGreyColor, fontSize: 12),
              ),
              const SizedBox(
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
                    return null;
                  },
                  onSaved: (value) {
                  },
                  decoration: InputDecoration(
                    fillColor: tGreenLight,
                    filled: true,
                    focusedErrorBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: tDarkGrey),
                    ),
                    errorBorder:
                        const UnderlineInputBorder(borderSide: BorderSide.none),
                    hintText: "Enter Your Email",
                    labelText: "Email",
                    prefixIcon: SvgPicture.asset(
                      "assets/sms.svg",
                      height: 10,
                      width: 10,
                      fit: BoxFit.scaleDown,
                    ),
                    errorStyle: const TextStyle(height: 0, color: tDarkGrey),
                    prefixIconColor: tDarkGrey,
                    labelStyle: const TextStyle(color: tDarkGrey),
                    hintStyle: const TextStyle(color: tDarkGrey),
                    enabledBorder: myInputBorder(),
                    focusedBorder: myFocusBorder(),
                  ),
                ),
              ),
              const SizedBox(
                height: 264,
              ),
              SizedBox(
                height: 44,
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => const OtpScreen()));
                    }
                  },
                  child: Text(
                    "Send Code",
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const LoginScreen()));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account?",
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge
                          ?.copyWith(fontSize: 12, color: tDarkGrey),
                    ),
                    Text(
                      " Sign In",
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge
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
