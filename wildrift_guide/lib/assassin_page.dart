import 'package:flutter/material.dart';
import 'package:wildrift_guide/assassin_detail.dart';
import 'package:wildrift_guide/detail_assassin.dart';

class AssasinPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFCFAF8),
      body: ListView(
        children: <Widget>[
          SizedBox(height: 15.0),
          Container(
              padding: EdgeInsets.only(right: 15.0),
              width: MediaQuery.of(context).size.width - 30.0,
              height: MediaQuery.of(context).size.height - 50.0,
              child: GridView.count(
                crossAxisCount: 2,
                primary: false,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 15.0,
                childAspectRatio: 0.8,
                children: <Widget>[
                  _buildCard(
                      'Akali',
                      'The Rogue Assasin',
                      //'images/Assassin/akali_skin01.gif',
                      'https://i.ibb.co/BzsSrkT/akali-skin01.gif',
                      'images/assassin_icon.png',
                      'https://i.ibb.co/N7v0KwJ/akali-header.gif',
                      false,
                      false,
                      context),
                  _buildCard(
                      'Irelia',
                      'The Blade Dancer',
                      //'images/Assassin/irelia_skin01.gif',
                      'https://i.ibb.co/MhfSv3p/irelia-skin01.gif',
                      'images/assassin_icon.png',
                      'images/fighter_icon.png',
                      false,
                      false,
                      context),
                  _buildCard(
                      'Yasuo',
                      'The Unforgiven',
                      //'images/Assassin/yasuo_skin01.gif',
                      'https://i.ibb.co/mSpP8Hg/yasuo-skin01.gif',
                      'images/assassin_icon.png',
                      'images/fighter_icon.png',
                      false,
                      false,
                      context),
                  _buildCard(
                      'Rengar',
                      'The Pridestalker',
                      //'images/Assassin/rengar_skin01.gif',
                      'https://i.ibb.co/r6bqCC0/rengar-skin01.gif',
                      'images/assassin_icon.png',
                      '',
                      false,
                      false,
                      context),
                ],
              ))
        ],
      ),
    );
  }

  Widget _buildCard(String name, String price, String imgPath, String imgLogo1,
      String imgLogo2, bool added, bool isFavorite, context) {
    return Padding(
        padding: EdgeInsets.only(top: 5.0, bottom: 5.0, left: 5.0, right: 5.0),
        child: InkWell(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => DetailAssassin(
                    champName: name, champPrice: price, assetPath: imgLogo2, champLogo: imgLogo1)));
          },
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 3.0,
                    blurRadius: 5.0)
              ],
              image: new DecorationImage(
                image: NetworkImage(imgPath),
                fit: BoxFit.cover,
              ),
              color: Colors.white,
            ),
            child: Column(
              children: [
                FavoriteButton(),
                SizedBox(height: 65),
                Text(name,
                    style: TextStyle(
                        color: Color(0xFFCC8053),
                        //backgroundColor: Colors.black.withOpacity(0.5),
                        fontFamily: 'Varela',
                        fontWeight: FontWeight.bold,
                        fontSize: 24.0,
                        shadows: [
                          Shadow(
                              color: Colors.black,
                              offset: Offset(5.0, 5.0),
                              blurRadius: 10),
                          Shadow(
                              color: Colors.black,
                              offset: Offset(-10.0, 5.0),
                              blurRadius: 10),
                        ])),
                Text(price,
                    style: TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontFamily: 'Varela',
                        fontSize: 14.0,
                        shadows: [
                          Shadow(
                              color: Colors.black,
                              offset: Offset(5.0, 5.0),
                              blurRadius: 10),
                          Shadow(
                              color: Colors.black,
                              offset: Offset(-10.0, 5.0),
                              blurRadius: 10),
                        ])),
                SizedBox(height: 1),
                Padding(
                  padding: EdgeInsets.all(6.0),
                  child: Container(
                    color: Color(0xFF81A1C1).withOpacity(0.5),
                    height: 28,
                    padding: EdgeInsets.only(left: 5.0, right: 5.0),
                    child: Row (
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image(
                            image: AssetImage(imgLogo1),
                            width: 18,
                            height: 18),
                        Image(
                            image: AssetImage(imgLogo2),
                            width: 18,
                            height: 18),
                      ]
                      ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

class FavoriteButton extends StatefulWidget {
  @override
  _FavoriteButtonState createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Padding (
      padding: EdgeInsets.all(0.0),
      child: Row (
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          IconButton (
            icon: Icon (
              isFavorite
              ? Icons.favorite
              : Icons.favorite_border,
              color: Color(0xFF81A1C1),
            ),
            onPressed: () {
              setState(() {
                isFavorite = !isFavorite;
              });
            },
          )
        ],
      )
    );
  }
}