import 'package:flutter/material.dart';

class HomeSizedBox extends StatelessWidget {
  const HomeSizedBox({
    super.key,
    required this.bodyheightScreen,
  });

  final double bodyheightScreen;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: bodyheightScreen * 0.23,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
              margin: const EdgeInsets.all(16),
              decoration: const BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.all(Radius.circular(16))),
              height: bodyheightScreen * 0.15,
              width: double.infinity,
              alignment: Alignment.center,
              padding: const EdgeInsets.all(16),
              child: const Text(
                "Let's know the facts about cats and their offspring",
                style: TextStyle(color: Colors.white),
              )),
          Positioned(
            top: 0,
            right: 0,
            child: Image.asset(
              "images/girl.png",
              fit: BoxFit.cover,
              height: bodyheightScreen * 0.23,
            ),
          )
        ],
      ),
    );
  }
}
