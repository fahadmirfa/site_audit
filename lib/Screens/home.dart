import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:site_audit/Screens/inspection.dart';
import 'package:site_audit/Screens/start_new_inspection.dart';
import 'package:site_audit/constants/colors.dart';
import '../constants/sizes.dart';
import '../widgets/iconbutton.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: tDarkGrey,
          title: Text(
            "Home",
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
            padding: const EdgeInsets.only(left: 16.0, right: 16, top: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Welcome User",
                  style: Theme.of(context).textTheme.headline4,
                ),
                SizedBox(
                  height: 16,
                ),
                Container(
                  height: 256,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: tLight, borderRadius: BorderRadius.circular(8.0)),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 24.0, left: 16, right: 16, bottom: 16),
                    child: Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 148,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            color: tWhiteColor,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 14.0, left: 14, right: 14, bottom: 14),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      "Home\nInspection\nMade Easy",
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline4
                                          ?.copyWith(
                                              fontWeight: FontWeight.w700),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        print("object");
                                      },
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Watch Tutorial",
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyText1,
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Icon(
                                            Icons.play_arrow,
                                            size: 15.0,
                                            color: tWatchTutorial,
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Image(image: AssetImage("assets/home1.png"))
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
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              StartNewInspection()));
                                },
                                child: Text(
                                  "Start New Inspection",
                                  style: Theme.of(context).textTheme.headline6,
                                )))
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                Divider(
                  thickness: 0.2,
                  color: Colors.black,
                ),
                SizedBox(
                  height: 24,
                ),
                Text(
                  "Existing Inspections",
                  style: Theme.of(context).textTheme.headline4,
                ),
                SizedBox(
                  height: tDefaultSize,
                ),
                Container(
                  padding: EdgeInsets.only(top: 16, right: 8, left: 8),
                  height: 212,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: tLight,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Column(
                    children: [
                      Container(
                          height: 60,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            color: tWhiteColor,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 13.0, left: 18.0, right: 18.0),
                            child: SingleChildScrollView(
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        children: [
                                          SvgPicture.asset(
                                            "assets/searchstatus.svg",
                                            height: 25,
                                            width: 25,
                                            fit: BoxFit.scaleDown,
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        width: 18,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Project Name",
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyText2,
                                          ),
                                          Text(
                                            "Home Inspection in Lahore",
                                            style: Theme.of(context)
                                                .textTheme
                                                .headline3,
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        width: 55,
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      StartNewInspection()));
                                        },
                                        child: SvgPicture.asset(
                                          "assets/arrowforward.svg",
                                          height: 12,
                                          width: 12,
                                          fit: BoxFit.scaleDown,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          )),
                      SizedBox(
                        height: tDefaultSize - 23,
                      ),
                      Container(
                          height: 60,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            color: tWhiteColor,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 13.0, left: 18.0, right: 18.0),
                            child: SingleChildScrollView(
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        children: [
                                          SvgPicture.asset(
                                            "assets/searchstatus.svg",
                                            height: 25,
                                            width: 25,
                                            fit: BoxFit.scaleDown,
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        width: 18,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Project Name",
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyText2,
                                          ),
                                          Text(
                                            "Home Inspection in Lahore",
                                            style: Theme.of(context)
                                                .textTheme
                                                .headline3,
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        width: 55,
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      StartNewInspection()));
                                        },
                                        child: SvgPicture.asset(
                                          "assets/arrowforward.svg",
                                          height: 12,
                                          width: 12,
                                          fit: BoxFit.scaleDown,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          )),
                      SizedBox(
                        height: tDefaultSize - 15,
                      ),
                      SizedBox(
                          height: 44,
                          width: MediaQuery.of(context).size.width,
                          child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Inspections()));
                              },
                              child: Text(
                                "View All Inspections",
                                style: Theme.of(context).textTheme.headline6,
                              )))
                    ],
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
