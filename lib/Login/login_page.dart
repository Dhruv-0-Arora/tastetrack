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
      backgroundColor: const Color(0xffcbd6d5),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            const Pin(size: 294.0, middle: 0.5051),
            const Pin(startFraction: 0.5, endFraction: 0.4378),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0x99ffffff),
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
          ),
          const Align(
            alignment: Alignment(0.003, -0.169),
            child: SizedBox(
              width: 90.0,
              height: 60.0,
              child: Text(
                'Login',
                style: TextStyle(
                  fontFamily: 'ScoutCond',
                  fontSize: 60,
                  color: Color(0xff8c9d32),
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.center,
                softWrap: false,
              ),
            ),
          ),
          const Pinned.fromPins(
            Pin(start: -0.3, end: 0.0),
            Pin(size: 95.2, start: 0.0),
            child:
                // Adobe XD layer: 'TopBar' (component)
                TopBar(),
          ),
        ],
      ),
    );
  }
}
