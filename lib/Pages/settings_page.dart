import 'package:flutter/material.dart';
import 'package:tastetrack/XDUtil/pinned.dart';
import '../Components/nav_bar.dart';
import '../Components/top_bar.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffcbd6d5),
      body: Stack(
        children: <Widget>[
          const Pinned.fromPins(
            Pin(start: 0.0, end: 0.0),
            Pin(size: 78.0, end: 0.0),
            child:
                // Adobe XD layer: 'NavigationBar' (component)
                NavBar(),
          ),
          Pinned.fromPins(
            const Pin(start: 0.0, end: -0.3),
            const Pin(size: 95.2, start: 0.0),
            child:
                // Adobe XD layer: 'TopBar' (component)
                TopBar(),
          ),
        ],
      ),
    );
  }
}
