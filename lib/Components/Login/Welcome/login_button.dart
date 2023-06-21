import 'package:flutter/material.dart';
import 'package:tastetrack/XDUtil/pinned.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Align(
          alignment: Alignment.topLeft,
          child: Container(
            width: 294.0,
            height: 53.0,
            decoration: BoxDecoration(
              color: const Color(0x99ffffff),
              borderRadius: BorderRadius.circular(20.0),
            ),
          ),
        ),
        const Pinned.fromPins(
          Pin(size: 96.0, middle: 0.5),
          Pin(start: 12.0, end: 0.0),
          child: Text(
            'Login',
            style: TextStyle(
              fontFamily: 'Product Sans',
              fontSize: 24,
              color: Color(0xff0a3c03),
              fontWeight: FontWeight.w700,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
