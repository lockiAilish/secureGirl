import 'package:flutter/material.dart';

class comunidad extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return new Scaffold(
      body: new CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            leading: Icon(Icons.contacts),
            title: new Text(
              'Comunidad',
              style: new TextStyle(
                  fontFamily: 'IndieFlower-Regular',
                  fontSize: 20.0,
                  color: Colors.lightBlue[500]),
            ),
      expandedHeight: 250.0,
      pinned: true,
    ),
    new SliverList(
    delegate: new SliverChildBuilderDelegate((context, index) => new Card(
      child: new Container(
        padding: EdgeInsets.all(10.0),
        child: new Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            CircleAvatar(
              backgroundColor: Colors.blue[100],
            ),
            SizedBox(width: 12.0),
            Text('Datos de la miembro'),
          ],
        )
      )
    ),
    ),
          ),
        ],
      )
    );
  }
}