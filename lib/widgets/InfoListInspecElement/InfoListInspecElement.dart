import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_swipe_button/flutter_swipe_button.dart';
import '../../constants/colors.dart';

class InfoListInspecElement extends StatefulWidget {
  final VoidCallback? infoInspecElementYesOnPressed;
  final VoidCallback? infoInspecElementNoOnPressed;

  final String infoInspecElementText;

  InfoListInspecElement({
    super.key,
    this.infoInspecElementYesOnPressed,
    required this.infoInspecElementText,
    this.infoInspecElementNoOnPressed,
  });

  bool yesSwiped = false;
  bool noSwiped = false;

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
          //c1
          // Container(
          //   height: 56,
          //   color: tInspecItemListYesLight,
          //   child: Padding(
          //     padding: const EdgeInsets.only(
          //         top: 8.0, bottom: 8.0, left: 24.0, right: 24.0),
          //     child: Row(
          //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //       children: [
          //         Text(
          //           "Yes",
          //           style: Theme.of(context).textTheme.headline4?.copyWith(
          //               color: tDarkGrey, fontWeight: FontWeight.w400),
          //         ),
          //         GestureDetector(
          //           onTap: widget.infoInspecElementNoOnPressed,
          //           child: SvgPicture.asset(
          //             "assets/arrowforward.svg",
          //             height: 16,
          //             width: 16,
          //             fit: BoxFit.scaleDown,
          //           ),
          //         ),
          //       ],
          //     ),
          //   ),
          // ),
          //c1.

          // GestureDetector(
          //     // onPanUpdate: (details) {
          //     // Swiping in right direction.
          //     onHorizontalDragUpdate: (details) {
          //       // Note: Sensitivity is integer used when you don't want to mess up vertical drag
          //       int sensitivity = 8;
          //       if (details.delta.dx > sensitivity) {
          //         setState(() {
          //           widget.yesSwiped = true;
          //         });
          //       }
          //
          //       // Swiping in left direction.
          //       if (details.delta.dx < -sensitivity) {
          //         // setState(() {
          //         //   widget.noSwiped = true;
          //         // });
          //       }
          //     },
          //     // },
          //     child:
          AnimatedSwitcher(
            duration: const Duration(milliseconds: 500),
            child: !widget.yesSwiped
                ? SwipeButton.expand(
                    borderRadius: BorderRadius.circular(10),
                    activeTrackColor: tInspecItemListYesLight,
                    activeThumbColor: Colors.green,
                    height: 56,
                    child: Text(
                      "Yes",
                      style: Theme.of(context).textTheme.headline4?.copyWith(
                          color: tDarkGrey, fontWeight: FontWeight.w400),
                    ),
                    onSwipe: () {
                      setState(() {
                        widget.yesSwiped = true;
                        widget.noSwiped = false;
                      });
                      // ScaffoldMessenger.of(context).showSnackBar(
                      //   SnackBar(
                      //     content: Center(
                      //       child: Text("Yes",style: Theme.of(context).textTheme.headline4?.copyWith(
                      //           color:  tWhiteColor, fontWeight: FontWeight.w400
                      //       ),),
                      //     ),
                      //     backgroundColor: tInspecItemListYesLight2,
                      //   ),
                      // );
                    },
                  )
                : GestureDetector(
                    onTap: () => {
                      // widget.infoInspecElementNoOnPressed;
                      setState(() {
                        widget.yesSwiped = false;
                      })
                    },
                    child: Container(
                      height: 56,
                      color: Colors.green,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 8.0, bottom: 8.0, left: 24.0, right: 24.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Yes",
                              style: Theme.of(context)
                                  .textTheme
                                  .headline4
                                  ?.copyWith(
                                      fontSize: 16,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
          ),
          SizedBox(
            height: 8,
          ),
          // GestureDetector(
          //     // onPanUpdate: (details) {
          //     // Swiping in right direction.
          //     onHorizontalDragUpdate: (details) {
          //       // Note: Sensitivity is integer used when you don't want to mess up vertical drag
          //       int sensitivity = 8;
          //       if (details.delta.dx > sensitivity) {
          //         setState(() {
          //           // widget.yesSwiped = true;
          //         });
          //       }
          //
          //       // Swiping in left direction.
          //       if (details.delta.dx < -sensitivity) {
          //         setState(() {
          //           widget.noSwiped = true;
          //         });
          //       }
          //     },
          //     // },
          //     child:
          AnimatedSwitcher(
            duration: const Duration(milliseconds: 500),
            child: !widget.noSwiped
                ? SwipeButton.expand(
                    borderRadius: BorderRadius.circular(10),
                    activeTrackColor: tInspecItDemListNoLight,
                    activeThumbColor: Colors.red,
                    height: 56,
                    child: Text(
                      "NO",
                      style: Theme.of(context).textTheme.headline4?.copyWith(
                          color: tDarkGrey, fontWeight: FontWeight.w400),
                    ),
                    onSwipe: () {
                      setState(() {
                        widget.noSwiped = true;
                        widget.yesSwiped = false;
                      });
                      //   ScaffoldMessenger.of(context).showSnackBar(
                      //     SnackBar(
                      //       content: Center(
                      //         child: Text(
                      //           "No",
                      //           style: Theme.of(context).textTheme.headline4?.copyWith(
                      //               color: tWhiteColor, fontWeight: FontWeight.w400),
                      //         ),
                      //       ),
                      //       backgroundColor: tInspecItDemListNoLight2,
                      //     ),
                      //   );
                    },
                  )
                : GestureDetector(
                    onTap: () => {
                      // widget.infoInspecElementNoOnPressed;
                      setState(() {
                        widget.noSwiped = false;
                      })
                    },
                    child: Container(
                      height: 56,
                      color: Colors.red,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 8.0, bottom: 8.0, left: 24.0, right: 24.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "No",
                              style: Theme.of(context)
                                  .textTheme
                                  .headline4
                                  ?.copyWith(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400),
                            )
                          ],
                        ),
                      ),
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
