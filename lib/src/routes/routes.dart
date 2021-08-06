import 'package:calculator/src/pages/state-full/animated-container-page.dart';
import 'package:calculator/src/pages/state-full/input-page.dart';
import 'package:calculator/src/pages/state-less/avatar-page.dart';
import 'package:calculator/src/pages/state-less/car-page.dart';
import 'package:calculator/src/pages/state-less/cool-alert.dart';
import 'package:flutter/material.dart';

import 'package:calculator/src/pages/state-less/alert-page.dart';
import 'package:calculator/src/pages/state-less/home_page.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => HomePage(),
    'alert': (BuildContext context) => AlertPage(),
    'custom-alert': (BuildContext context) =>
        CustomAlertPage(title: 'Cool Alert'),
    'avatar': (BuildContext context) => AvatarPage(),
    'card': (BuildContext context) => CardPage(),
    'animated-container': (BuildContext context) => AnimatedContainerPage(),
    'inputs': (BuildContext context) => InputPage()
  };
}
