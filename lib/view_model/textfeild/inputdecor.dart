import 'package:flutter/material.dart';

import '../../constants/colors.dart';

UnderlineInputBorder myInputBorder() {
  //return type is OutlineInputBorder
  return const UnderlineInputBorder(borderSide: BorderSide(color: Colors.black));
}

UnderlineInputBorder myFocusBorder() {
  return const UnderlineInputBorder(
    borderSide: BorderSide(color: Colors.black),
  );
}

OutlineInputBorder myFocusOtpBorder() {
  return OutlineInputBorder(
    borderSide: BorderSide(color: textFieldOtpBorder),
  );
}

OutlineInputBorder myNonFocusOtpBorder() {
  return OutlineInputBorder(
      borderSide: BorderSide(
    color: textFieldOtpBorderNonFocuses,
    width: 1.0,
  ));
}
