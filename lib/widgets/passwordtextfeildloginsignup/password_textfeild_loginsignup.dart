import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../constants/colors.dart';
import '../../view_model/textfeild/inputdecor.dart';

class Password_TextFeild_LoginSignup extends StatefulWidget {
  Password_TextFeild_LoginSignup({
    super.key,
    required this.controller,
    required this.passwordloginsignuptext,
  });

  final TextEditingController controller;
  final String passwordloginsignuptext;

  @override
  State<Password_TextFeild_LoginSignup> createState() =>
      _Password_TextFeild_LoginSignupState();
}

class _Password_TextFeild_LoginSignupState
    extends State<Password_TextFeild_LoginSignup> {
  final _passwordRegExp =
      RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');

  late String _password;
  var obscureText = false;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value!.isEmpty) {
          return "Please enter a password";
        } else if (!_passwordRegExp.hasMatch(value)) {
          return "Password must be at least eight characters long, \ncontain at least one uppercase letter, \none lowercase letter, \none number and one special character.";
        }
      },
      controller: widget.controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        filled: true,
        fillColor: tGreenLight,
        focusedErrorBorder: UnderlineInputBorder(
          borderSide: BorderSide.none,
        ),
        errorBorder: UnderlineInputBorder(borderSide: BorderSide.none),
        hintText: "Enter Strong Password",
        labelText: widget.passwordloginsignuptext,
        errorStyle: TextStyle(height: 0, color: tDarkGrey),
        prefixIcon: SvgPicture.asset(
          "assets/passwordcheck.svg",
          height: 10,
          width: 10,
          fit: BoxFit.scaleDown,
        ),
        suffixIcon: GestureDetector(
            onTap: () {
              setState(() {
                obscureText = !obscureText;
              });
            },
            child: obscureText
                ? SvgPicture.asset(
                    "assets/eyeoff.svg",
                    height: 13.86,
                    width: 13.86,
                    fit: BoxFit.scaleDown,
                  )
                : SvgPicture.asset(
                    "assets/eye.svg",
                    height: 13.86,
                    width: 13.86,
                    fit: BoxFit.scaleDown,
                  )),
        labelStyle: TextStyle(color: tDarkGrey),
        hintStyle: TextStyle(color: tDarkGrey),
        enabledBorder: myInputBorder(),
        focusedBorder: myFocusBorder(),
      ),
    );
  }
}
