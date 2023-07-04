import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';

class NavigationBar extends StatelessWidget {
  NavigationBar({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            color: const Color(0xffffffff),
            boxShadow: [
              BoxShadow(
                color: const Color(0x5d000000),
                offset: Offset(0, -2),
                blurRadius: 6,
              ),
            ],
          ),
        ),
        Pinned.fromPins(
          Pin(size: 37.0, start: 43.0),
          Pin(start: 11.0, end: 30.0),
          child:
              // Adobe XD layer: 'home' (shape)
              Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: const AssetImage(''),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        // Adobe XD layer: 'plus' (shape)
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: const AssetImage(''),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
            border: Border.all(width: 3.0, color: const Color(0xffadadad)),
          ),
          margin: EdgeInsets.fromLTRB(123.0, 16.0, 220.0, 13.0),
        ),
        Pinned.fromPins(
          Pin(size: 64.0, middle: 0.6292),
          Pin(start: 8.0, end: 6.0),
          child:
              // Adobe XD layer: 'discover' (shape)
              Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: const AssetImage(''),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        Pinned.fromPins(
          Pin(size: 57.0, end: 35.0),
          Pin(start: 11.0, end: 10.0),
          child:
              // Adobe XD layer: 'settings' (shape)
              Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: const AssetImage(''),
                fit: BoxFit.fill,
              ),
              borderRadius: BorderRadius.circular(47.0),
            ),
          ),
        ),
        Pinned.fromPins(
          Pin(size: 52.0, start: 35.0),
          Pin(start: 48.0, end: 6.0),
          child: Text(
            'Home',
            style: TextStyle(
              fontFamily: 'Product Sans',
              fontSize: 20,
              color: const Color(0xff8c9d32),
            ),
            textAlign: TextAlign.center,
            softWrap: false,
          ),
        ),
      ],
    );
  }
}
