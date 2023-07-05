import 'package:flutter/material.dart';
import 'package:tastetrack/XDUtil/page_link.dart';

import '../../Pages/add_page.dart';
import '../transition_utility.dart';

class AddIcon extends StatelessWidget {
  final String start;
  const AddIcon({Key? key, required this.start}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageLink(
      links: [
        PageLinkInfo(
          transition: TransitionUtility(start: start, target: "add")
              .getTransition(), // getting transition type
          ease: Curves.easeOut,
          duration: 0.3,
          pageBuilder: () => const AddPage(),
        ),
      ],
      child: Container(
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
    );
  }
}
