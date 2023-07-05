import 'package:flutter/material.dart';
import 'package:tastetrack/XDUtil/pinned.dart';

import '../Icons/home_icon.dart';
import '../Icons/discover_icon.dart';
import '../Icons/settings_icon.dart';

class NavBarAdd extends StatelessWidget {
  const NavBarAdd({
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

        // Home Page button
        const HomeIcon(start: "add"),

        /*
          Plus Icon (selected) -> green
        */
        Pinned.fromPins(
          const Pin(size: 36.0, middle: 0.377),
          const Pin(start: 12.0, end: 32.0),
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/navbar/plusGreen.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),

        // Discover Page button
        const DiscoverIcon(start: "add"),

        // Settings Page Button
        const SettingsIcon(start: "add"),

        /*
          Green Text -> Add
        */
        const Align(
          alignment: Alignment(-0.249, 0.704),
          child: SizedBox(
            width: 36.0,
            height: 24.0,
            child: Text(
              'Add',
              style: TextStyle(
                fontFamily: 'Product Sans',
                fontSize: 20,
                color: Color(0xff8c9d32),
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
