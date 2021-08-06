import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert page'),
      ),
      body: Center(
          child: ElevatedButton(
              child: Text('Show Alert'), onPressed: () => _showAlert(context))),
    );
  }

  _showAlert(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context) {
        return AlertDialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          title: Text('My custom alert.'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text('This is the content of the alert. Lorem itsum.'),
              FlutterLogo(
                size: 80.0,
              ),
            ],
          ),
          actions: <Widget>[
            TextButton(
                onPressed: () => Navigator.of(context).pop(),
                child: Text('CANCEL')),
            TextButton(
                onPressed: () => Navigator.of(context).pop(), child: Text('OK'))
          ],
        );
      },
    );
  }
}
