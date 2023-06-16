import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';

class XDLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(start: 50.0, end: 49.0),
            Pin(size: 53.0, middle: 0.4556),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
                borderRadius: BorderRadius.circular(20.0),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 50.0, end: 49.0),
            Pin(size: 27.0, middle: 0.457),
            child: Text(
              'Login',
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 20,
                color: const Color(0xff707070),
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Pinned.fromPins(
            Pin(start: 0.0, end: -0.3),
            Pin(size: 95.2, start: 0.0),
            child: SvgPicture.string(
              _svg_s9frd,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 246.0, start: 116.0),
            Pin(size: 59.0, start: 18.0),
            child: Text(
              'TasteTrack',
              style: TextStyle(
                fontFamily: 'Avenir Next LT Pro',
                fontSize: 49,
                color: const Color(0xff707070),
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.center,
              softWrap: false,
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_s9frd =
    '<svg viewBox="0.0 0.0 393.3 95.2" ><path transform="translate(-1.0, 0.0)" d="M 1 0 L 394.2588195800781 0 L 394.2588195800781 95.22352600097656 L 1 95.22352600097656" fill="#148f0f" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
