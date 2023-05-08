import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../constants/colors.dart';

class InspecElementContainer extends StatelessWidget {
  final String inspecelement_text;

  final VoidCallback inspecelement_onpressed;

  const InspecElementContainer({
    required this.inspecelement_text,
    required this.inspecelement_onpressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
                width: double.infinity,
                margin: EdgeInsets.fromLTRB(0, 15, 0, 5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: tGreenLight),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(10, 15, 5, 15),
                  child: Row(children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                      child: Text(inspecelement_text,
                          style:Theme.of(context)
                              .textTheme
                              .headline4
                              ?.copyWith(fontWeight: FontWeight.w500)),
                    ),
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: SvgPicture.asset(
                        "assets/arrowforward.svg",
                        height: 18,
                        width: 18,
                        fit: BoxFit.scaleDown,
                      ),
                    )
                  ]),
                ),
              );
  }
}
