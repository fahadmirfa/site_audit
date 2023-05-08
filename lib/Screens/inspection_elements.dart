import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:site_audit/Screens/list_inspect_elements/bathrooms.dart';
import '../constants/colors.dart';
import '../widgets/iconbutton.dart';

class InspectionElements extends StatelessWidget {
  const InspectionElements({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: tDarkGrey,
            title: Text(
              "Inspection Elements",
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
          body: Column(
            children: [
              const SizedBox(height: 20),
              Expanded(
                child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (BuildContext, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const ListInspectionElmentsBathroom()));
                      },
                      child: Container(
                        width: double.infinity,
                        margin: const EdgeInsets.fromLTRB(0, 15, 0, 5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: tGreenLight),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(10, 15, 5, 15),
                          child: Row(children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                              child: Text("Bathroom",
                                  style: Theme.of(context)
                                      .textTheme
                                      .headlineMedium
                                      ?.copyWith(
                                          fontWeight: FontWeight.w500)),
                            ),
                            const Spacer(),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0,8,23,8),
                              child: SvgPicture.asset(
                                "assets/arrowforward.svg",
                                height: 18,
                                width: 18,
                                fit: BoxFit.scaleDown,
                              ),
                            )
                          ]),
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          )),
    );
  }
}
