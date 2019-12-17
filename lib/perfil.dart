import 'package:flutter/material.dart';

void main() => runApp(new yo());

class yo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Center(
          child: new Text(
            'Mi perfil',
            style: new TextStyle(
                fontSize: 25.0,
                color: Colors.blueAccent),
          ),
      ),
    );
  }
}

class MyHomePagePerfil extends StatefulWidget {
  @override
  _Perfil createState() => new _Perfil();
}

class _Perfil extends State<MyHomePagePerfil> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
            title: new Center(
                child: new Text(
                  'Mi perfil',
                  style: new TextStyle(
                      fontSize: 25.0,
                      color: Colors.white,
                    fontFamily: 'IndieFlower-Regular.ttf'
                  ),
                ))
        ),
        body: new Container(
          padding: EdgeInsets.all(95.0),
          child: Column(
          children: <Widget>[
            Container(
              width: 180.0,
              height: 180.0,
              child: Image.asset('assets/img/sg.png')),
              Text(
                  'Administradora',
                style: new TextStyle(
                    fontFamily: 'IndieFlower-Regular',
                    fontSize: 20.0,
                    color: Colors.lightBlue[500]),
            )
          ],
          ),
        )
    );
  }
}