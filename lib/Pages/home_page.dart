import 'package:flutter/material.dart';
import 'package:tastetrack/XDUtil/pinned.dart';
import '../NavBar/States/nav_bar_home.dart';
import '../Components/top_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xffcbd6d5),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(start: 0.0, end: 0.0),
            Pin(size: 78.0, end: 0.0),
            child: NavBarHome(),
          ),
          Pinned.fromPins(
            Pin(start: -0.3, end: 0.0),
            Pin(size: 95.2, start: 0.0),
            child: TopBar(),
          ),
        ],
      ),
    );
  }
}
