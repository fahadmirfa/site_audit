import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class ElevateBtn extends StatelessWidget {
  final String elevatetext;
  final Color elevatebtncolorfrgrund;
  final Color elevatebtncolorbggrund;
  final Color elevatebtncolorborder;
  final double elevatebtnradius;
  final double elevatefntsize;
  final double elevatebtnpadding;
  final VoidCallback elevatebtn_onpressed;
  const ElevateBtn({
    super.key,
    required this.elevatetext,
    required this.elevatebtncolorfrgrund,
    required this.elevatebtncolorbggrund,
    required this.elevatebtnradius,
    required this.elevatefntsize,
    required this.elevatebtnpadding,
    required this.elevatebtncolorborder,
    required this.elevatebtn_onpressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: elevatebtn_onpressed,
      child: Text(elevatetext.toUpperCase(),
          style: TextStyle(fontSize: elevatefntsize)),
      style: ButtonStyle(
        padding: MaterialStateProperty.all<EdgeInsets>(
            EdgeInsets.all(elevatebtnpadding)),
        foregroundColor:
            MaterialStateProperty.all<Color>(elevatebtncolorfrgrund),
        backgroundColor:
            MaterialStateProperty.all<Color>(elevatebtncolorbggrund),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(elevatebtnradius),
            side: BorderSide(color: elevatebtncolorborder),
          ),
        ),
      ),
    );
  }
}
