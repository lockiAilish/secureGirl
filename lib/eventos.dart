import 'package:flutter/material.dart';

import 'package:google_maps_flutter/google_maps_flutter.dart';

void main() => runApp(new eventos());

class eventos extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      padding: const EdgeInsets.all(5.0),
      itemBuilder: (context, i) {
        return new ListTile(
          title: new Text('Evento Importante'),
          subtitle: new Text('Seguridad',
              style: new TextStyle(
                  fontStyle: FontStyle.italic,
                  color: Colors.pinkAccent)),
          leading: const Icon(Icons.add_alert),
          onTap: () {
            Navigator.push(
                context,
                new MaterialPageRoute(
                    builder: (BuildContext context) => new SecondPage(context)));
          },
        );
      },
    );
  }
}

class MyHomePageEventos extends StatefulWidget {
  @override
  _Evento createState() => new _Evento();
}

class _Evento extends State<MyHomePageEventos> {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.purple,
        title: new Center(
          child: new Text(
            'Eventos',
            style: new TextStyle(
            fontFamily: 'IndieFlower-Regular',
            fontSize: 20.0,
            ),
          ),
        ),
      ),
        body: eventos());
  }
}

class SecondPage extends StatelessWidget {
  SecondPage(this.context);
  final context;

  GoogleMapController mapController;

  final LatLng _center = const LatLng(-16.4803492,-68.1208928);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) => new Scaffold(
    backgroundColor: Colors.purple[100],
    appBar: new AppBar(title: new Text("Evento 1")),
    body: new Container(
      child: Column(
      children: <Widget>[
        Container(
          width: 380.0,
          height: 380.0,
          child: GoogleMap(
            padding: EdgeInsets.all(50.0),
            onMapCreated: _onMapCreated,
            initialCameraPosition: CameraPosition(
              target: _center,
              zoom: 11.0,
            ),
          ),
        ),
      Text(
        'Evento A - Cafe Typica',
      textAlign: TextAlign.center,
      style: new TextStyle(
        color: Colors.blueAccent,
        fontFamily: 'Realistica_Demo',
        fontSize: 20.0,
      ),),
      Text("Organizado por:",
      style: new TextStyle(
          fontFamily: 'IndieFlower-Regular',
          color: Colors.purple,
      ),),
      Text("WTM")
      ])
  ),
      bottomNavigationBar: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.check_circle),
                title: Text('Asistiré'),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.panorama_fish_eye),
                title: Text('Tal vez'),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.thumb_down),
                title: Text('No iré'),
              ),
            ],
            selectedItemColor: Colors.pink[800],
          )
  );
  }