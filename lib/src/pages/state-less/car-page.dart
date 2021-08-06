import 'package:flutter/material.dart';

/// This is the main application widget.
class CardPage extends StatelessWidget {
  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: ListView(
          padding: EdgeInsets.all(10.0),
          children: <Widget>[
            _createCardTypeOne(context),
            _createCardTypeTwo(context)
          ],
        ));
  }

  Widget _createCardTypeOne(BuildContext context) {
    return Center(
      child: Card(
        elevation: 10.0,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const ListTile(
              leading: Icon(Icons.album),
              title: Text('The Enchanted Nightingale'),
              subtitle: Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                TextButton(
                  child: const Text('BUY TICKETS'),
                  onPressed: () {/* ... */},
                ),
                const SizedBox(width: 8),
                TextButton(
                  child: const Text('LISTEN'),
                  onPressed: () {/* ... */},
                ),
                const SizedBox(width: 8),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _createCardTypeTwo(BuildContext context) {
    return Center(
      child: Card(
        clipBehavior: Clip.antiAlias,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        child: Column(
          children: <Widget>[
            Image(
              image: AssetImage('assets/no-image.png'),
              height: 300.0,
              fit: BoxFit.cover,
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              child: Text('Hola texto descriptivo de mi awesome image'),
            )
          ],
        ),
      ),
    );
  }
}

// FadeInImage(
//               placeholder: AssetImage('assets/no-image.png'),
//               image: NetworkImage(
//                   'https://cdn.mos.cms.futurecdn.net/M7fDTpDnJcZ4dt3myngzxi.jpg'),
//               fadeInDuration: Duration(seconds: 2),
//               height: 300.0,
//               fit: BoxFit.cover,
//             ),
