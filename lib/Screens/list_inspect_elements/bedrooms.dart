import 'package:flutter/material.dart';
import '../../constants/colors.dart';
import '../../view_model/info_list_inspec_details/info_list_inspec_details.dart';
import '../../widgets/iconbutton.dart';

class ListInspectionElmentsBedroom extends StatefulWidget {
  const ListInspectionElmentsBedroom({Key? key}) : super(key: key);

  @override
  State<ListInspectionElmentsBedroom> createState() =>
      _ListInspectionElmentsBedroomState();
}

class _ListInspectionElmentsBedroomState
    extends State<ListInspectionElmentsBedroom> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: tDarkGrey,
            title: Text(
              "Bedrooms",
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
              padding: const EdgeInsets.only(
                top: 24.0,
              ),
              child: Column(
                children: [
                  InfoListInspecDetails(infoListDetailsText: "Finishes"),
                  SizedBox(
                    height: 16,
                  ),
                  InfoListInspecDetails(infoListDetailsText: "Doors"),
                  SizedBox(
                    height: 16,
                  ),
                  InfoListInspecDetails(infoListDetailsText: "Glazing/Windows"),
                  SizedBox(
                    height: 16,
                  ),
                  InfoListInspecDetails(infoListDetailsText: "Heting/Plumbing"),
                  SizedBox(
                    height: 16,
                  ),
                  InfoListInspecDetails(infoListDetailsText: "Carpets/Floors"),
                  SizedBox(
                    height: 16,
                  ),
                  InfoListInspecDetails(
                      infoListDetailsText: "Wardrobes/Furniture"),
                  SizedBox(
                    height: 16,
                  ),
                  InfoListInspecDetails(infoListDetailsText: "Front Doors"),
                  SizedBox(
                    height: 16,
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
