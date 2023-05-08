import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:site_audit/Screens/inspection.dart';
import 'package:site_audit/Screens/start_new_inspection.dart';
import 'package:site_audit/constants/colors.dart';
import '../constants/sizes.dart';
import '../widgets/iconbutton.dart';
import 'inspection_home_progress.dart';

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
            padding: const EdgeInsets.only(left: 16.0, right: 16, top: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Welcome User",
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                const SizedBox(
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
                                          .headlineMedium
                                          ?.copyWith(
                                              fontWeight: FontWeight.w700),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                      },
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Watch Tutorial",
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyLarge,
                                          ),
                                          const SizedBox(
                                            width: 5,
                                          ),
                                          const Icon(
                                            Icons.play_arrow,
                                            size: 15.0,
                                            color: tWatchTutorial,
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                const Image(image: AssetImage("assets/home1.png"))
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
                                  "Start New Inspection",
                                  style: Theme.of(context).textTheme.titleLarge,
                                )))
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                const Divider(
                  thickness: 0.2,
                  color: Colors.black,
                ),
                const SizedBox(
                  height: 24,
                ),
                Text(
                  "Existing Inspections",
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                const SizedBox(
                  height: tDefaultSize,
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10), color: tLight),
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8, right: 8, bottom: 20),
                    child: Column(
                      children: [
                        SizedBox(
                          width: double.infinity,
                          child: ListView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: 2,
                            itemBuilder: (context, index) {
                              return GestureDetector(
                                onTap: (){
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => const InspectionHomeProgress()));
                                },
                                child: Container(
                                  width: double.infinity,
                                  margin: const EdgeInsets.fromLTRB(0, 15, 0, 5),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: tWhiteColor),
                                  child: Padding(
                                    padding: const EdgeInsets.fromLTRB(10, 10, 5, 10),
                                    child: Row(children: [
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(5, 5, 5, 5),
                                        child: SvgPicture.asset(
                                          "assets/searchstatus.svg",
                                          height: 25,
                                          width: 25,
                                          fit: BoxFit.scaleDown,
                                        ),),
                                      Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                                              child: Text("Project Name",
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .bodyMedium),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                                              child: SizedBox(
                                                width: MediaQuery.of(context).size.width*0.59,
                                                child: Text("Home Inspection In Ghouri Town",
                                                    style: Theme.of(context)
                                                        .textTheme.displaySmall),
                                              ),
                                            ),
                                          ]),
                                      const Spacer(),
                                      Padding(
                                        padding: const EdgeInsets.all(8),
                                        child: SvgPicture.asset(
                                          "assets/arrowforward.svg",
                                          height: 22,
                                          width: 22,
                                          fit: BoxFit.scaleDown,
                                        ),
                                      )
                                    ]),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                        const SizedBox(
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
                                          builder: (context) => const Inspections()));
                                },
                                child: Text(
                                  "View All Inspections",
                                  style: Theme.of(context).textTheme.titleLarge,
                                )))
                      ],
                    ),
                  ),
                ),
                const SizedBox(
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
