import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:tastetrack/Components/Login/Welcome/sign_up_button.dart';
import '../Components/Login/Welcome/login_button.dart';
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

          // Top Bar component
          const TopBar(),

          // Welcome Title
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

          // Description of TasteTrack
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
          
          // Sign Up button
          Pinned.fromPins(
            Pin(start: 50.0, end: 49.0),
            Pin(size: 53.0, middle: 0.7872),
            child:
              // Sign Up button animation
              PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.SlideLeft,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => SignUpPage(), // linking to the Sign Up page
                ),
              ],
              child: const SignUpButton(), // Sign Up button component
            ),
          ),


          // Login button
          Pinned.fromPins(
            Pin(start: 50.0, end: 49.0),
            Pin(size: 53.0, middle: 0.6708),
            child:
                // Login Button Animation
                PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.SlideLeft,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => const LoginPage(), // linking to the Login page
                ),
              ],
              child: const LoginPageButton(), // Login button component
            ),
          ),
          

        ],
      ),
    );
  }
}
