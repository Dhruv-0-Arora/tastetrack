import 'package:flutter/material.dart';

class GoogleButton extends StatelessWidget {
  const GoogleButton({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
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
      const SizedBox(
        width: 354.31,
        height: 53,
        child: Stack(
          children: [
            Positioned(
              left: 113.36,
              top: 12,
              child: Text(
                'Google',
                style: TextStyle(
                  fontFamily: 'Product Sans',
                  fontSize: 24,
                  color: Color(0xff0a3c03),
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ],
        ),
      ),
    ]);

    // Stack(
    //   children: <Widget>[
    //     Align(
    //       alignment: Alignment.topLeft,
    //       child: Container(
    //         width: 294.0,
    //         height: 53.0,
    //         decoration: BoxDecoration(
    //           color: const Color(0x99ffffff),
    //           borderRadius: BorderRadius.circular(20.0),
    //         ),
    //       ),
    //     ),
    //     const Pinned.fromPins(
    //       Pin(size: 104.0, middle: 0.5),
    //       Pin(start: 12.0, end: 0.0),
    //       child: Text(
    //         'Google',
    //         style: TextStyle(
    //           fontFamily: 'Product Sans',
    //           fontSize: 24,
    //           color: Color(0xff0a3c03),
    //           fontWeight: FontWeight.w700,
    //         ),
    //         textAlign: TextAlign.center,
    //       ),
    //     ),
    //   ],
    // );
  }
}
