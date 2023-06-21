import 'package:flutter/material.dart';
import 'package:tastetrack/XDUtil/pinned.dart';
import 'package:tastetrack/XDUtil/blend_mask.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TopBar extends StatelessWidget {
  const TopBar({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.6),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Stack(
        children: <Widget>[
          Pinned.fromPins(
            const Pin(start: 0.0, endFraction: 0.0),
            const Pin(size: 95.2, start: 0.0),
            child: SvgPicture.string(
              topBarGradient,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            const Pin(start: 12.3, end: 31.3),
            const Pin(size: 65.0, start: 5.6),
            child:
                // Adobe XD layer: 'Logo' (group)
                Stack(
              children: <Widget>[
                const Align(
                  alignment: Alignment(1.0, 0.244),
                  child: SizedBox(
                    width: 246.0,
                    height: 55.0,
                    child: BlendMask(
                      blendMode: BlendMode.overlay,
                      child: Text(
                        'TasteTrack',
                        style: TextStyle(
                          fontFamily: 'Avenir Next LT Pro',
                          fontSize: 49,
                          color: Color(0xff0b2a92),
                          fontWeight: FontWeight.w700,
                        ),
                        textAlign: TextAlign.center,
                        softWrap: false,
                      ),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  const Pin(size: 85.0, start: 0.0),
                  const Pin(start: 5.0, end: 0.0),
                  child: Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/TempLogo.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

const String topBarGradient =
    '<svg viewBox="0.0 0.0 393.3 95.2" ><defs><linearGradient id="gradient" x1="0.0" y1="0.5" x2="1.0" y2="0.5"><stop offset="0.0" stop-color="#526e03" /><stop offset="1.0" stop-color="#b4c100" /></linearGradient></defs><path transform="translate(-1.0, 0.0)" d="M 1 0 L 394.2588195800781 0 L 394.2588195800781 95.22352600097656 L 1 95.22352600097656" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
