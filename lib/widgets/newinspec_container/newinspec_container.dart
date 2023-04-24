import 'package:flutter/material.dart';
import '../../constants/colors.dart';
import '../textfeilds.dart';

class InputContainer extends StatelessWidget {
  final String inputlabeltext;
  final String inputhinttext;
  final Color inputcolor;
  final Icon inputicon;
  const InputContainer({
    super.key,
    required this.inputlabeltext,
    required this.inputcolor,
    required this.inputhinttext,
    required this.inputicon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(color: tGreenLight),
      child: TextFeilds(
        icon: inputicon,
        labeltext: inputlabeltext,
        hinttext: inputhinttext,
      ),
    );
  }
}
