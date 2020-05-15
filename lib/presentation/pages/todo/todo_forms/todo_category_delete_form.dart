import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../application/todos/todo_actor/todo_actor_bloc.dart';
import '../../../../domain/todo/todo_category/todo_category.dart';
import '../../../routes/router.gr.dart';

class TodoCategoryDeleteForm extends StatelessWidget {
  final TodoCategory todoToDelete;

  const TodoCategoryDeleteForm({
    @required this.todoToDelete,
  });

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      title: const Text('Delete Todo Category'),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      contentPadding: const EdgeInsets.all(20),
      children: <Widget>[
        const Text(
          "Are you sure you want to delete this category?",
          textAlign: TextAlign.center,
          textScaleFactor: 1.5,
        ),
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
              borderSide: BorderSide(color: Colors.green),
              child: const Text('Close'),
            ),
            RaisedButton(
              onPressed: () {
                context
                    .bloc<TodoActorBloc>()
                    .add(TodoActorEvent.deleted(todoToDelete));
                Navigator.pop(context);
              },
              color: Colors.red,
              child: Text(
                'Delete',
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        )
      ],
    );
  }
}
