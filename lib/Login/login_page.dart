import 'package:flutter/material.dart';
import 'package:tastetrack/XDUtil/pinned.dart';
import '../Components/top_bar.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff3f3cf),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(start: -0.3, end: 0.0),
            Pin(size: 95.2, start: 0.0),
            child:
                // Adobe XD layer: 'Top Bar' (component)
                const TopBar(),
          ),
        ],
      ),
    );
  }
}
