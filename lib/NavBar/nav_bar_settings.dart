import 'package:flutter/material.dart';
import 'package:tastetrack/XDUtil/pinned.dart';

import 'Icons/add_icon.dart';
import 'Icons/discover_icon.dart';
import 'Icons/home_icon.dart';

class NavBarSettings extends StatelessWidget {
  const NavBarSettings({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        /*
          Top Shadow for Navigation bar
        */
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
        const HomeIcon(start: "settings"),
        const AddIcon(start: "settings"),
        const DiscoverIcon(start: "settings"),

        // green settings Icon
        Pinned.fromPins(
          const Pin(size: 37.0, end: 44.0),
          const Pin(start: 11.0, end: 30.0),
          child: Container(
            decoration: BoxDecoration(
              image: const DecorationImage(
                image: AssetImage('assets/images/navbar/settingsGreen.png'),
                fit: BoxFit.fill,
              ),
              borderRadius: BorderRadius.circular(47.0),
            ),
          ),
        ),
        const Pinned.fromPins(
          Pin(size: 70.0, end: 28.0),
          Pin(start: 48.0, end: 6.0),
          child: Text(
            'Settings',
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
