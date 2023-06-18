import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 390,
      height: 844,
      color: const Color(0xfff3f3cf),
      padding: const EdgeInsets.only(
        bottom: 188,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 390.26,
            height: 95.22,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 390.26,
                  height: 95.22,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    gradient: const LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [Color(0xff526e03), Color(0xffb4c100)],
                    ),
                  ),
                  padding: const EdgeInsets.only(
                    left: 104,
                    right: 11,
                    top: 16,
                    bottom: 20,
                  ),
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 275,
                        child: Text(
                          "TasteTrack",
                          style: TextStyle(
                            fontSize: 49,
                            fontFamily: "Product Sans",
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 38.19),
          const Text(
            "Welcome",
            style: TextStyle(
              color: Color(0xff92a143),
              fontSize: 40,
              fontFamily: "",
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 38.19),
          const SizedBox(
            width: 343,
            height: 254,
            child: Text(
              "Discover a world of culinary exploration. our guide to new exploration. our guide to new tastes, flavors, and food experiences. Know what YOU eat. Start your flavorful adventure with TasteTrack today. Bon appétit!",
              style: TextStyle(
                color: Color(0xff357960),
                fontSize: 24,
              ),
            ),
          ),
          const SizedBox(height: 38.19),
          Container(
            width: 294,
            height: 53,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 294,
                  height: 53,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Color(0x99ffffff),
                  ),
                  padding: const EdgeInsets.only(
                    left: 117,
                    right: 112,
                    top: 11,
                    bottom: 13,
                  ),
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Login",
                        style: TextStyle(
                          color: Color(0xff0a3c03),
                          fontSize: 24,
                          fontFamily: "Inter",
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 38.19),
          Container(
            width: 294,
            height: 53,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 294,
                  height: 53,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Color(0x99ffffff),
                  ),
                  padding: const EdgeInsets.only(
                    left: 106,
                    right: 99,
                    top: 11,
                    bottom: 13,
                  ),
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Sign up",
                        style: TextStyle(
                          color: Color(0xff0a3c03),
                          fontSize: 24,
                          fontFamily: "Inter",
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
