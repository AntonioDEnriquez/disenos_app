import 'dart:ui';

import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Table(
      children: const [
        TableRow(children: [
          _SingleCard(
            color: Colors.blue,
            icon: Icons.border_all,
            text: 'General',
          ),
          _SingleCard(
              color: Colors.pinkAccent,
              icon: Icons.car_rental,
              text: 'Transform')
        ]),
        TableRow(children: [
          _SingleCard(
            color: Colors.purple,
            icon: Icons.shop,
            text: 'Tienda',
          ),
          _SingleCard(
              color: Colors.purpleAccent, icon: Icons.cloud, text: 'Bill')
        ]),
        TableRow(children: [
          _SingleCard(
            color: Colors.deepPurple,
            icon: Icons.movie,
            text: 'Entretainment',
          ),
          _SingleCard(
              color: Colors.pinkAccent,
              icon: Icons.food_bank_outlined,
              text: 'Grocery')
        ])
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String text;

  const _SingleCard(
      {super.key, required this.icon, required this.color, required this.text});

  @override
  Widget build(BuildContext context) {
    // ClipRRect para que ningun elemnto se salga de el
    return _CardBackground(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: color,
            radius: 30,
            child: Icon(
              icon,
              size: 35,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            text,
            style: TextStyle(color: color, fontSize: 18),
          )
        ],
      ),
    );
  }
}

class _CardBackground extends StatelessWidget {
  final Widget child;

  const _CardBackground({super.key, required this.child});
  @override
  Widget build(BuildContext context) {
    return Container(
      // Para dar separacion entre las cajas
      margin: EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            height: 200,
            // para darle el efecto de caja
            decoration: BoxDecoration(
                color: Color.fromRGBO(62, 66, 67, 0.7),
                borderRadius: BorderRadius.circular(20)),
            child: child,
          ),
        ),
      ),
    );
  }
}
