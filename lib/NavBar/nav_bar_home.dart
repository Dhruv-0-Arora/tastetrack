import 'package:flutter/material.dart';
import 'package:tastetrack/XDUtil/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NavBar extends StatelessWidget {
  const NavBar({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          decoration: const BoxDecoration(
            color: Color(0xffffffff),
            boxShadow: [
              BoxShadow(
                color: Color(0x5d000000),
                offset: Offset(0, -2),
                blurRadius: 6,
              ),
            ],
          ),
        ),
        Pinned.fromPins(
          const Pin(size: 37.0, start: 43.0),
          const Pin(start: 11.0, end: 30.0),
          child:
              // Adobe XD layer: 'home' (shape)
              Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/NavBar/homeGreen.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        Align(
          alignment: const Alignment(-0.271, -0.034),
          child: SizedBox(
            width: 50.0,
            height: 49.0,
            child:
                // Adobe XD layer: 'plus' (group)
                Stack(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0xffffffff),
                    borderRadius: const BorderRadius.all(
                        Radius.elliptical(9999.0, 9999.0)),
                    border:
                        Border.all(width: 3.0, color: const Color(0xffadadad)),
                  ),
                ),
                Pinned.fromPins(
                  const Pin(size: 1.0, middle: 0.5102),
                  const Pin(start: 11.5, end: 10.5),
                  child: SvgPicture.string(
                    _svg_wpz2d,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  const Pin(start: 11.0, end: 11.0),
                  const Pin(size: 1.0, middle: 0.5208),
                  child: SvgPicture.string(
                    _svg_xzhar,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ),
        ),
        Pinned.fromPins(
          const Pin(size: 64.0, middle: 0.6292),
          const Pin(start: 8.0, end: 6.0),
          child:
              // Adobe XD layer: 'discover' (shape)
              Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/navbar/discover.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        Pinned.fromPins(
          const Pin(size: 57.0, end: 35.0),
          const Pin(start: 11.0, end: 10.0),
          child:
              // Adobe XD layer: 'settings' (shape)
              Container(
            decoration: BoxDecoration(
              image: const DecorationImage(
                image: AssetImage('assets/images/navbar/settings.png'),
                fit: BoxFit.fill,
              ),
              borderRadius: BorderRadius.circular(47.0),
            ),
          ),
        ),
        const Pinned.fromPins(
          Pin(size: 58.0, start: 34.0),
          Pin(start: 48.0, end: 6.0),
          child: Text(
            'Home',
            style: TextStyle(
              fontFamily: 'Product Sans',
              fontSize: 20,
              color: Color(0xff8c9d32),
            ),
            textAlign: TextAlign.center,
            softWrap: false,
          ),
        ),
      ],
    );
  }
}

const String _svg_wpz2d =
    '<svg viewBox="146.0 800.5 1.0 27.0" ><path transform="translate(146.0, 800.5)" d="M 0 0 L 0 27" fill="none" stroke="#adadad" stroke-width="3" stroke-miterlimit="4" stroke-linecap="round" /></svg>';
const String _svg_xzhar =
    '<svg viewBox="132.0 814.0 28.0 1.0" ><path transform="translate(132.0, 814.0)" d="M 0 0 L 28 0" fill="none" stroke="#adadad" stroke-width="3" stroke-miterlimit="4" stroke-linecap="round" /></svg>';
