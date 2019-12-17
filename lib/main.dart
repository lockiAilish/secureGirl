import 'package:flutter/material.dart';
import './eventos.dart' as evento;
import './noticias.dart' as noticias;
import './comunidad.dart' as comunidad;
import './perfil.dart' as perfil;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
      with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    super.initState();
    controller = new TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: new Center(
            child: new Text(
              'SecureGirl',
              style: new TextStyle(
                fontFamily: 'Realistica_Demo',
                fontSize: 25.0,
            ),
            ),
          ),
          backgroundColor: Colors.purpleAccent[100],
          bottom: new TabBar(
            controller: controller,
            tabs: <Widget>[
              new Tab(icon: new Icon(Icons.new_releases)),
              new Tab(icon: new Icon(Icons.assignment)),
              new Tab(icon: new Icon(Icons.group)),
              new Tab(icon: new Icon(Icons.perm_identity)),
            ],),
        ),
        body: new TabBarView(controller: controller, children: <Widget>[
          new evento.MyHomePageEventos(),
          new noticias.MyHomePageNoticias(),
          new comunidad.comunidad(),
          new perfil.MyHomePagePerfil(),
        ]));
  }
}