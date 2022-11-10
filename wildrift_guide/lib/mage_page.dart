import 'package:flutter/material.dart';
import 'package:wildrift_guide/assassin_detail.dart';

class MagePage extends StatelessWidget {
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
                      'Ahri',
                      'The Nine-Tailed Fox',
                      //'images/Mage/ahri_skin01.gif',
                      'https://i.ibb.co/ScRq6jp/ahri-skin01.gif',
                      'images/mage_icon.png',
                      'images/assassin_icon.png',
                      false,
                      false,
                      context),
                  _buildCard(
                      'Aurelion Sol',
                      'The Star Forger',
                      //'images/Mage/asol_skin01.gif',
                      'https://i.ibb.co/W34Qv5B/asol-skin01.gif',
                      'images/mage_icon.png',
                      '',
                      false,
                      false,
                      context),
                  _buildCard(
                      'Diana',
                      'Scorn of The Moon',
                      //'images/Mage/diana_skin01.gif',
                      'https://i.ibb.co/h7hwY5w/diana-skin01.gif',
                      'images/mage_icon.png',
                      'images/fighter_icon.png',
                      false,
                      false,
                      context),
                  _buildCard(
                      'Ezreal',
                      'The Prodigal Explorer',
                      //'images/Mage/ezreal_skin01.gif',
                      'https://i.ibb.co/k4Jrbvf/ezreal-skin01.gif',
                      'images/mage_icon.png',
                      'images/marksman.png',
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
                builder: (context) => AssassinDetail(
                    assetPath: imgPath, cookiePrice: price, cookieName: name)));
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
                Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          isFavorite
                              ? Icon(Icons.favorite, color: Color(0xFF81A1C1))
                              : Icon(Icons.favorite_border,
                                  color: Color(0xFF81A1C1))
                        ])),
                SizedBox(height: 70),
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
