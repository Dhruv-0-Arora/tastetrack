import 'package:flutter/material.dart';
import 'package:tastetrack/NavBar/transition_utility.dart';
import 'package:tastetrack/XDUtil/pinned.dart';
import 'package:tastetrack/XDUtil/page_link.dart';

import '../../Pages/discover_page.dart';

class DiscoverIcon extends StatelessWidget {
  final String start;
  const DiscoverIcon({required this.start, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Pinned.fromPins(
      const Pin(size: 64.0, middle: 0.6292),
      const Pin(start: 8.0, end: 6.0),
      child: PageLink(
        links: [
          PageLinkInfo(
            transition: TransitionUtility(start: start, target: "discover")
                .getTransition(),
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
