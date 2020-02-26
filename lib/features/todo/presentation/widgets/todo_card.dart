import 'package:flutter/material.dart';
import 'package:todo_app_learning/features/todo/presentation/pages/todo_list.dart';

class TodoCard extends StatelessWidget {
  const TodoCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => Navigator.of(context).push(
              
              MaterialPageRoute(builder: (context) => TodoList()),
            ),
        child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Container(
              padding: EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Text('Some Title',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                  Text('how many points'),
                  Spacer(),
                  Icon(Icons.account_circle)
                ],
              ),
            )));
  }
}
