import 'package:flutter/material.dart';

class ScrollPage extends StatelessWidget {
  const ScrollPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          _campeon(
              'assets/images/wallpapers/fnatic.jpg',
              'assets/images/teams/fnatic.png',
              'Fnatic',
              [2011],
              "LEC",
              "Fnatic is a professional esports organization consisting of players from around the world across a variety of games. On March 14, 2011, Fnatic entered the League of Legends scene with the acquisition of myRevenge. Fnatic is one of the strongest European teams since the early days of competitive League of Legends, having been the champion of the Riot Season 1 Championship.",
              Colors.orange),
          _campeon(
              'assets/images/wallpapers/ta.jpg',
              'assets/images/teams/ta.png',
              'J Team ',
              [2012],
              "Taiwán",
              "J Team is a Taiwanese professional esports organization owned by JY Entertainment that has players competing in League of Legends and StarCraft II. Their League of Legends team participates in the Pacific Championship Series, the highest level of professional League of Legends in Taiwan, Hong Kong, Macau, and Southeast Asia. J Team was founded in April 2016.",
              Colors.grey),
          _campeon(
              'assets/images/wallpapers/t1.jpg',
              'assets/images/teams/t1.png',
              'T1 ',
              [2013, 2015, 2016],
              "LCK",
              "T1 is a Korean team owned by SK telecom CS T1 Co., Ltd., the joint venture between SK Telecom and Comcast Spectacor. They were previously known as SK Telecom T1.",
              Colors.red),
          _campeon(
              'assets/images/wallpapers/sg.jpg',
              'assets/images/teams/sg.png',
              'Samsung Galaxy ',
              [2014, 2017],
              "LCK",
              "Samsung Galaxy was a Korean a professional gaming team based in South Korea, part of KeSPA. The organization previously sponsored two sister teams, Samsung White and Samsung Blue. Founded in 2005, its StarCraft division, Samsung KHAN, counts ex-Team WE coach Lee Seong-eun (firebathero) among the stars that have been on its roster.",
              Colors.blue),
          _campeon(
              'assets/images/wallpapers/ig.jpg',
              'assets/images/teams/ig.png',
              'Invictus Gaming',
              [2018],
              "LPL",
              "Invictus Gaming was created by Wang Si-Cong (son of Dalian Wanda Group chairman Wang Jianlin, ranked by Forbes as the third-richest man in China), who purchased the team which was until then known as Catastrophic Cruel Memory (CCM), including divisions for Starcraft II, DotA and LoL. The transaction volume amounted to 6 million USD.",
              Colors.white),
          _campeon(
              'assets/images/wallpapers/funplus.jpg',
              'assets/images/teams/funplus.png',
              'Funplus Phoenix',
              [2019],
              "LPL",
              "FunPlus Phoenix (FPX) is a Chinese professional esports organization owned by video game developer FunPlus. It has teams competing in League of Legends, Counter-Strike: Global Offensive, Fortnite Battle Royale, and PlayerUnknown's Battlegrounds. FunPlus Phoenix's League of Legends team competes in the League of Legends Pro League (LPL), the top level of professional League of Legends in China.[2] On 10 November 2019, the team won the 2019 League of Legends World Championship after defeating G2 Esports in the grand finals.",
              Colors.red),
        ],
      ),
    );
  }

  Widget _campeon(String background, String logo, String nombre,
      List<int> titulos, String region, String descripcion, Color color) {
    return Stack(
      children: <Widget>[
        _colorFondo(background),
        _infoCampeon(logo, nombre, region, descripcion, titulos, color),
      ],
    );
  }

  Widget _colorFondo(String image) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Image(
        image: AssetImage(image),
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _infoCampeon(String logo, String nombre, String region,
      String descripcion, List<int> titulos, Color color) {
    return Column(
      children: <Widget>[
        _titleCampeon(logo, nombre, region, color),
        _descripcionCampeon(descripcion, titulos, color),
        Expanded(
          child: Container(),
        ),
        Icon(
          Icons.keyboard_arrow_down,
          color: Colors.white,
          size: 75,
        )
      ],
    );
  }

  Widget _titleCampeon(String logo, String nombre, String region, Color color) {
    return OrientationBuilder(
      builder: (context, orientation) => Padding(
        padding: EdgeInsets.all(orientation == Orientation.landscape ? 20 : 15),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Container(
            color: color.withOpacity(0.5),
            padding:
                EdgeInsets.all(orientation == Orientation.landscape ? 20 : 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  width: 50,
                  height: 50,
                  child: Image(
                    image: AssetImage(logo),
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  width: 200,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Text(
                        nombre,
                        style: TextStyle(
                            fontSize: 25,
                            color: color == Colors.white
                                ? Colors.black
                                : Colors.white),
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.right,
                      ),
                      Text(
                        region,
                        style: TextStyle(
                            fontSize: 15,
                            color: color == Colors.white
                                ? Colors.grey
                                : Colors.white),
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.right,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _descripcionCampeon(String texto, List<int> titulos, Color color) {
    return OrientationBuilder(
      builder: (context, orientation) => Padding(
        padding: EdgeInsets.all(orientation == Orientation.landscape ? 20 : 10),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Container(
            color: color.withOpacity(0.5),
            padding:
                EdgeInsets.all(orientation == Orientation.landscape ? 20 : 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Description",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color:
                          color == Colors.white ? Colors.black : Colors.white),
                ),
                Text(
                  texto,
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                      color:
                          color == Colors.white ? Colors.black : Colors.white),
                ),
                SizedBox(
                  height: 12,
                ),
                Text(
                  "Championships",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color:
                          color == Colors.white ? Colors.black : Colors.white),
                ),
                Row(
                  children: <Widget>[
                    for (var item in titulos)
                      Column(
                        children: <Widget>[
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          Text(
                            item.toString(),
                            style: TextStyle(
                                color: color == Colors.white
                                    ? Colors.black
                                    : Colors.white),
                          ),
                          SizedBox(
                            width: 50,
                          )
                        ],
                      )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
