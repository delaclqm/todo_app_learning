import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:todo_app_learning/application/todos/todo_category_form/todo_category_bloc.dart';
import 'package:todo_app_learning/domain/todo/todo_category/todo_category.dart';
import 'package:todo_app_learning/presentation/pages/todo/misc/todo_item.dart';
import '../misc/build_context_x.dart';

import '../../../routes/router.gr.dart';
import 'widgets/todo_item_name_field.dart';

class TodoItemForm extends HookWidget {
  final TodoCategory todoCategory;

  const TodoItemForm({
    @required this.todoCategory
  });

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => FormTodos(),
      child: SimpleDialog(
        title: const Text('Add Todo'),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        contentPadding: const EdgeInsets.all(20),
        children: <Widget>[
          TodoItemNameField(
            index: 0,
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
                borderSide: BorderSide(color: Colors.red),
                child: const Text('Close'),
              ),
              RaisedButton(
                onPressed: () {
                  
              context
                  .bloc<TodoCategoryBloc>()
                  .add(TodoCategoryEvent.todosChanged(context.formTodos));
                  
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
    ));
  }
}
