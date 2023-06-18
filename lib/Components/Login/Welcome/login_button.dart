import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';

class LoginPageButton extends StatelessWidget {
  const LoginPageButton({
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
        Pinned.fromPins(
          Pin(size: 96.0, middle: 0.5),
          Pin(start: 12.0, end: 0.0),
          child: const Text(
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

