import '../provider/girl_data.dart';
import 'package:flutter/material.dart';

import '../provider/men_data.dart';
import './routes.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => MenData(),
        ),
        ChangeNotifierProvider(
          create: (context) => WomenData(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'bae',
        initialRoute: '/',
        routes: routes,
      ),
    );
  }
}
