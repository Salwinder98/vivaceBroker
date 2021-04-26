import 'package:flutter/material.dart';
import 'package:flutter_bootstrap/flutter_bootstrap.dart';

import 'LogIn/UI/LogInPage.dart';



void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
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

/*class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final logo = Padding(
      padding: EdgeInsets.all(20),
      child: Hero(
          tag: 'hero',
          child: CircleAvatar(
            radius: 56.0,
            child: Image.asset('assets/logo.png'),
          )),
    );
    final inputEmail = BootstrapContainer(
      fluid: true,
      children: <BootstrapCol>[
        BootstrapCol(
          sizes: 'col-md-10 col-sm-12',
          offsets: 'offset-md-1 offset-sm-0',
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              hintText: 'Email',
              contentPadding: EdgeInsets.fromLTRB(5.0, 5.0, 5.0, 5.0),
            ),
          ),
        ),
      ],
    );
    final inputPassword = BootstrapContainer(
      padding: const EdgeInsets.only(bottom: 20),
      fluid: true,
      children: <BootstrapCol>[
        BootstrapCol(
          sizes: 'col-md-10 col-sm-12',
          offsets: 'offset-md-1 offset-sm-0',
          child: TextField(
            obscureText: true,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              hintText: 'Password',
              contentPadding: EdgeInsets.fromLTRB(5.0, 5.0, 5.0, 5.0),
            ),
          ),
        ),
      ],
    );
    final buttonLogin = BootstrapContainer(
      padding: const EdgeInsets.only(bottom: 20),
      fluid: true,
      children: <BootstrapCol>[
        BootstrapCol(
          sizes: 'col-md-10 col-sm-12',
          offsets: 'offset-md-1 offset-sm-0',
          child: ButtonTheme(
            height: 45,
            child: RaisedButton(
              child: Text('Login',
                  style: TextStyle(color: Colors.white, fontSize: 20)),
              color: Colors.black87,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)),
              onPressed: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Myhome_admin_Page()),
                )
              },
            ),
          ),
        ),
      ],
    );
    final buttonForgotPassword = FlatButton(
        child: Text(
          'Forgot Password?',
          style: TextStyle(color: Colors.grey, fontSize: 16),
        ),
        onPressed: null);
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Vivac"),
        centerTitle: false,
        actions: [],
      ),
      body: Stack(
        children: <Widget>[
          ListView(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height / 2,
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
              ),
              Container(
                height: MediaQuery.of(context).size.height / 2,
                width: MediaQuery.of(context).size.width,
                color: Colors.grey,
              ),
            ],
          ),
          Center(
            child: Card(
              elevation: 2.0,
              child: Container(
                padding: EdgeInsets.all(20.0),
                width: MediaQuery.of(context).size.width / 2.5,
                height: MediaQuery.of(context).size.height / 1.5,
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 40.0),
                    Center(
                        child: Text(
                      "Admin Panel",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    )),
                    inputEmail,
                    inputPassword,
                    buttonLogin,
                    buttonForgotPassword
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }*/
