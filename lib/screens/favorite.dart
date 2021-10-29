import 'package:bae/constants.dart';
import 'package:bae/screens/girl_fav.dart';
import 'package:bae/screens/men_fav.dart';
import 'package:flutter/material.dart';

class Favorite extends StatelessWidget {
  static const routeName = '/favorites';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Mes favoris'),
            centerTitle: true,
            backgroundColor: Colors.blueGrey,
            bottom: const TabBar(
              indicatorColor: iconColor,
              tabs: [
                Tab(
                  icon: Icon(Icons.accessibility_new),
                ),
                Tab(
                  icon: Icon(Icons.nature_people),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              MenFav(),
              GirlFav(),
            ],
          ),
        ),
      ),
    );
  }
}
