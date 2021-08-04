import 'package:flutter/material.dart';

// TODO: Custom imports
import 'package:calculator/src/pages/state-full/counter.dart';
import 'package:calculator/src/pages/state-less/home_page.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, home: Center(child: HomePage()));
  }
}
