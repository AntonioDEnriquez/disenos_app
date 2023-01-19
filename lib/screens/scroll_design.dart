import 'package:flutter/material.dart';

class ScrollScreen extends StatelessWidget {
  final boxDecoration = const BoxDecoration(
      gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.5, 0.5],
          colors: [Color(0xff7DECCB), Color(0xff50C2DD)]));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // para poder dezliar la vista
      body: Container(
        decoration: boxDecoration,
        child: PageView(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          children: [Page1(), Page2()],
        ),
      ),
    );
  }
}

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Background(),
        // MainContent - Column
        MainContent()
      ],
      // Background Image
    );
  }
}

class MainContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(
        fontSize: 50, fontWeight: FontWeight.bold, color: Colors.white);
    return SafeArea(
      bottom: false,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 30,
          ),
          const Text(
            '11°',
            style: textStyle,
          ),
          const Text('Miércoles', style: textStyle),
          // Todo: expanded
          Expanded(child: Container()),
          const Icon(
            Icons.keyboard_arrow_down,
            size: 100,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}

class Background extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff50C2DD),
      height: double.infinity,
      alignment: Alignment.topCenter,
      child: const Image(
        image: AssetImage('assets/scroll-1.png'),
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff50C2DD),
      child: Center(
        child: TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
              backgroundColor: const Color(0xff0098FA),
              shape: const StadiumBorder()),
          child: const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 40,
            ),
            child: Text(
              'Bienvenido',
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
          ),
        ),
      ),
    );
  }
}
