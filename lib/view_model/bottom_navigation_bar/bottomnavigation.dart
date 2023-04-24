import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:site_audit/Screens/profile.dart';
import '../../Screens/glossary.dart';
import '../../Screens/home.dart';
import '../../Screens/inspection.dart';


class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  final List<Widget> pageList = <Widget> [

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
          bottomNavigationBar:  BottomNavigationBar(

backgroundColor: Colors.white,
elevation: 10.0,
selectedItemColor: Colors.black,
unselectedItemColor: Colors.grey,
showSelectedLabels: true,
showUnselectedLabels: true,
selectedIconTheme: IconThemeData(size: 30,),
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
              setState(() {
                _selectedIndex = value;
              });
            },
            items: [
              BottomNavigationBarItem(icon:  SvgPicture.asset("assets/home.svg",height: 22,width: 22,
                fit: BoxFit.scaleDown,
              ), label: "Home"),
              BottomNavigationBarItem(icon:  SvgPicture.asset("assets/documentnormal.svg",height: 22,width: 22,
                fit: BoxFit.scaleDown,
              ), label: "Inspections"),
              BottomNavigationBarItem(icon:  SvgPicture.asset("assets/note.svg",height: 22,width: 22,
                fit: BoxFit.scaleDown,
              ),label: "Glossary"),
              BottomNavigationBarItem(icon:  SvgPicture.asset("assets/usersquare.svg",height: 22,width: 22,
                fit: BoxFit.scaleDown,
              ), label: "Profile"),

            ],


        ),
      ),
    );
  }
}

















