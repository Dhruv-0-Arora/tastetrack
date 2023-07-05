import 'package:flutter/material.dart';
import 'package:tastetrack/XDUtil/pinned.dart';

import '../Icons/add_icon.dart';
import '../Icons/discover_icon.dart';
import '../Icons/settings_icon.dart';

class NavBarHome extends StatelessWidget {
  const NavBarHome({
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

        /*
          Home Icon (Green)
        */
        Pinned.fromPins(
          const Pin(size: 37.0, start: 43.0),
          const Pin(start: 11.0, end: 30.0),
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/navbar/homeGreen.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        const AddIcon(start: "home"),
        const DiscoverIcon(start: "home"),
        const SettingsIcon(start: "home"),

        /*
          Green text -> Home
        */
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
