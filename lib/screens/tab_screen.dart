import 'package:flutter/material.dart';

import 'package:bae/screens/favorite.dart';
import 'package:bae/screens/men_love_name.dart';

import '../constants.dart';
import 'women_love_name.dart';

class TabScreen extends StatefulWidget {
  static const routeName = '/';
  @override
  _TabScreenState createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  final List _pages = [
    Men(),
    Women(),
    Favorite(),
  ];
  int _selectIndex = 0;
  void _selectPage(int index) {
    setState(() {
      _selectIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    var bottomNav = BottomNavigationBar(
      currentIndex: _selectIndex,
      onTap: _selectPage,
      elevation: 7,
      selectedFontSize: 12,
      // selectedIconTheme: IconThemeData(
      //   color: primaryColor,
      // ),
      // selectedItemColor: iconColor,
      showUnselectedLabels: true,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(
            Icons.accessibility_new,
          ),
          label: "Homme",
          backgroundColor: manColor,
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.nature_people,
            color: girlColor,
          ),
          label: "Femme",
          backgroundColor: girlColor,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite_border),
          label: "Favoris",
          backgroundColor: favColor,
        ),
      ],
    );
    return Scaffold(
        // drawer: MyDrawer(),
        body: _pages[_selectIndex],
        bottomNavigationBar: bottomNav);
  }
}
