import 'package:flutter/material.dart';
import 'package:portfolio_flutter/colors.dart';
import 'package:velocity_x/velocity_x.dart';

import 'header.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Coolers.primaryColor,
      child: VStack([
        HeaderScreen(),
      ]).scrollHorizontal(),
    );
  }
}