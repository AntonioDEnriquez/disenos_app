import 'dart:math';

import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final boxDecoration = const BoxDecoration(
      gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.2, 0.8],
          colors: [Color(0xff2E305f), Color(0xff202333)]));

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Purple Gradient
        Container(
          decoration: boxDecoration,
        ),

        // Pink Box
        Positioned(top: -230, left: -80, child: _PinkBox())
      ],
    );
  }
}

class _PinkBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final sizeScreen = MediaQuery.of(context).size;

    return Transform.rotate(
      angle: -pi / 4.8,
      child: Container(
        width: sizeScreen.width * 0.93,
        height: sizeScreen.height * 0.5,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(80),
            color: Colors.pink,
            gradient: const LinearGradient(
              colors: [
                Color.fromRGBO(236, 90, 188, 1),
                Color.fromRGBO(241, 142, 172, 1)
              ],
            )),
      ),
    );
  }
}
