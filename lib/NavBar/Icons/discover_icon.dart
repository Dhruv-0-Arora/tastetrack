import 'package:flutter/material.dart';
import 'package:tastetrack/XDUtil/pinned.dart';
import 'package:tastetrack/XDUtil/page_link.dart';

import '../../Pages/discover_page.dart';

class DiscoverIcon extends StatelessWidget {
  const DiscoverIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Pinned.fromPins(
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
    );
  }
}
