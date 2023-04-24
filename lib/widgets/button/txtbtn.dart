import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class TxtBttn extends StatelessWidget {
  final String txtbtntext;
  final Color txtbtncolorfrgrund;
  final Color txtbtncolorborder;
  final double txtbtnradius;
  final double txtfntsize;
  final double txtbtnpadding;
  final VoidCallback txtbtn_onpressed;
  const TxtBttn({
    super.key,
    required this.txtbtntext,
    required this.txtbtncolorfrgrund,
    required this.txtbtnradius,
    required this.txtfntsize,
    required this.txtbtnpadding,
    required this.txtbtncolorborder,
    required this.txtbtn_onpressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
        child: Text(txtbtntext.toUpperCase(),
            style: TextStyle(fontSize: txtfntsize)),
        style: ButtonStyle(
            padding: MaterialStateProperty.all<EdgeInsets>(
                EdgeInsets.all(txtbtnpadding)),
            foregroundColor:
                MaterialStateProperty.all<Color>(txtbtncolorfrgrund),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(txtbtnradius),
                    side: BorderSide(color: txtbtncolorborder)))),
        onPressed: txtbtn_onpressed);
  }
}
