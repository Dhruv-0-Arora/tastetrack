import 'package:flutter/material.dart';
import 'package:tastetrack/XDUtil/pinned.dart';

import '../Icons/add_icon.dart';
import '../Icons/home_icon.dart';
import '../Icons/settings_icon.dart';

class NavBarDiscover extends StatelessWidget {
  const NavBarDiscover({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        // shadow
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

        // icons
        const HomeIcon(start: "discover"),

        const AddIcon(start: "discover"),

        // green Discover Icon
        Pinned.fromPins(
          const Pin(size: 38.0, middle: 0.605),
          const Pin(start: 8.0, end: 32.0),
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/navbar/discoverGreen.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),

        const SettingsIcon(start: "discover"),

        // Discover text
        const Align(
          alignment: Alignment(0.268, 0.704),
          child: SizedBox(
            width: 76.0,
            height: 24.0,
            child: Text(
              'Discover',
              style: TextStyle(
                fontFamily: 'Product Sans',
                fontSize: 19,
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
