import 'package:flutter/material.dart';
import '../constants/colors.dart';
import '../widgets/iconbutton.dart';

class Glossary extends StatelessWidget {
  const Glossary({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: tDarkGrey,
        title: Text(
          "Glossary",
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 24,
            ),
            Container(
              height: 40,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: tGreenLight,
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 6.0, left: 16, bottom: 6),
                child: Text(
                  "A",
                  style: Theme.of(context)
                      .textTheme
                      .headline2
                      ?.copyWith(fontSize: 24),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0, left: 16, right: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Apple",
                    style: Theme.of(context)
                        .textTheme
                        .headline4
                        ?.copyWith(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard",
                    maxLines: 3,
                    softWrap: true,
                    style: Theme.of(context).textTheme.headline6?.copyWith(
                        fontWeight: FontWeight.w400, color: tGreyColor),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    "Ant",
                    style: Theme.of(context)
                        .textTheme
                        .headline4
                        ?.copyWith(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard",
                    maxLines: 3,
                    softWrap: true,
                    style: Theme.of(context).textTheme.headline6?.copyWith(
                        fontWeight: FontWeight.w400, color: tGreyColor),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Container(
              height: 40,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: tGreenLight,
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 6.0, left: 16, bottom: 6),
                child: Text(
                  "B",
                  style: Theme.of(context)
                      .textTheme
                      .headline2
                      ?.copyWith(fontSize: 24),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0, left: 16, right: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Banana",
                    style: Theme.of(context)
                        .textTheme
                        .headline4
                        ?.copyWith(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard",
                    maxLines: 3,
                    softWrap: true,
                    style: Theme.of(context).textTheme.headline6?.copyWith(
                        fontWeight: FontWeight.w400, color: tGreyColor),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    "Ball",
                    style: Theme.of(context)
                        .textTheme
                        .headline4
                        ?.copyWith(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard",
                    maxLines: 3,
                    softWrap: true,
                    style: Theme.of(context).textTheme.headline6?.copyWith(
                        fontWeight: FontWeight.w400, color: tGreyColor),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Container(
              height: 40,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: tGreenLight,
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 6.0, left: 16, bottom: 6),
                child: Text(
                  "C",
                  style: Theme.of(context)
                      .textTheme
                      .headline2
                      ?.copyWith(fontSize: 24),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0, left: 16, right: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Carrot",
                    style: Theme.of(context)
                        .textTheme
                        .headline4
                        ?.copyWith(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard",
                    maxLines: 3,
                    softWrap: true,
                    style: Theme.of(context).textTheme.headline6?.copyWith(
                        fontWeight: FontWeight.w400, color: tGreyColor),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    "Cat",
                    style: Theme.of(context)
                        .textTheme
                        .headline4
                        ?.copyWith(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard",
                    maxLines: 3,
                    softWrap: true,
                    style: Theme.of(context).textTheme.headline6?.copyWith(
                        fontWeight: FontWeight.w400, color: tGreyColor),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 24,
            ),
          ],
        ),
      ),
    );
  }
}
