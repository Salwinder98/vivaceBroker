import 'package:bima/AlertDialog/AlertDialog.dart';
import 'package:bima/Dashboard.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AuthService{
  signIn(email, password, BuildContext context) {
    FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email, password: password)
        .then((User) async {

      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) =>  Dashboard()),
      );


    }).catchError((e) {
      AlerDialog().alertDialog(context, 'Wrong username/password',
          'Correct and try agin ,or contact admin');
    });
  }
}
