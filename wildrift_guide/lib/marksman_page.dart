import 'package:flutter/material.dart';
import 'package:wildrift_guide/assassin_detail.dart';

class MarksmanPage extends StatelessWidget {
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
                      'Draven',
                      'The Executioner',
                      //'images/Marksman/draven_skin01.gif',
                      'https://i.ibb.co/51MVKb3/draven-skin01.gif',
                      'images/marksman_icon.png',
                      '',
                      false,
                      false,
                      context),
                  _buildCard(
                      'Jhin',
                      'The Virtuoso',
                      //'images/Marksman/jhin_skin01.gif',
                      'https://i.ibb.co/0mzTV8P/jhin-skin01.gif',
                      'images/marksman_icon.png',
                      'images/mage_icon.png',
                      false,
                      false,
                      context),
                  _buildCard(
                      'Jinx',
                      'The Loose Cannon',
                      //'images/Marksman/jinx_skin01.gif',
                      'https://i.ibb.co/vqfV8cp/jinx-skin01.gif',
                      'images/marksman_icon.png',
                      '',
                      false,
                      false,
                      context),
                  _buildCard(
                      'Kaisa',
                      'Daughter of The Void',
                      //'images/Marksman/kaisa_skin01.gif',
                      'https://i.ibb.co/QdcQzcR/kaisa-skin01.gif',
                      'images/marksman_icon.png',
                      'images/assassin_icon.png',
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
