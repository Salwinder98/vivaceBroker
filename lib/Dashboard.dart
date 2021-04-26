import 'package:bima/Tarrifs/UI/AddTariffs.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Products/UI/AddProduct.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  bool loading = false;
  @override
  void initState() {
    super.initState();
    //getDataFromUi();
  }

 /* getDataFromUi() async {
    loading = false;
    await ApiData.getData();
    setState(() {
      loading = true;
    });
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        centerTitle: true,
        title: new Text("Home"),
        automaticallyImplyLeading: false,
        actions: [
          PopupMenuButton(
            itemBuilder: (BuildContext bc) => [

              PopupMenuItem(child: Text("Settings"), value: "/settings"),
              PopupMenuItem(child: Text("Statistics"), value: "/statistics"),
            ],
            onSelected: (route) {
              print(route);
              // Note You must create respective pages for navigation
              Navigator.pushNamed(context, route);
            },
          ),
        ],

      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Row(
          children: <Widget>[
            Drawer(
                child: ListView(
                  padding: EdgeInsets.zero,
                  children: <Widget>[
                    DrawerHeader(
                      margin: EdgeInsets.zero,
                      child: Center(
                        child: Image(
                          image: AssetImage("assets/images/logo.jpeg"),
                        ),
                      ),
                    ),
                    ListTile(
                      leading: Icon(Icons.location_city),
                      title: Text('HOME'),
                      onTap: () {
                      //  _setPage(ClientPage());
                      },
                    ),
                    ListTile(
                      leading: Icon(Icons.multiline_chart),
                      title: Text('PRODUCTS'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>  AddProduct()),
                        );
                      },
                    ),
                    ListTile(
                      leading: Icon(Icons.add_business_sharp),
                      title: Text('TARIFFS'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>  AddTariff()),
                        );
                      },
                    ),
                    ListTile(
                      leading: Icon(Icons.supervised_user_circle),
                      title: Text('PROFILE'),
                      onTap: () {
                        //  _setPage(ClientPage());
                      },
                    ),
                    ListTile(
                      leading: Icon(Icons.logout),
                      title: Text('SIGN OUT'),
                      onTap: () {
                        //  _setPage(ClientPage());
                      },
                    ),
                  ],
                )
            ),
          ],
        ),
      ),
    );
  }
}
