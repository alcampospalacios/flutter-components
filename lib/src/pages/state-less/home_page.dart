import 'package:calculator/src/pages/state-less/alert-page.dart';
import 'package:calculator/src/providers/menu-provider.dart';
import 'package:calculator/src/utils/icon-fromstring-util.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final textStyle = new TextStyle(fontSize: 25);
  final listOptions = ['Uno', 'Dos', 'Tres', 'Cuatro', 'Cinco', 'Seis'];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text('My appbar'),
          centerTitle: true,
        ),
        body: _list());
  }

  Widget _list() {
    return FutureBuilder(
        future: menuProvider.loadData(),
        initialData: [],
        builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
          return ListView(
            children: _createListWidget(snapshot.data, context),
          );
        });
  }

  List<Widget> _createListWidget(List<dynamic>? li, BuildContext context) {
    return li!.map((e) {
      return Column(
        children: [
          ListTile(
            title: Text(e['text']),
            leading: getIconFrom(e['icon']),
            trailing: Icon(
              Icons.keyboard_arrow_right,
              color: Colors.blue[300],
              size: 25.0,
            ),
            onTap: () {
              // To hand routes specificly
              // final route = MaterialPageRoute(builder: (context) {
              //   return AlertPage();
              // });

              // Navigator.push(context, route);

              Navigator.pushNamed(context, e['route']);
            },
          ),
          Divider()
        ],
      );
    }).toList();
  }
}
