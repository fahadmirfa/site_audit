import 'package:flutter/material.dart';
import '../../constants/colors.dart';
import '../../widgets/InfoListInspecElement/InfoListInspecElement.dart';

class InfoListInspecDetails extends StatefulWidget {
  final String infoListDetailsText;

  const InfoListInspecDetails({
    Key? key,
    required this.infoListDetailsText,
  }) : super(key: key);

  @override
  State<InfoListInspecDetails> createState() => _InfoListInspecDetailsState();
}

class _InfoListInspecDetailsState extends State<InfoListInspecDetails> {
  bool _isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: (){
            toggle();
          },
          child: Container(
              height: 56,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: _isExpanded ? tDarkGrey : tGreenLight,
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 16.0, bottom: 16.0, left: 24.0, right: 23.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      widget.infoListDetailsText,
                      style: _isExpanded
                          ? Theme.of(context).textTheme.headline4?.copyWith(
                              color: tWhiteColor, fontWeight: FontWeight.w500)
                          : Theme.of(context).textTheme.headline4?.copyWith(
                              color: tDarkGrey, fontWeight: FontWeight.w500),
                    ),
                    ExpandIcon(
                      isExpanded: _isExpanded,
                      color: tDarkGrey,
                      expandedColor: tWhiteColor,
                      onPressed: (bool isExpanded) {
                        setState(() {
                          _isExpanded = !isExpanded;
                        });
                      },
                    )
                  ],
                ),
              )),
        ),
        if (_isExpanded)
          Padding(
            padding: EdgeInsets.only(top: 24, left: 16, right: 16),
            child: SingleChildScrollView(
              child: Container(
                  color: tGreyColorLight,
                  child: Column(
                    children: [
                      InfoListInspecElement(
                        infoInspecElementText: "Door Operational?",
                      ),
                      SizedBox(
                        height: 16.0,
                      ),
                      InfoListInspecElement(
                        infoInspecElementText: "Door Are fitted square align??",
                      ),
                      SizedBox(
                        height: 16.0,
                      ),
                      InfoListInspecElement(
                        infoInspecElementText: "Free from damage?",
                      ),
                      SizedBox(
                        height: 16.0,
                      ),
                      InfoListInspecElement(
                        infoInspecElementText: "Clean & Finished?",
                      ),
                      SizedBox(
                        height: 16.0,
                      ),
                      InfoListInspecElement(
                        infoInspecElementText: "Draft & Intumescent Strips?",
                      ),
                      SizedBox(
                        height: 16.0,
                      ),
                    ],
                  )),
            ),
          ),
      ],
    );
  }

  void toggle() {
    setState(() {
      _isExpanded = !_isExpanded;
    });
  }
}
