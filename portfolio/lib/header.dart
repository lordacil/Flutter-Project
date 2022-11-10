
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'coolors.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:url_launcher/url_launcher.dart';


class HeaderScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final nameWidget = "Rizky Nugraha\nHerliyanto"
                      .text
                      .white
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
                      if(context.isMobile) 50.heightBox else 10.heightBox,
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
                    h: context.percentWidth * 10,
                    v: 32,
                  ),
                  Expanded(
                    child: VxResponsive(
                      fallback: const Offstage(),
                      medium: IntroductionWidget().pOnly(left: 120).h(context.percentHeight * 60),
                      large: IntroductionWidget().pOnly(left: 120).h(context.percentHeight * 60),
                    ),
                  )
            ],
            ).w(context.screenWidth)
          ]),
        ])).size(context.screenWidth, context.percentHeight * 60)
            .color(Coolers.secondColor)
            .make(),
    );
  }
}

class IntroductionWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return VStack([

                      ["- Introduction"
                      .text
                      .gray500
                      .widest
                      .sm
                      .make(),
                      10.heightBox,
                      "Android Developer &&\nLinux Enthusiasm"
                      .text
                      .white
                      .xl3
                      .maxLines(5)
                      .make().w(context.isMobile ? context.screenWidth: context.percentWidth * 40),
                    20.heightBox,
                  ].vStack(),
                    RaisedButton(
                      onPressed: () {
                        launch("https://github.com/lordcil");
                      },
                      child: "You can see my project in Github.".text.make(),
                      color: Coolers.accentColor,
                      shape: Vx.roundedSm,
                      hoverColor: Vx.purple700,
                      ).h(50)

                    ],
                    alignment: MainAxisAlignment.spaceEvenly,
                    );
  }
}

class PictureWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Transform(
      alignment: Alignment.center,
      transform: Matrix4.rotationY(pi),
      child: Image.asset("bg.jpg",
      height: context.percentHeight * 60,
      width: context.percentWidth * 100,
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
      Icon(AntDesign.facebook_square,
      color: Colors.white).mdClick((){
        launch("https://facebook.com/nugraha");
      }).make(),
      20.widthBox,
       Icon(AntDesign.instagram,
      color: Colors.white).mdClick((){
        launch("https://instagram.com/rnugraha.id");
      }).make(),
      20.widthBox,
       Icon(AntDesign.youtube,
      color: Colors.white).mdClick((){
        launch("https://youtube.com/rizky_nugraha_herliyanto");
      }).make(),
      20.widthBox,
       Icon(AntDesign.github,
      color: Colors.white).mdClick((){
        launch("https://github.com/lordacil");
      }).make(),
    ].hStack();
  }
}