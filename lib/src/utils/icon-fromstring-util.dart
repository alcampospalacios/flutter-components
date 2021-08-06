import 'package:flutter/material.dart';

final _iconsMapped = <String, IconData>{
  'add_alert': Icons.add_alert,
  'accesibility': Icons.accessibility,
  'folder_open': Icons.folder_open,
  'donut_large': Icons.donut_large,
  'input': Icons.input
};

Icon getIconFrom(String icon) {
  return Icon(
    _iconsMapped[icon],
    color: Colors.blue[300],
    size: 25,
  );
}
