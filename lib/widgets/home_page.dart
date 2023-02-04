import 'package:flutter/material.dart';

import 'home_sized_box.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
    required this.bodyheightScreen,
    required this.widthScreen,
  });

  final double bodyheightScreen;
  final double widthScreen;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      HomeSizedBox(bodyheightScreen: bodyheightScreen),
    ]);
  }
}
