import 'package:flutter/material.dart';
import 'package:tastetrack/Components/Login/Welcome/google_button.dart';
import 'package:tastetrack/XDUtil/pinned.dart';
import '../Components/Login/Welcome/sign_up_button.dart';
import '../Login/sign_up_page.dart';
import 'package:tastetrack/XDUtil/page_link.dart';
import '../Login/login_page.dart';
import '../Components/top_bar.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffcbd6d5),
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          // Top Bar
          const Pinned.fromPins(
            Pin(start: -0.3, end: 0.0),
            Pin(size: 95.2, start: 0.0),
            child: TopBar(),
          ),

          const Positioned(
            top: 156,
            child: Text(
              'Welcome',
              style: TextStyle(
                fontFamily: 'ScoutCond',
                fontSize: 60,
                color: Color(0xff8c9d32),
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.center,
              softWrap: false,
            ),
          ),

          // Sign in with Google Button
          Pinned.fromPins(
            const Pin(size: 294.0, middle: 0.5051),
            const Pin(size: 53.0, start: 535.0),
            child: PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.slideLeft,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => const LoginPage(),
                ),
              ],
              child: const GoogleButton(),
            ),
          ),

          const Pinned.fromPins(
            Pin(startFraction: 0.0611, endFraction: 0.0611),
            Pin(size: 203.0, start: 248.0),
            child: Text.rich(
              TextSpan(
                style: TextStyle(
                  fontFamily: 'Product Sans',
                  fontSize: 24,
                  color: Color(0xff357960),
                ),
                children: [
                  TextSpan(
                    text:
                        'Discover a world of culinary exploration. our guide to new tastes, flavors, and food experiences. ',
                  ),
                  TextSpan(
                    text: 'Know what YOU eat.',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  TextSpan(
                    text:
                        ' Start your flavorful adventure with TasteTrack today. Bon appétit!',
                  ),
                ],
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
            ),
          ),
          // q: how do I make this text reactive and stay centered?
          // a: use a stack and position the text
          // Welcome Text
        ],
      ),
    );
  }
}
