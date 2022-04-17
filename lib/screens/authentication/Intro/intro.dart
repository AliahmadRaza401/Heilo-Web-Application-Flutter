// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:heilo/screens/authentication/Intro/intro_web.dart';
import 'package:heilo/utils/dynamic_sizes.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Intro extends StatelessWidget {
  const Intro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // color: Colors.amber,
        width: AppSizes.dynamicWidth(context, 1),
        height: AppSizes.dynamicHeight(context, 1),
        child: ScreenTypeLayout(
          mobile: IntroWeb(),
          tablet: IntroWeb(),
          desktop: IntroWeb(),
          watch: IntroWeb(),
        ),
      ),
    );
  }
}
