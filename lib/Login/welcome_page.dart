import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'signup_page.dart';
import 'package:adobe_xd/page_link.dart';
import 'login_page.dart';
import '../Components/top_bar.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff3f3cf),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(start: 50.0, end: 49.0),
            Pin(size: 53.0, middle: 0.7872),
            child:
                // Adobe XD layer: 'Sign up Button' (group)
                PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.SlideLeft,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => SignUpPage(),
                ),
              ],
              child: Stack(
                children: <Widget>[
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      width: 294.0,
                      height: 53.0,
                      decoration: BoxDecoration(
                        color: const Color(0x99ffffff),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                  ),
                  Pinned.fromPins(
                    Pin(size: 104.0, middle: 0.5),
                    Pin(start: 12.0, end: 0.0),
                    child: const Text(
                      'Sign up',
                      style: TextStyle(
                        fontFamily: 'Product Sans',
                        fontSize: 24,
                        color: Color(0xff0a3c03),
                        fontWeight: FontWeight.w700,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 50.0, end: 49.0),
            Pin(size: 53.0, middle: 0.6708),
            child:
                // Adobe XD layer: 'Login Button' (group)
                PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.SlideLeft,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => const LoginPage(),
                ),
              ],
              child: Stack(
                children: <Widget>[
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      width: 294.0,
                      height: 53.0,
                      decoration: BoxDecoration(
                        color: const Color(0x99ffffff),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                  ),
                  Pinned.fromPins(
                    Pin(size: 96.0, middle: 0.5),
                    Pin(start: 12.0, end: 0.0),
                    child: const Text(
                      'Login',
                      style: TextStyle(
                        fontFamily: 'Product Sans',
                        fontSize: 24,
                        color: Color(0xff0a3c03),
                        fontWeight: FontWeight.w700,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: -0.3, end: 0.0),
            Pin(size: 95.2, start: 0.0),
            child:
                // Adobe XD layer: 'Top Bar' (component)
                const TopBar(),
          ),
          const Align(
            alignment: Alignment(0.004, -0.567),
            child: SizedBox(
              width: 170.0,
              height: 48.0,
              child: Text(
                'Welcome',
                style: TextStyle(
                  fontFamily: 'Product Sans',
                  fontSize: 40,
                  color: Color(0xff92a143),
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.center,
                softWrap: false,
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 26.0, end: 22.0),
            Pin(size: 203.0, middle: 0.3698),
            child: const Text.rich(
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
        ],
      ),
    );
  }
}
