import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlerDialog {


  Future<void> alertDialog(
      BuildContext context, String title, String messageBody) {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 400,
          width: 200,
          child: AlertDialog(
            title: Text(title),
            content: Text(messageBody),
            actions: <Widget>[
              TextButton(
                child: Text('Ok'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
