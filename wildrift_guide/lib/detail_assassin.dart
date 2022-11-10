import 'package:flutter/material.dart';

import 'glitch.dart';

class DetailAssassin extends StatelessWidget {
  final assetPath, champName, champPrice, champLogo;

  DetailAssassin(
      {this.assetPath, this.champName, this.champPrice, this.champLogo});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Stack(
              children: <Widget>[
                Image.network(assetPath),
                SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.grey,
                          child: IconButton(
                            icon: Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height - 580),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        color: Color(0xFF81A1C1),
                        height: 140,
                        width: MediaQuery.of(context).size.width - 50,
                        padding: EdgeInsets.only(left: 5.0, right: 5.0),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    champName,
                                    style: TextStyle(
                                        color: Color(0xFFFFFFFF),
                                        fontFamily: 'Varela',
                                        fontSize: 26.0,
                                        fontWeight: FontWeight.bold,
                                        fontStyle: FontStyle.italic),
                                  ),
                                  Text(
                                    champPrice,
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: 'Varela',
                                        fontSize: 14.0),
                                  ),
                                ],
                              ),
                              Container(
                                height: 100,
                                width: 3,
                                color: Colors.white,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image(
                                    image: AssetImage(champLogo),
                                    height: 70,
                                    width: 70,
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    'Assassin',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'Varela',
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )
                                ],
                              )
                            ]),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Center(
              child: GlithEffect(
                child: Container(
                  margin: EdgeInsets.only(top: 50.0),
                  child: Text(
                    'ABILITIES',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        fontSize: 36.0),
                  ),
                ),
              ),
            ),
            buildCard(),
            // Container(
            //   margin: EdgeInsets.only(top: 50.0),
            //   child: GlithEffect(

            //   ),
            //   child: Text(
            //     'ABILITIES',
            //     textAlign: TextAlign.center,
            //     style: TextStyle(
            //       fontWeight: FontWeight.bold,
            //       fontStyle: FontStyle.italic,
            //       fontSize: 36.0
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}

Widget buildCard() {
  bool isVisible = true;

  return Center(
    child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Card(
          clipBehavior: Clip.antiAlias,
          elevation: 16,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          child: InkWell(
            onTap: () {},
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Visibility(
                  visible: isVisible,
                  child: Stack(
                    alignment: Alignment.bottomLeft,
                    children: [
                      Image.network(
                          'https://i.ibb.co/N7v0KwJ/akali-header.gif'),
                      Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text(
                            'Pasif - Assassin Mark',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Varela',
                                fontStyle: FontStyle.italic),
                          ))
                    ],
                  ),
                ),
                Visibility(
                  visible: isVisible,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text('Assasin Mark'),
                  ),
                ),
                Column (
                  children: <Widget>[
                    if (isVisible) Text ('ciluk baa'),
                    Text('ini selalu ada'),
                  ],
                )
                // ),
                // ButtonBar(
                //   children: <Widget>[
                //     IconButton (
                //       child: Text ('Hide'),
                //       color: Colors.blue,
                //       onPressed: () {
                //         setState(() {

                //         });
                //       },
                //     )
                //   ],
                // ),
              ],
            ),
          )),
    ),
  );
}
