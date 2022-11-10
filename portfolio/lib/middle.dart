import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:url_launcher/url_launcher.dart';

class MiddleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Vx.purple700,
      child: Flex(
        direction: context.isMobile ? Axis.vertical : Axis.horizontal,
        children: [
          "All creative works,\n".richText.withTextSpanChildren([
            "Selected Projects".textSpan.yellow400.make()]
            )
            .xl4
            .white
            .make(),
          20.widthBox,
          Expanded(
            child: VxSwiper(
              items: [
                ProjectWidget(title: "Mobile Legends Pedia").mdClick((){
                  launch("https://github.com/lordacil/HeroMobileLegendsPedia");
                }).make(),
                ProjectWidget(title: "Analyze Image Azure").mdClick((){
                  launch("https://github.com/lordacil/ImageAnalyzeAzure");
                }).make(),
                ProjectWidget(title: "CariKos").mdClick((){
                  launch("https://github.com/lordacil/CariKos");
                }).make(),
              ],
              height: 170,
              enlargeCenterPage: true,
              viewportFraction: context.isMobile ? 0.75 : 0.4,
              autoPlay: true,
              autoPlayAnimationDuration: 1.seconds,
              ),
          ),
        ],
      ).p64().h(context.isMobile?500 : 300),
    );
  }
}

class ProjectWidget extends StatelessWidget {
  final String title;

  const ProjectWidget({Key key,@required this.title}) : super(key:key);
  @override
  Widget build(BuildContext context) {
    return title.text.bold.white.xl.wide.center.make().box.p8.roundedLg.alignCenter.square(200).neumorphic(color: Vx.purple700, elevation: 5.0, curve: VxCurve.flat).make().p16();
  }
}