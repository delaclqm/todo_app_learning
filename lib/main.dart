import 'package:flutter/material.dart';

import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:todo_app_learning/features/todo/presentation/pages/todo_home.dart';


Future<void> main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // final FirebaseApp app = await FirebaseApp.configure(
  //   name: 'db2',
  //   options: const FirebaseOptions(
  //           googleAppID: '1:595116486838:android:b1a1a76a0fb6e2d5a77617',
  //           apiKey: 'AIzaSyD_shO5mfO9lhy2TVWhfo1VUmARKlG4suk',
  //           databaseURL: 'https://flutterfire-cd2f7.firebaseio.com',
  //         ),
  // );
  runApp(MyApp());
}



class MyApp extends StatelessWidget {
  // This widget is the root of your application.
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
    // return MaterialApp(
    //   title: 'Flutter Demo',
    //   theme: ThemeData(
    //       primaryColor: Colors.blue,
    //       brightness: Brightness.dark,
    //       accentColor: Colors.green
    //     ),
    //   home: TodoHome(),
    // );
  }
}
