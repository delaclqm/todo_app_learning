import 'dart:math';

import 'package:flutter/material.dart';

import 'todo_detail.dart';


class TodoTile extends StatefulWidget {
  
  @override
  _TodoTileState createState() => _TodoTileState();
}

class _TodoTileState extends State<TodoTile> {
  bool _completed = Random().nextBool();
  static double _difficulty = Random().nextDouble();
  String _difficultyInWords = _determineDifficulty(_difficulty);

  static String _determineDifficulty(double value) {
    if(value <= 0.33) {
      return "Easy";
    } else if (value <= 0.66) {
      return "Medium";
    } else {
      return "Hard";
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        leading: Container(
          padding: const  EdgeInsets.only(right: 12.0),
          decoration: const BoxDecoration(
              border: Border(
                  right: BorderSide(width: 1.0, color: Colors.white24))),
          child: Checkbox(
            value: _completed,
            checkColor: Colors.black,
            onChanged: (bool newValue) {
              setState(() {
                _completed = newValue;
              });
            },
          )
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
                      backgroundColor: const Color.fromRGBO(209, 224, 224, 0.2),
                      value: _difficulty,
                      valueColor: AlwaysStoppedAnimation(Colors.green)),
                )),
            Expanded(
              flex: 4,
              child: Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child:
                      Text(_difficultyInWords, style: TextStyle(color: Colors.white))),
            )
          ],
        ),
        trailing: const TrailingActionIcon());
  }
}

class TrailingActionIcon extends StatelessWidget {
  const TrailingActionIcon({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
        icon: Icon(Icons.keyboard_arrow_right,
            color: Colors.white, size: 30.0),
        onPressed: () {
          showModalBottomSheet(
              context: context,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50.0),
                  topRight: Radius.circular(50.0)
                ),
              ),
              backgroundColor: Theme.of(context).canvasColor,
              builder: (context) => const TodoDetail());
        });
  }
}
