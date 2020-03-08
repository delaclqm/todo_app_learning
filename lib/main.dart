import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:todo_app_learning/features/login/presentation/login_page.dart';

import 'package:todo_app_learning/features/todo/presentation/pages/todo_home.dart';


Future<void> main() async {
  runApp(LoginPage());
}

class FirestoreTest extends StatelessWidget {
   @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(
      appBar: AppBar(
        title: Text('Test'),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: StreamBuilder<QuerySnapshot>(
            stream: Firestore.instance.collection('users')
              .snapshots(),
            builder: (BuildContext context,
              AsyncSnapshot<QuerySnapshot> snapshot) {
                if (snapshot.hasError)
                  return new Text('Error: ${snapshot.error}');
                switch (snapshot.connectionState) {
                  case ConnectionState.waiting:
                    return new Text('Loading...');
                  default:
                    return new ListView(
                      children: snapshot.data.documents
                        .map((DocumentSnapshot document) {
                          return Text(document['firstName']);
                      }).toList(),
                    );
                }
              },
            )),
          )));
  }
}

class TodoApp extends StatelessWidget {
   @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primaryColor: Colors.blue,
          brightness: Brightness.dark,
          accentColor: Colors.green
        ),
      home: TodoHome(),
    );
  }
}
