import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_exsam/Screens/shefzScreens.dart';
import 'package:flutter_exsam/conistans/colors.dart';

import 'Order.dart';
import 'Profile.dart';

class Screens extends StatefulWidget {
  const Screens({super.key});

  @override
  State<Screens> createState() => _ScreensState();
}

class _ScreensState extends State<Screens> {
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    shefzScreens(),
    Orders(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [],
        ),
        child: SafeArea(
          child: BottomNavigationBar(
            selectedItemColor: kcolorsLogo,

            items: [
              BottomNavigationBarItem(
                  icon: Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(13),
                    ),
                    child: Icon(
                      Icons.restaurant,
                      color: Colors.white,
                    ),
                  ),
                  label: "Chefz"),
              BottomNavigationBarItem(
                  icon: Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(13),
                    ),
                    child: Icon(
                      Icons.list,
                      color: Colors.white,
                    ),
                  ),
                  label: "Orders"),
              BottomNavigationBarItem(
                  icon: Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(13),
                    ),
                    child: Icon(
                      Icons.person_outline,
                      color: Colors.white,
                    ),
                  ),
                  label: "Profile"),
            ],
            // selectedIconTheme: _selectedIndex,
            onTap: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
          ),
        ),
      ),
    );
  }
}
