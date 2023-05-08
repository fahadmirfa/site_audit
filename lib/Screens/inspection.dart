import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:site_audit/Screens/inspection_home_progress.dart';
import '../constants/colors.dart';
import '../dataModels/AllInspectionResponse.dart';
import '../widgets/iconbutton.dart';

class Inspections extends StatefulWidget {
  const Inspections({Key? key}) : super(key: key);

  @override
  State<Inspections> createState() => _InspectionsState();
}

class _InspectionsState extends State<Inspections> {
  List<AllInspectionResponse> allInspectionResponse = [];

  @override
  void initState() {
    super.initState();
    // initialize count to 0
    allInspectionResponse = [
      AllInspectionResponse(
          "New Project", "Inspection in Islamabad", "2 Mar", "IN PROGRESS"),
      AllInspectionResponse(
          "New Project", "Inspection in Islamabad and the area of lahore", "2 Mar", "COMPLETED")
    ];
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: tDarkGrey,
            title: Text(
              "Inspections",
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
          body: Column(children: [
            const SizedBox(height: 20),
            Container(
              margin: const EdgeInsets.fromLTRB(20, 10, 0, 10),
              alignment: Alignment.topLeft,
              child: Text("All Inspections",
                  style: Theme.of(context).textTheme.headlineMedium),
            ),
            const SizedBox(
              height: 10,
            ),
            _viewInspectionContainer()
          ])),
    );
  }

  Widget _viewInspectionContainer() {
    return Expanded(
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: allInspectionResponse.length,
        itemBuilder: (context, index) {
          var inspectionData = allInspectionResponse;
          return GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const InspectionHomeProgress()));
            },
            child: Container(
              width: double.infinity,
              margin: const EdgeInsets.fromLTRB(16, 5, 16, 5),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.1),
                    spreadRadius: 5,
                    blurRadius: 5, // changes position of shadow
                  ),
                ],
                borderRadius: BorderRadius.circular(10),
                color: inspectionData[index].progress == "IN PROGRESS"
                    ? allInspectionInProgress
                    : allInspectionCompleted,
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 7, 10, 7),
                child: Column(
                  children: [
                    Row(children: [
                      Padding(
                          padding: const EdgeInsets.all(8),
                          child: Column(children: [
                            SvgPicture.asset(
                              "assets/searchstatus.svg",
                              height: 20,
                              width: 20,
                              fit: BoxFit.scaleDown,
                              color: allInspectionarrow,
                            ),
                            const Padding(
                                padding: EdgeInsets.only(top: 10),
                                child: Text(""))
                          ])),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                              child: Text(inspectionData[index].projectName,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium
                                      ?.copyWith(
                                        fontSize: 9,
                                        color: const Color(0xff79818d),
                                      )),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(5, 1, 0, 0),
                              child: SizedBox(
                                width: MediaQuery.of(context).size.width * 0.63,
                                child: Text(inspectionData[index].inspection,
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyLarge
                                        ?.copyWith(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 12,
                                            color: allInspectionrowLargeText)),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10, left: 5),
                              child: Text(inspectionData[index].progress,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyLarge
                                      ?.copyWith(
                                    fontWeight: FontWeight.w700,
                                          fontSize: 10,
                                          color: inspectionData[index]
                                                      .progress ==
                                                  "IN PROGRESS"
                                              ? allInspectionInProgressText
                                              : allInspectionCompletedText)),
                            ),
                          ]),
                      const Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(8, 8, 0, 8),
                              child: SvgPicture.asset(
                                "assets/arrowforward.svg",
                                height: 20,
                                width: 20,
                                fit: BoxFit.scaleDown,
                              ),
                            ),
                            Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Text(inspectionData[index].date,
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyMedium
                                        ?.copyWith(
                                            color: allInspectiondateText,
                                            fontWeight: FontWeight.w500)))
                          ],
                        ),
                      ),
                    ]),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
