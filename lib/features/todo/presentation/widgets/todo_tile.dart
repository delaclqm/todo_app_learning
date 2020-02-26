import 'dart:math';

import 'package:flutter/material.dart';
import 'package:todo_app_learning/features/todo/presentation/pages/todo_detail.dart';

class TodoTile extends StatelessWidget {
  const TodoTile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool completed = Random().nextBool();
    final String difficulty = Random().nextDouble().toString();

    return ListTile(
        contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        leading: Container(
          padding: EdgeInsets.only(right: 12.0),
          decoration: new BoxDecoration(
              border: new Border(
                  right: new BorderSide(width: 1.0, color: Colors.white24))),
          child: IconButton(
            icon: completed
                ? Icon(Icons.check_box)
                : Icon(Icons.check_box_outline_blank),
            onPressed: () {
              completed = !completed;
            },
          ),
        ),
        title: Text(
          'Title',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        subtitle: Row(
          children: <Widget>[
            Expanded(
                flex: 1,
                child: Container(
                  child: LinearProgressIndicator(
                      backgroundColor: Color.fromRGBO(209, 224, 224, 0.2),
                      value: double.parse(difficulty),
                      valueColor: AlwaysStoppedAnimation(Colors.green)),
                )),
            Expanded(
              flex: 4,
              child: Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child:
                      Text(difficulty, style: TextStyle(color: Colors.white))),
            )
          ],
        ),
        trailing: IconButton(
            icon: Icon(Icons.keyboard_arrow_right,
                color: Colors.white, size: 30.0),
            onPressed: () {
              showModalBottomSheet(
                  context: context,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50.0),
                      topRight: Radius.circular(50.0)
                    ),
                  ),
                  backgroundColor: Theme.of(context).canvasColor,
                  builder: (context) => TodoDetail());
            }));
  }
}
