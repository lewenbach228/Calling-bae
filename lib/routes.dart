import 'package:flutter/widgets.dart';

import '../screens/tab_screen.dart';
import '../screens/men_love_name.dart';
import 'package:bae/screens/women_love_name.dart';
import 'package:bae/screens/favorite.dart';

final Map<String, WidgetBuilder> routes = {
  '/': (context) => TabScreen(),
  Men.routeName: (context) => Men(),
  Favorite.routeName: (context) => Favorite(),
  Women.routeName: (context) => Women(),
};
