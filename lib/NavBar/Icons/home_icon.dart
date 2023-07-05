import 'package:flutter/material.dart';
import 'package:tastetrack/XDUtil/pinned.dart';
import 'package:tastetrack/XDUtil/page_link.dart';

import '../../Pages/home_page.dart';
import '../transition_utility.dart';

class HomeIcon extends StatelessWidget {
  final String start;
  const HomeIcon({
    Key? key,
    required this.start,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Pinned.fromPins(
      const Pin(size: 60.0, start: 31.0),
      const Pin(start: 10.0, end: 8.0),
      child: PageLink(
        links: [
          PageLinkInfo(
            transition: TransitionUtility(start: start, target: "home")
                .getTransition(), // getting transition type
            ease: Curves.easeOut,
            duration: 0.3,
            pageBuilder: () => const HomePage(),
          ),
        ],
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/navbar/home.png'),
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
    );
  }
}
