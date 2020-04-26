import 'package:flutter/material.dart';

import '../todo_tile.dart';


class TodoList extends StatelessWidget {
  const TodoList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.apps),
            onPressed: () => Navigator.of(context).pop(),
          ),
          actions: <Widget>[
            IconButton(icon: Icon(Icons.settings), onPressed: null)
          ],
        ),
        body: Container(
            color: Colors.deepPurple,
            child: Column(children: <Widget>[
              Container(
                padding: EdgeInsets.all(8.0),
                height: MediaQuery.of(context).size.height * 0.15,
                width: MediaQuery.of(context).size.width - 16.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Some Title', style: TextStyle(fontSize: 40.0)),
                    Text('Some Subtitle')
                  ],
                ),
              ),
              ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25.0),
                      topRight: Radius.circular(25.0)),
                  child: Container(
                    padding: EdgeInsets.all(4.0),
                    color: Theme.of(context).cardColor,
                    height: MediaQuery.of(context).size.height * 0.85 - 80.0,
                    child: ListView(children: _buildTiles(context)),
                  ))
            ])),
        );
  }

  List<TodoTile> _buildTiles(BuildContext context) {
    return List<TodoTile>.generate(20, (index) {
      return TodoTile();
    });
  }
}
