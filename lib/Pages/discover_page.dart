import 'package:flutter/material.dart';
import 'package:tastetrack/NavBar/States/nav_bar_discover.dart';
import 'package:tastetrack/XDUtil/pinned.dart';
import '../Components/top_bar.dart';

class DiscoverPage extends StatelessWidget {
  const DiscoverPage({
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
            child: NavBarDiscover(),
          ),
          Pinned.fromPins(
            Pin(start: 0.0, end: -0.3),
            Pin(size: 95.2, start: 0.0),
            child: TopBar(),
          ),
        ],
      ),
    );
  }
}
