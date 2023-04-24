import 'package:flutter/material.dart';
import '../../constants/colors.dart';
import '../../view_model/textfeild/inputdecor.dart';

class ConfirmPassword_TextFeild_LoginSignup extends StatefulWidget {
  ConfirmPassword_TextFeild_LoginSignup({
    super.key,
    required this.controller,
  });

  final TextEditingController controller;

  @override
  State<ConfirmPassword_TextFeild_LoginSignup> createState() =>
      _ConfirmPassword_TextFeild_LoginSignupState();
}

class _ConfirmPassword_TextFeild_LoginSignupState
    extends State<ConfirmPassword_TextFeild_LoginSignup> {
  var obscureText = true;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        hintText: "Enter Strong Password",
        labelText: "Confirm Password",
        prefixIcon: Icon(Icons.password),
        suffixIcon: GestureDetector(
            onTap: () {
              setState(() {
                obscureText = !obscureText;
              });
            },
            child: obscureText
                ? const Icon(Icons.visibility_off, color: tDarkGrey)
                : Icon(
                    Icons.visibility,
                    color: tDarkGrey,
                  )),
        labelStyle: TextStyle(color: tDarkGrey),
        hintStyle: TextStyle(color: tDarkGrey),
        enabledBorder: myinputborder(),
        focusedBorder: myfocusborder(),
      ),
    );
  }
}
