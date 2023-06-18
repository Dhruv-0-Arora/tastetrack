import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import '../Components/top_bar.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff3f3cf),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(start: -0.3, end: 0.0),
            Pin(size: 95.2, start: 0.0),
            child:
                // Adobe XD layer: 'Top Bar' (component)
                const TopBar(),
          ),
        ],
      ),
    );
  }
}
