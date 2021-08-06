import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar page'),
        actions: <Widget>[
          Container(
            margin: EdgeInsets.all(2.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://cdna.artstation.com/p/assets/images/images/021/427/416/medium/ryan-ernst-kip-guile-01.jpg?1571659956'),
              radius: 30.0,
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10),
            child: CircleAvatar(
              child: Text('AC'),
              backgroundColor: Colors.blue[400],
            ),
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FadeInImage(
              placeholder: AssetImage('assets/no-image.png'),
              image: NetworkImage(
                  'https://cdn.mos.cms.futurecdn.net/M7fDTpDnJcZ4dt3myngzxi.jpg'),
              fadeInDuration: Duration(seconds: 2),
              height: 300.0,
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
    );
  }
}
