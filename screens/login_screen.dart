import 'package:flutter/material.dart';
import 'package:login_signup/components/rounded_button.dart';
import 'package:login_signup/constants.dart';
import 'package:login_signup/screens/home_screen.dart';
// import 'package:firebase_auth/firebase_auth.dart';
import 'package:login_signup/screens/welcome_screen.dart';
// import 'package:modal_progress_hud/modal_progress_hud.dart';

class LoginScreen extends StatefulWidget {
  static const String id = 'login_screen';
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool showSpinner = false;
  // final _auth = FirebaseAuth.instance;
  late String email;
  late String password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SizedBox(
              height: 48.0,
            ),
            TextField(
              keyboardType: TextInputType.emailAddress,
              textAlign: TextAlign.center,
              onChanged: (value) {
                email = value;
              },
              decoration:
                  kTextFieldDecoration.copyWith(hintText: 'Enter your email'),
            ),
            SizedBox(
              height: 8.0,
            ),
            TextField(
              obscureText: true,
              textAlign: TextAlign.center,
              onChanged: (value) {
                password = value;
              },
              decoration: kTextFieldDecoration.copyWith(
                  hintText: 'Enter your password'),
            ),
            SizedBox(
              height: 24.0,
            ),
            RoundedButton(
              title: 'Log In',
              colour: Colors.lightBlueAccent,
              onPressed: () async {
                setState(() {
                  showSpinner = true;
                  Navigator.pushNamed(context, HomeScreen.id);
                });
                // try {
                //   final user = await _auth.signInWithEmailAndPassword(
                //       email: email, password: password);
                //   if (user != null) {
                //     Navigator.pushNamed(context, WelcomeScreen.id);
                //   }
                //
                //   setState(() {
                //     showSpinner = false;
                //   });
                // } catch (e) {
                //   print(e);
                // }
              },
            ),
          ],
        ),
      ),
    );
  }
}
