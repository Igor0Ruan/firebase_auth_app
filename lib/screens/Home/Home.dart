import 'package:flutter/material.dart';
import 'package:firebase_auth/util/Navigator.dart';
import 'package:firebase_auth/util/DummyData.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue[900],
          title: Text("Flutter Firebase Login",
              style: TextStyle(color: Colors.yellow[300])),
          actions: <Widget>[
            IconButton(
              icon: new Icon(Icons.exit_to_app),
              tooltip: 'Sair',
              onPressed: () {
                FirebaseAuthAppNavigator.goToLogin(context);
              },
            )
          ],
        ),
        body: ListView.builder(
          itemCount: dummyData.length,
          itemBuilder: (context, i) => new Column(
                children: <Widget>[
                  new ListTile(
                    title: new Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          dummyData[i]['nome'],
                        )
                      ],
                    ),
                  )
                ],
              ),
        ));
  }
}
