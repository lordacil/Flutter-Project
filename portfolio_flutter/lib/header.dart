import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:url_launcher/url_launcher.dart';

import 'colors.dart';

class HeaderScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var nameWidget = "Rizky\nNugraha"
                  .text
                  .color(Color.fromRGBO(197, 225, 227, 1))
                  .xl6
                  .lineHeight(1)
                  .size(context.isMobile ? 15 : 20)
                  .bold
                  .make()
                  .shimmer();
        return SafeArea(
          child: VxBox(
            child: VStack([
            ZStack([
              PictureWidget(),
              Row(
                children: [
                VStack([
                  CustomAppBar().shimmer(
                    primaryColor: Coolers.accentColor,
                  ),
                  30.heightBox,
                  nameWidget,
                  20.heightBox,
                  VxBox()
                    .color(Coolers.accentColor)
                    .size(60, 10)
                    .make()
                    .shimmer(primaryColor: Coolers.accentColor),
                  30.heightBox,
                  SocialAccounts(),
            ]).pSymmetric(
              h: context.percentWidth*10,
              v: 32
            ),
              Expanded(
                child: VStack([
                  " - Introduction".text.gray500.widest.sm.make(),
                  10.heightBox,
                  "Android Developer &&\nLinux Enthusiasm".text.white.xl3.maxLines(5).make()
                ]),
                )
          ],
          )
        ]),
      ])).make(),
    );
  }
}

class PictureWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Transform(
      alignment: Alignment.center,
      transform: Matrix4.rotationY(pi),
      child: Image.asset(
        "assets/pic.png",
        fit: BoxFit.cover,
        height: context.percentHeight * 60,
    ),
    );
  }
}

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Icon(
      AntDesign.codesquare,
      size: 50,
      color: Coolers.accentColor,
    );
  }
}

class SocialAccounts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return[
        Icon(AntDesign.twitter,color: Colors.white).mdClick((){
          launch("https://twitter.com/rnugraha");
        }).make(),
        20.widthBox,
        Icon(AntDesign.instagram,color: Colors.white).mdClick((){
          launch("https://instagram.com/rnugraha.id");
        }).make(),
        20.widthBox,
        Icon(AntDesign.youtube,color: Colors.white).mdClick((){
          launch("https://youtube.com/rizky_nugraha_herliyanto");
        }).make(),
        20.widthBox,
        Icon(AntDesign.github,color: Colors.white).mdClick((){
          launch("https://github.com/lordacil");
        }).make(),
        20.widthBox,
    ].hStack();
  }
}