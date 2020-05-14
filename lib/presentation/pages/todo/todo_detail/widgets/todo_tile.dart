import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class TodoTile extends HookWidget {
  final Color checkColor;

  const TodoTile({
    @required this.checkColor
  });

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
            value: true,
            checkColor: Colors.black,
            activeColor: checkColor,
            onChanged: (bool newValue) {
              
            },
          )
        ),
        title: Text(
          'Title',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          'Created on Tuesday'
        ),
        trailing: IconButton(
          icon: Icon(Icons.delete,
          color: Colors.white, size: 20.0),
          onPressed: () {

        }));
  }
}