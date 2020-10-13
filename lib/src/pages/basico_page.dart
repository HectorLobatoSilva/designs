import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {
  const BasicoPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final titulo = Theme.of(context)
        .textTheme
        .headline5
        .copyWith(fontWeight: FontWeight.bold, color: Colors.black);
    final subtitulo = Theme.of(context)
        .textTheme
        .subtitle2
        .copyWith(fontWeight: FontWeight.normal, color: Colors.grey);
    return Scaffold(
      backgroundColor: Color(0xFFecebeb),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _crearImagen(),
            _crearTitulo(titulo, subtitulo),
            _crearAcciones(),
            _crearTexto(titulo),
          ],
        ),
      ),
    );
  }

  Widget _crearImagen() {
    return Container(
      width: double.infinity,
      child: ClipRRect(
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(45)),
        child: Image(
          image: AssetImage('assets/images/wallpaper.png'),
          height: 250,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _crearTitulo(TextStyle titulo, TextStyle subtitulo) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(25),
        child: Container(
          color: Colors.white,
          padding: EdgeInsets.all(30),
          child: Row(
            children: <Widget>[
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'League of legends',
                      style: titulo,
                    ),
                    SizedBox(
                      height: 7.0,
                    ),
                    Text(
                      'Competitive online video game',
                      style: subtitulo,
                    )
                  ],
                ),
              ),
              Icon(
                Icons.star,
                color: Colors.red,
              ),
              Text(
                '41',
                style: TextStyle(fontSize: 20.0),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _crearAcciones() {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(25),
        child: Container(
          padding: EdgeInsets.all(30),
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              _crearAccion(Icons.live_tv, "Streaming"),
              _crearAccion(Icons.games, "play"),
              _crearAccion(Icons.share, "Share")
            ],
          ),
        ),
      ),
    );
  }

  Column _crearAccion(IconData icon, String text) {
    return Column(
      children: <Widget>[
        Icon(
          icon,
          color: Colors.blueAccent,
          size: 40.0,
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          text,
          style: TextStyle(color: Colors.blueAccent, fontSize: 15.0),
        )
      ],
    );
  }

  Widget _crearTexto(TextStyle titulo) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(25),
        child: Container(
          padding: EdgeInsets.all(30),
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Description",
                style: titulo,
              ),
              _texto(),
              SizedBox(
                height: 10,
              ),
              _texto(),
              SizedBox(
                height: 10,
              ),
              _texto(),
              SizedBox(
                height: 10,
              ),
              _texto(),
              SizedBox(
                height: 10,
              ),
              _texto(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _texto() {
    return Text(
      'Consequat reprehenderit cillum voluptate adipisicing irure proident incididunt pariatur sint cupidatat culpa duis minim. Veniam duis ad quis eiusmod id quis reprehenderit deserunt dolore ut commodo esse reprehenderit. Occaecat eu officia consectetur reprehenderit sint. Officia non duis adipisicing adipisicing Lorem nisi ex amet in. Pariatur laboris consequat adipisicing dolore laboris ipsum non officia incididunt aliqua id in. Pariatur quis et ad ullamco.',
      textAlign: TextAlign.justify,
    );
  }
}
