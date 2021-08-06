import 'package:flutter/material.dart';

// TODO: Custom imports
import 'package:calculator/src/routes/routes.dart';
import 'package:google_fonts/google_fonts.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          fontFamily: GoogleFonts.poppins().fontFamily,
        ),
        initialRoute: '/',
        routes: getApplicationRoutes());
  }
}
