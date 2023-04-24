import 'package:flutter/material.dart';
import 'package:site_audit/Screens/list_inspect_elements/bathrooms.dart';
import 'package:site_audit/Screens/list_inspect_elements/building.dart';
import 'package:site_audit/Screens/list_inspect_elements/cylinder_room.dart';
import 'package:site_audit/Screens/list_inspect_elements/dining_room.dart';
import 'package:site_audit/Screens/list_inspect_elements/electric_&_gas_meter.dart';
import 'package:site_audit/Screens/list_inspect_elements/front_doors.dart';
import 'package:site_audit/constants/sizes.dart';
import '../constants/colors.dart';
import '../widgets/iconbutton.dart';
import '../widgets/inspec_element_container/inspec_element_container.dart';
import 'list_inspect_elements/bedrooms.dart';

class InspectionElments extends StatelessWidget {
  const InspectionElments({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: tDarkGrey,
            title: Text(
              "Inspection Elements",
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
                  InspecElementContainer(
                      inspecelement_text: "Bathrooms",
                      inspecelement_onpressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    ListInspectionElmentsBathroom()));
                      }),
                  SizedBox(
                    height: tDefaultSize - 15,
                  ),
                  InspecElementContainer(
                      inspecelement_text: "Bedrooms",
                      inspecelement_onpressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    ListInspectionElmentsBedroom()));
                      }),
                  SizedBox(
                    height: tDefaultSize - 15,
                  ),
                  InspecElementContainer(
                      inspecelement_text: "Building",
                      inspecelement_onpressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    ListInspectionElmentsBuilding()));
                      }),
                  SizedBox(
                    height: tDefaultSize - 15,
                  ),
                  InspecElementContainer(
                      inspecelement_text: "Cylinder Room",
                      inspecelement_onpressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    ListInspectionElmentsCylinderRoom()));
                      }),
                  SizedBox(
                    height: tDefaultSize - 15,
                  ),
                  InspecElementContainer(
                      inspecelement_text: "Dining Room",
                      inspecelement_onpressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    ListInspectionElmentsDiningRoom()));
                      }),
                  SizedBox(
                    height: tDefaultSize - 15,
                  ),
                  InspecElementContainer(
                      inspecelement_text: "Electric & Gas Meters",
                      inspecelement_onpressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    ListInspectionElmentsElectricOrGasMeter()));
                      }),
                  SizedBox(
                    height: tDefaultSize - 15,
                  ),
                  InspecElementContainer(
                      inspecelement_text: "Front Doors",
                      inspecelement_onpressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    ListInspectionElmentsFrontDoor()));
                      }),
                  SizedBox(
                    height: tDefaultSize - 15,
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
