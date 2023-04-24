import 'package:flutter/material.dart';
import 'package:site_audit/constants/colors.dart';
import '../view_model/textfeild/inputdecor.dart';

class TextFeilds extends StatefulWidget {
  final Icon icon;
  final String labeltext;
  final String hinttext;
  const TextFeilds({
    super.key,
    required this.icon,
    required this.labeltext,
    required this.hinttext,
  });

  @override
  State<TextFeilds> createState() => _TextFeildsState();
}

class _TextFeildsState extends State<TextFeilds> {
  @override
  Widget build(BuildContext context) {
    return TextField(
        decoration: InputDecoration(
      hintText: widget.hinttext,
      labelText: widget.labeltext,
      prefixIconColor: tDarkGrey,
      prefixIcon: widget.icon, labelStyle: TextStyle(color: tDarkGrey),

      border: myinputborder(), //normal border
      enabledBorder: myinputborder(), //enabled border
      focusedBorder: myfocusborder(), //focused border
      // set more border style like disabledBorder
    ));
  }
}
