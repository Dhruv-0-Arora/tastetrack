import 'package:flutter/material.dart';
import 'package:tastetrack/Pages/discover_page.dart';
import 'package:tastetrack/Pages/settings_page.dart';
import 'package:tastetrack/XDUtil/pinned.dart';
import 'package:tastetrack/XDUtil/page_link.dart';

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

        /*
          Plus Icon 
        */
        Container(
          decoration: BoxDecoration(
            image: const DecorationImage(
              image: AssetImage('asset/images/navbar/plus.png'),
              fit: BoxFit.cover,
            ),
            borderRadius:
                const BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
            border: Border.all(width: 3.0, color: const Color(0xffadadad)),
          ),
          margin: const EdgeInsets.fromLTRB(123.0, 16.0, 220.0, 13.0),
        ),

        /*
          Discover Icon
        */
        Pinned.fromPins(
          const Pin(size: 64.0, middle: 0.6292),
          const Pin(start: 8.0, end: 6.0),
          child: PageLink(
            links: [
              PageLinkInfo(
                transition: LinkTransition.SlideLeft,
                ease: Curves.easeOut,
                duration: 0.3,
                pageBuilder: () => const DiscoverPage(),
              ),
            ],
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/navbar/discover.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
        ),

        /*
          Settings Icon
        */
        Pinned.fromPins(
          const Pin(size: 57.0, end: 35.0),
          const Pin(start: 11.0, end: 10.0),
          child: PageLink(
            links: [
              PageLinkInfo(
                transition: LinkTransition.SlideLeft,
                ease: Curves.easeOut,
                duration: 0.3,
                pageBuilder: () => const SettingsPage(),
              ),
            ],
            child: Container(
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: AssetImage('assets/images/navbar/settings.png'),
                  fit: BoxFit.fill,
                ),
                borderRadius: BorderRadius.circular(47.0),
              ),
            ),
          ),
        ),

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
