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
      height: 56,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: tGreenLight,
      ),
      child: Padding(
        padding: const EdgeInsets.only(
            top: 16.0, bottom: 16.0, left: 24.0, right: 24.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              inspecelement_text,
              style: Theme.of(context)
                  .textTheme
                  .headline4
                  ?.copyWith(fontWeight: FontWeight.w500),
            ),
            GestureDetector(
              onTap: inspecelement_onpressed,
              child: SvgPicture.asset(
                "assets/arrowforward.svg",
                height: 12,
                width: 12,
                fit: BoxFit.scaleDown,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
