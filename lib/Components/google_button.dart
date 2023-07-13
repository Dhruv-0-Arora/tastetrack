import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

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
      InkWell(
        onTap: () {
          signInWithGoogle();
        },
        child: const SizedBox(
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
      ),
    ]);
  }

  signInWithGoogle() async {
    GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
    GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;

    AuthCredential credential = GoogleAuthProvider.credential(
        idToken: googleAuth?.idToken, accessToken: googleAuth?.accessToken);

    FirebaseAuth.instance.signInWithCredential(credential);
  }
}
