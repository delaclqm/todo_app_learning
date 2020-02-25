import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Theme.of(context).canvasColor,
        actions: <Widget>[
          BadgeIcon(
            iconButton: IconButton(icon: Icon(Icons.notifications), onPressed: null),
            number: '16'
          ),
          IconButton(
            icon: Icon(Icons.account_circle),
            onPressed: null,
          )
        ],
      ),
      body: TodoCard(),
      floatingActionButton: MyFloatingActionButton());
  }
}

class MyFloatingActionButton extends StatelessWidget {
  const MyFloatingActionButton
({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        // Add your onPressed code here!
      },
      child: Icon(Icons.add
      ),
      backgroundColor: Theme.of(context).accentColor,
    );
  }
}

class TodoCard extends StatelessWidget {
  const TodoCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
  return Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Text('Some Title'),
          Text('Some subtitle'),
          Text('how many points'),
          Icon(Icons.account_circle)
        ],
      ),
    );
}
}

class BadgeIcon extends StatelessWidget {
  final String number;
  final IconButton iconButton;

  const BadgeIcon({
    Key key,
    @required this.number,
    @required this.iconButton
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
            this.iconButton,
            Positioned(
              right: 11,
              top: 11,
              child: Container(
                padding: EdgeInsets.all(2),
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(6),
                ),
                constraints: BoxConstraints(
                  minWidth: 14,
                  minHeight: 14,
                ),
                child: Text(
                  this.number,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 8,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            )
          ]);
  }
}
