import 'dart:math';

import 'package:flutter/material.dart';

class BotonesPage extends StatelessWidget {
  const BotonesPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          _fondoApp(),
          SingleChildScrollView(
            child: Column(
              children: <Widget>[_titulos(), _botonesRedondeados()],
            ),
          )
        ],
      ),
      bottomNavigationBar: _bottonNavigationBarV2(),
    );
  }

  Widget _botonesRedondeados() {
    return Table(
      children: [
        TableRow(children: [
          _crearBotonRedondedado(Icons.settings, "Settings", Colors.pink),
          _crearBotonRedondedado(Icons.play_arrow, "Play", Colors.greenAccent)
        ]),
        TableRow(children: [
          _crearBotonRedondedado(
              Icons.account_balance, "Balance", Colors.blueAccent),
          _crearBotonRedondedado(
              Icons.alternate_email, "Email", Colors.blueGrey)
        ]),
        TableRow(children: [
          _crearBotonRedondedado(Icons.work, "Works", Colors.redAccent),
          _crearBotonRedondedado(Icons.queue_music, "Musics", Colors.brown)
        ]),
        TableRow(children: [
          _crearBotonRedondedado(Icons.wb_incandescent, "Ligths", Colors.amber),
          _crearBotonRedondedado(Icons.wifi, "Wifi", Colors.deepPurpleAccent)
        ]),
      ],
    );
  }

  Widget _crearBotonRedondedado(IconData icon, String text, Color color) {
    return Container(
      height: 180,
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: Color.fromRGBO(62, 66, 107, 0.7),
          borderRadius: BorderRadius.circular(20)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          CircleAvatar(
            child: Icon(icon),
            radius: 35,
            backgroundColor: color,
            foregroundColor: Colors.white,
          ),
          Container(
            margin: EdgeInsets.all(15),
            child: Text(
              text,
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          )
        ],
      ),
    );
  }

  Widget _bottonNavigationBarV2() {
    return BottomNavigationBar(
      backgroundColor: Color.fromRGBO(55, 57, 84, 1.0),
      fixedColor: Colors.pinkAccent,
      unselectedItemColor: Colors.grey,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today), title: Container()),
        BottomNavigationBarItem(
            icon: Icon(Icons.pie_chart_outlined), title: Container()),
        BottomNavigationBarItem(
            icon: Icon(Icons.supervised_user_circle), title: Container())
      ],
    );
  }

  Widget _fondoApp() {
    final gradiente = Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
        Color.fromRGBO(52, 54, 101, 1.0),
        Color.fromRGBO(35, 37, 57, 1.0)
      ], begin: FractionalOffset(0.0, 0.3), end: FractionalOffset(0.0, 1.0))),
    );

    final cajaRosa = Transform.rotate(
      angle: -pi / 5,
      child: Container(
        height: 360,
        width: 360,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            gradient:
                LinearGradient(colors: [Colors.pinkAccent, Colors.redAccent])),
      ),
    );

    return Stack(
      children: <Widget>[gradiente, Positioned(top: -100, child: cajaRosa)],
    );
  }

  Widget _titulos() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Classify Transaction",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Classify this transaction into a particular category",
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }

  Widget _bottonNavigationBar(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
          canvasColor: Color.fromRGBO(55, 57, 84, 1.0),
          primaryColor: Colors.pinkAccent,
          textTheme: Theme.of(context)
              .textTheme
              .copyWith(caption: TextStyle(color: Colors.green))),
      child: BottomNavigationBar(
        backgroundColor: Colors.white,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today), title: Container()),
          BottomNavigationBarItem(
              icon: Icon(Icons.pie_chart_outlined), title: Container()),
          BottomNavigationBarItem(
              icon: Icon(Icons.supervised_user_circle), title: Container())
        ],
      ),
    );
  }
}
