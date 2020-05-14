import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:todo_app_learning/presentation/pages/todo/todo_forms/widgets/todo_item_name_field.dart';
import 'package:todo_app_learning/presentation/routes/router.gr.dart';

class TodoItemForm extends HookWidget {
  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      title: Text('Add Todo'),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      contentPadding: const EdgeInsets.all(20),
      children: <Widget>[
        TodoItemNameField(),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            OutlineButton(
              onPressed: () {
                Router.navigator.pop();
              },
              textColor: Colors.white,
              borderSide: BorderSide(color: Colors.red),
              child: const Text('Close'),
            ),
            RaisedButton(
              onPressed: () => {
                // context
                //     .bloc<TodoCategoryBloc>()
                //     .add(const TodoCategoryEvent.saved())
              },
              color: Colors.green,
              child: Text(
                'Create',
                style: TextStyle(color: Colors.black),
              ),
            )
          ],
        )
      ],
    );
  }
}
