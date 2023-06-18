import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:adobe_xd/blend_mask.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TopBar extends StatelessWidget {
  const TopBar({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Pinned.fromPins(
          Pin(start: 0.0, end: 0.0),
          Pin(size: 95.2, start: 0.0),
          child: SvgPicture.string(
            gradientBackground,
            allowDrawingOutsideViewBox: true,
            fit: BoxFit.fill,
          ),
        ),
        Pinned.fromPins(
          Pin(startFraction: 0.295, endFraction: 0.0795),
          Pin(size: 59.0, start: 18.0),
          child: BlendMask(
            blendMode: BlendMode.overlay,
            child: const Text(
              'TasteTrack',
              style: TextStyle(
                fontFamily: 'Avenir Next LT Pro',
                fontSize: 49,
                color: const Color(0xff0b2a92),
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.center,
              softWrap: false,
            ),
          ),
        ),
      ],
    );
  }
}

const String gradientBackground=
    '<svg viewBox="0.0 0.0 393.3 95.2" ><defs><linearGradient id="gradient" x1="0.0" y1="0.5" x2="1.0" y2="0.5"><stop offset="0.0" stop-color="#526e03" /><stop offset="1.0" stop-color="#b4c100" /></linearGradient></defs><path transform="translate(-1.0, 0.0)" d="M 1 0 L 394.2588195800781 0 L 394.2588195800781 95.22352600097656 L 1 95.22352600097656" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
