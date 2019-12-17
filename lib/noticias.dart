import 'package:flutter/material.dart';

void main() => runApp(new noticias());

class noticias extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Center(
          child: new Text(
            'Noticias',
            style: new TextStyle(
                fontSize: 25.0,),
          )),
    );
  }
}

class MyHomePageNoticias extends StatefulWidget {
  @override
  _Noticia createState() => new _Noticia();
}

class _Noticia extends State<MyHomePageNoticias> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          backgroundColor: Colors.green[500],
          title: new Center(
            child: new Text(
              'Noticias',
              style: new TextStyle(
                fontSize: 20.0,
              ),
            ),
          ),
        ),
        body: new _MiListaN());
  }
}

class _MiListaN extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      padding: const EdgeInsets.all(5.0),
      itemBuilder: (context, i) {
        return new ListTile(
          title: new Text('Noticia Relevante'),
          subtitle: new Text('Etiquetas: Seguridad, Información',
              style: new TextStyle(
                  fontStyle: FontStyle.italic,
                  color: Colors.blueAccent)),
          leading: const Icon(Icons.assignment_late),
          onTap: () {
            Navigator.push(
                context,
                new MaterialPageRoute(
                    builder: (BuildContext context) => new SecondPageN(context)));
          },
        );
      },
    );
  }
}

class SecondPageN extends StatelessWidget {
  SecondPageN(this.context);
  final context;

  @override
  Widget build(BuildContext context) => new Scaffold(
      backgroundColor: Colors.lightBlue[100],
      appBar: new AppBar(title: new Text(
          "Noticia 1",
      textAlign: TextAlign.center,
      )),
      body: new Container(
          child: Column(
              children: <Widget>[
                Text(
                  'Nuevos Ataques en Linux - Randsomware',
                  textAlign: TextAlign.center,
                  style: new TextStyle(
                    fontSize: 20.0,
                  ),),
                Text("Fuente:",
                  style: new TextStyle(
                    fontFamily: 'IndieFlower-Regular',
                    color: Colors.purple,
                  ),),
                Text("Contenido General")
              ])
      ),
  );
}