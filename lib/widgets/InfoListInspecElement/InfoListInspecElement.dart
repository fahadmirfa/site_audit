import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../constants/colors.dart';

class InfoListInspecElement extends StatefulWidget {
  final VoidCallback? infoInspecElementYesOnPressed;
  final VoidCallback? infoInspecElementNoOnPressed;

  final String infoInspecElementText;
  const InfoListInspecElement({
    super.key,
    this.infoInspecElementYesOnPressed,
    required this.infoInspecElementText,
    this.infoInspecElementNoOnPressed,
  });

  @override
  State<InfoListInspecElement> createState() => _InfoListInspecElementState();
}

class _InfoListInspecElementState extends State<InfoListInspecElement> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 270,
      width: MediaQuery.of(context).size.width,
      color: tWhiteColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 24.0, left: 16, bottom: 8),
            child: Text(
              widget.infoInspecElementText,
              style: Theme.of(context).textTheme.headline4,
            ),
          ),
          Container(
            height: 56,
            color: tInspecItemListYesLight,
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 8.0, bottom: 8.0, left: 24.0, right: 24.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Yes",
                    style: Theme.of(context).textTheme.headline4?.copyWith(
                        color: tDarkGrey, fontWeight: FontWeight.w400),
                  ),
                  GestureDetector(
                    onTap: widget.infoInspecElementNoOnPressed,
                    child: SvgPicture.asset(
                      "assets/arrowforward.svg",
                      height: 16,
                      width: 16,
                      fit: BoxFit.scaleDown,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Container(
            height: 56,
            color: tInspecItemListNoLight,
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 8.0, bottom: 8.0, left: 24.0, right: 24.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: widget.infoInspecElementNoOnPressed,
                    child: SvgPicture.asset(
                      "assets/arrowback.svg",
                      height: 16,
                      width: 16,
                      fit: BoxFit.scaleDown,
                    ),
                  ),
                  Text(
                    "No",
                    style: Theme.of(context).textTheme.headline4?.copyWith(
                        color: tDarkGrey, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0, left: 16.0, right: 16.0),
            child: Container(
              height: 56,
              width: MediaQuery.of(context).size.width,
              color: tGreyColorLight,
              child: Padding(
                padding: const EdgeInsets.only(top: 16, left: 10.0, bottom: 16),
                child: GestureDetector(
                  onTap: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SvgPicture.asset(
                        "assets/galleryadd.svg",
                        height: 20,
                        width: 20,
                        fit: BoxFit.scaleDown,
                      ),
                      SizedBox(
                        width: 9.33,
                      ),
                      Text(
                        "Add Photos",
                        style: Theme.of(context)
                            .textTheme
                            .headline4
                            ?.copyWith(color: tDarkGrey),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

