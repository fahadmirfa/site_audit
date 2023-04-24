import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import '../constants/colors.dart';
import '../constants/sizes.dart';
import '../widgets/iconbutton.dart';

class InspectionHomeCompleted extends StatelessWidget {
  const InspectionHomeCompleted({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: tDarkGrey,
          title: Text(
            "inspection Home",
            style: Theme.of(context).textTheme.headline1,
          ),
          leading: IconButtons(
            icon: Icons.arrow_back,
            size: 24,
            color: tWhiteColor,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          actions: [
            IconButtons(
              icon: Icons.more_vert,
              size: 24,
              color: tWhiteColor,
              onPressed: () {},
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16, top: 32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Inspection Information",
                  style: Theme.of(context).textTheme.headline4,
                ),
                SizedBox(
                  height: tDefaultSize,
                ),
                Container(
                  padding:
                      EdgeInsets.only(top: 16, right: 6, left: 10, bottom: 16),
                  height: 276,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: tLight,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: 56,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: tWhiteColor,
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 13.0, left: 18.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SvgPicture.asset(
                                "assets/direct.svg",
                                height: 25,
                                width: 25,
                                fit: BoxFit.scaleDown,
                              ),
                              SizedBox(
                                width: 18,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Project Name",
                                    style:
                                        Theme.of(context).textTheme.bodyText2,
                                  ),
                                  Text(
                                    "Home Inspection in Model Town",
                                    style:
                                        Theme.of(context).textTheme.headline3,
                                  )
                                ],
                              ),
                              SizedBox(
                                width: 20,
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: tDefaultSize - 23,
                      ),
                      Container(
                        height: 56,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: tWhiteColor,
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 13.0, left: 18.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SvgPicture.asset(
                                "assets/usersquare.svg",
                                height: 25,
                                width: 25,
                                fit: BoxFit.scaleDown,
                              ),
                              SizedBox(
                                width: 18,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Client Name",
                                    style:
                                        Theme.of(context).textTheme.bodyText2,
                                  ),
                                  Text(
                                    "Mirza",
                                    style:
                                        Theme.of(context).textTheme.headline3,
                                  )
                                ],
                              ),
                              SizedBox(
                                width: 20,
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: tDefaultSize - 23,
                      ),
                      Container(
                        height: 56,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: tWhiteColor,
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 13.0, left: 18.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SvgPicture.asset(
                                "assets/building.svg",
                                height: 25,
                                width: 25,
                                fit: BoxFit.scaleDown,
                              ),
                              SizedBox(
                                width: 18,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Builder Name",
                                    style:
                                        Theme.of(context).textTheme.bodyText2,
                                  ),
                                  Text(
                                    "Sultan",
                                    style:
                                        Theme.of(context).textTheme.headline3,
                                  )
                                ],
                              ),
                              SizedBox(
                                width: 20,
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      SizedBox(
                        height: 44,
                        width: MediaQuery.of(context).size.width,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            "Generate Report",
                            style: Theme.of(context).textTheme.headline6,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 24.0,
                ),
                Text(
                  "Inspection Progress",
                  style: Theme.of(context).textTheme.headline4,
                ),
                SizedBox(
                  height: 16,
                ),
                Container(
                  padding: EdgeInsets.only(left: 16, right: 16),
                  height: 160,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: tLight,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 46.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Well Done!",
                              style: Theme.of(context).textTheme.headline4,
                            ),
                            SizedBox(
                              height: 8.0,
                            ),
                            Text(
                              "You have completed\nyour inspection.",
                              style: Theme.of(context)
                                  .textTheme
                                  .headline4
                                  ?.copyWith(color: tGreyColor),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 55,
                      ),
                      CircularPercentIndicator(
                        radius: 60.0,
                        lineWidth: 10,
                        backgroundColor: Color(0xfff2f4f7),
                        progressColor: tDarkGrey,
                        percent: 1,
                        center: Text(
                          "100%",
                          style: Theme.of(context).textTheme.headline2,
                        ),
                        circularStrokeCap: CircularStrokeCap.round,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
