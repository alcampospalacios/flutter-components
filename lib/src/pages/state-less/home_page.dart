import 'package:calculator/src/providers/menu-provider.dart';
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
            children: _createListWidget(snapshot.data),
          );
        });
  }

  List<Widget> _createListWidget(List<dynamic>? li) {
    return li!.map((e) {
      return Column(
        children: [
          ListTile(
            title: Text(e['text']),
            leading: Icon(
              Icons.account_circle,
              color: Colors.blue[300],
              size: 25.0,
            ),
            trailing: Icon(
              Icons.keyboard_arrow_right,
              color: Colors.blue[300],
              size: 25.0,
            ),
            onTap: () {},
          ),
          Divider()
        ],
      );
    }).toList();
  }
}
