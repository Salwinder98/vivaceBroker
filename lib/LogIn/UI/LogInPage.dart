import 'package:bima/Dashboard.dart';
import 'package:bima/LogIn/Service/Auth_Service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Controllers/ColorController.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({Key key,
    @required this.Status,
    @required this.SignupStatus}) : super(key: key);
  final String SignupStatus;
  final String Status;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LogInPage(),
    );
  }
}
class LogInPage extends StatefulWidget {

  @override
  _LogInPage createState() => _LogInPage();
}

class _LogInPage extends State<LogInPage> {
  String _email, _password;
  final _formKey = GlobalKey<FormState>();
  TextEditingController textControllerEmail,textControllerPass;
  FocusNode textFocusNodeEmail;
  FocusNode  textFocusNodePass;
  bool _isEditingEmail = false;
  bool _isEditingPass = false;
  ColorController _colorController = new ColorController();
  @override
  void initState() {
    textControllerEmail = TextEditingController();
    textControllerPass = TextEditingController();
    textControllerPass.text = null;
    textControllerEmail.text = null;
    textFocusNodeEmail = FocusNode();
    textFocusNodePass = FocusNode();

    super.initState();
  }
  String _validateEmail(String value) {
    value = value.trim();

    if (textControllerEmail.text != null) {
      if (value.isEmpty) {
        return 'Email can\'t be empty';
      } else if (!value.contains(RegExp(
          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+"))) {
        return 'Enter a correct email address';
      }
    }

    return null;
  }
  String _validatePass(String value) {
    value = value.trim();

    if (textControllerPass.text != null) {
      if (value.isEmpty) {
        return 'PassWord can\'t be empty';
      }
    }
    return null;
  }




  @override
  Widget build(BuildContext context) {
    return Card(
        margin: const EdgeInsets.only(top: 200.0),
      child:Container
        (      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            margin: const EdgeInsets.only( left: 400, right: 400),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  child:TextField(
                    focusNode: textFocusNodeEmail,
                    keyboardType: TextInputType.emailAddress,

                    textInputAction: TextInputAction.next,
                    controller: textControllerEmail,
                    autofocus: false,
                    onChanged: (value) {
                      setState(() {
                        _isEditingEmail = true;
                      });
                    },
                    onSubmitted: (value) {
                      textFocusNodeEmail.unfocus();
                      // FocusScope.of(context).requestFocus(textFocusNodePassword);
                    },
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      border: new OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.blueGrey[800],
                          width: 3,
                        ),
                      ),
                      filled: true,
                      hintStyle: new TextStyle(
                        color: Colors.blueGrey[300],
                      ),
                      hintText: "Email",
                      fillColor: Colors.white,
                      errorText: _isEditingEmail
                          ? _validateEmail(textControllerEmail.text)
                          : null,
                      errorStyle: TextStyle(
                        fontSize: 12,
                        color: Colors.redAccent,
                      ),
                    ),
                  ),
                ),


               Container(
                 margin: EdgeInsets.only(top: 20),
                 child:  TextField(
                   focusNode: textFocusNodePass,
                   keyboardType: TextInputType.visiblePassword,
                   obscureText: true,
                   textInputAction: TextInputAction.next,
                   controller: textControllerPass,
                   autofocus: false,
                   onChanged: (value) {
                     setState(() {
                       _isEditingPass = true;
                     });
                   },
                   onSubmitted: (value) {
                     textFocusNodePass.unfocus();
                     // FocusScope.of(context).requestFocus(textFocusNodePassword);
                   },
                   style: TextStyle(color: Colors.black),
                   decoration: InputDecoration(
                     border: new OutlineInputBorder(
                       borderRadius: BorderRadius.circular(10),
                       borderSide: BorderSide(
                         color: Colors.blueGrey[800],
                         width: 3,
                       ),
                     ),
                     filled: true,
                     hintStyle: new TextStyle(
                       color: Colors.blueGrey[300],
                     ),
                     hintText: "Password",
                     fillColor: Colors.white,
                     errorText: _isEditingPass
                         ? _validatePass(textControllerPass.text)
                         : null,
                     errorStyle: TextStyle(
                       fontSize: 12,
                       color: Colors.redAccent,
                     ),
                   ),
                 ),
               ),
                Container(
                  width: 200,
                  height: 50,
                  alignment: Alignment.center,
                  padding:
                  const EdgeInsets.symmetric(vertical: 5.0, horizontal: 16.0),
                  margin: EdgeInsets.only(top: 20,left: 130),
                  //margin: const EdgeInsets.only(top: 20,left: 60,right: 60),
                   decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [_colorController.primarycolorblue,_colorController.primaryPurple],
                        ),
                        borderRadius: BorderRadius.circular(18.0)),
                  child: TextButton(
                    onPressed: () {
                    // print("status "+widget.Status.toString() +"sign up statussign "+widget.SignupStatus.toString());
                     /* Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Dashboard()),

                      );*/
                      print('email ====='+textControllerEmail.toString());
                      print('pass ====='+textControllerPass.toString());

                      AuthService().signIn(textControllerEmail.toString(), textControllerPass.toString(), context);
                    },
                    child: Text("SIGN IN",  textAlign: TextAlign.center,

                        style: GoogleFonts.workSans(fontStyle:FontStyle.normal,
                            fontWeight: FontWeight.w400,fontSize: 18,color: _colorController.primarycolorWhite)),
                  ),
                ),
              /*  Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Flexible(
                      flex: 1,
                      child: Container(
                        width: double.maxFinite,
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            'Log in',
                            style: TextStyle(fontSize: 14, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: Container(
                        width: double.maxFinite,
                        child: FlatButton(
                          onPressed: () {},
                          child: Text(
                            'Sign up',
                            style: TextStyle(fontSize: 14, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),*/
                //  Center(child: GoogleButton()),
              ],
            ),
          ),
        ),
      ),)
      // ...

    );
  }
}


