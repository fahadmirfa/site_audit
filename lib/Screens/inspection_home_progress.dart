import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:site_audit/Screens/start_new_inspection.dart';
import '../constants/colors.dart';
import '../constants/sizes.dart';
import '../widgets/iconbutton.dart';

class InspectionHomeProgress extends StatelessWidget {
  const InspectionHomeProgress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final radius = MediaQuery.of(context).size.width * 0.17;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: tDarkGrey,
          title: Text(
            "inspection Home",
            style: Theme.of(context).textTheme.displayLarge,
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
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                const SizedBox(
                  height: 16,
                ),
                Container(
                  padding:
                      const EdgeInsets.only(top: 16, right: 6, left: 10, bottom: 16),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: tLight,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: tWhiteColor,
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 13.0, left: 18.0, bottom: 13, right: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Column(children: [
                                SvgPicture.asset(
                                  "assets/direct.svg",
                                  height: 25,
                                  width: 25,
                                  alignment: Alignment.center,
                                  fit: BoxFit.scaleDown,
                                ),
                              ]),
                              const SizedBox(
                                width: 18,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Project Name",
                                    style:
                                        Theme.of(context).textTheme.bodyMedium,
                                  ),
                                  Text(
                                    "Home Inspection in Model Town",
                                    style:
                                        Theme.of(context).textTheme.displaySmall,
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: tDefaultSize - 23,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: tWhiteColor,
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 13.0, left: 18.0, bottom: 13, right: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SvgPicture.asset(
                                "assets/usersquare.svg",
                                height: 25,
                                width: 25,
                                fit: BoxFit.scaleDown,
                              ),
                              const SizedBox(
                                width: 18,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Client Name",
                                    style:
                                        Theme.of(context).textTheme.bodyMedium,
                                  ),
                                  Text(
                                    "Mirza",
                                    style:
                                        Theme.of(context).textTheme.displaySmall,
                                  )
                                ],
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: tDefaultSize - 23,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: tWhiteColor,
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 13.0, left: 18.0, bottom: 13, right: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SvgPicture.asset(
                                "assets/building.svg",
                                height: 25,
                                width: 25,
                                fit: BoxFit.scaleDown,
                              ),
                              const SizedBox(
                                width: 18,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Builder Name",
                                    style:
                                        Theme.of(context).textTheme.bodyMedium,
                                  ),
                                  Text(
                                    "Sultan",
                                    style:
                                        Theme.of(context).textTheme.displaySmall,
                                  )
                                ],
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      SizedBox(
                        height: 44,
                        width: MediaQuery.of(context).size.width,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const StartNewInspection()));
                          },
                          child: Text(
                            "Continue Inspection",
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 24.0,
                ),
                Text(
                  "Inspection Progress",
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                const SizedBox(
                  height: 16,
                ),
                Container(
                  padding: const EdgeInsets.only(left: 16, right: 16),
                  height: 160,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: tLight,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 46.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "25% to Go",
                              style: Theme.of(context).textTheme.headlineMedium,
                            ),
                            const SizedBox(
                              height: 8.0,
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.45,
                              child: Text(
                                "You have inspected 75% of the project",
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineMedium
                                    ?.copyWith(color: tGreyColor),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: tWhiteColor,
                            borderRadius: BorderRadius.circular(radius)),
                        child: CircularPercentIndicator(
                          radius: radius,
                          lineWidth: 10,
                          backgroundColor: tIndicatorGray,
                          progressColor: tDarkGrey,
                          percent: 0.75,
                          center: Text(
                            "75%",
                            style: Theme.of(context).textTheme.displayMedium,
                          ),
                          circularStrokeCap: CircularStrokeCap.round,
                        ),
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
