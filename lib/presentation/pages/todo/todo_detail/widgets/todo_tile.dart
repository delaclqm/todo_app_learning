import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:todo_app_learning/domain/todo/todo_category/todo_category.dart';
import 'package:todo_app_learning/domain/todo/todo_item/todo_item.dart';
import 'package:todo_app_learning/presentation/pages/todo/misc/todo_item.dart';

class TodoTile extends HookWidget {
  final TodoCategory todoCategory;
  final TodoItem todoItem;

  const TodoTile({
    @required this.todoCategory,
    @required this.todoItem
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
            value: todoItem.done,
            checkColor: Colors.black,
            activeColor: todoCategory.color.getOrCrash(),
            onChanged: (bool newValue) {
              
            },
          )
        ),
        title: Text(
          todoItem.name.getOrCrash(),
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        trailing: IconButton(
          icon: Icon(Icons.delete,
          color: Colors.white, size: 20.0),
          onPressed: () {

        }));
  }
}