import 'package:flutter/material.dart';
import 'package:tastetrack/XDUtil/pinned.dart';
import 'package:tastetrack/XDUtil/page_link.dart';

import '../../Pages/settings_page.dart';

class SettingsIcon extends StatelessWidget {
  const SettingsIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Pinned.fromPins(
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
    );
  }
}
