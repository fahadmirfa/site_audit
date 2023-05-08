import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:site_audit/Screens/profile.dart';
import '../../Screens/glossary.dart';
import '../../Screens/home.dart';
import '../../Screens/inspection.dart';
import '../../constants/colors.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  final List<Widget> pageList = <Widget>[
    Home(),
    Inspections(),
    Glossary(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: pageList[_selectedIndex],
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0xffF8FFFA), Color(0xffFFFBFE)
              ],
            ),
          ),
          child: BottomNavigationBar(
            elevation: 10.0,
            selectedItemColor: bottomNavigationSelectecText,
            unselectedItemColor: bottomNavigationUnSelectedIcon,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            selectedIconTheme: IconThemeData(
              size: 30,
            ),
            unselectedIconTheme: IconThemeData(size: 25),
            selectedLabelStyle: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
            unselectedLabelStyle: TextStyle(
              fontSize: 14,
            ),
            selectedFontSize: 16,
            unselectedFontSize: 14,
            type: BottomNavigationBarType.fixed,
            currentIndex: _selectedIndex,
            onTap: (value) {
              print("The value in the index is {$value}");
              setState(() {
                _selectedIndex = value;
              });
            },
            items: [
              BottomNavigationBarItem(
                  icon: Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: _selectedIndex == 0?bottomNavigationSelectedIconBackground:Colors.transparent),
                    padding: EdgeInsets.all(10),
                    child: SvgPicture.asset(
                      "assets/home.svg",
                      height: 22,
                      width: 22,
                      fit: BoxFit.scaleDown,
                      color: _selectedIndex == 0?Colors.white:bottomNavigationUnSelectedIcon,
                    ),
                  ),
                  label: "Home"),
              BottomNavigationBarItem(
                  icon:Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: _selectedIndex == 1?bottomNavigationSelectedIconBackground:Colors.transparent),
                    padding: EdgeInsets.all(10),
                    child: SvgPicture.asset(
                      "assets/documentnormal.svg",
                      height: 22,
                      width: 22,
                      fit: BoxFit.scaleDown,
                      color: _selectedIndex == 1?Colors.white:bottomNavigationUnSelectedIcon,
                    ),
                  ),
                  label: "Inspections"),
              BottomNavigationBarItem(
                  icon: Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: _selectedIndex == 2?bottomNavigationSelectedIconBackground:Colors.transparent),
                    padding: EdgeInsets.all(10),
                    child: SvgPicture.asset(
                      "assets/note.svg",
                      height: 22,
                      width: 22,
                      fit: BoxFit.scaleDown,
                      color: _selectedIndex == 2?Colors.white:bottomNavigationUnSelectedIcon,
                    ),
                  ),
                  label: "Glossary"),
              BottomNavigationBarItem(
                  icon:Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: _selectedIndex == 3?bottomNavigationSelectedIconBackground:Colors.transparent),
                    padding: EdgeInsets.all(10),
                    child: SvgPicture.asset(
                      "assets/usersquare.svg",
                      height: 22,
                      width: 22,
                      fit: BoxFit.scaleDown,
                      color: _selectedIndex == 3?Colors.white:bottomNavigationUnSelectedIcon,
                    ),
                  ),
                  label: "Profile"),
            ],
          ),
        ),
      ),
    );
  }
}
