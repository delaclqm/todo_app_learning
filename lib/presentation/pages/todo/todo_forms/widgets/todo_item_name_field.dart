import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app_learning/application/todos/todo_category_form/todo_category_bloc.dart';
import 'package:todo_app_learning/domain/todo/value_objects.dart';
import 'package:todo_app_learning/presentation/pages/todo/misc/todo_item.dart';
import '../../misc/build_context_x.dart';
import 'package:kt_dart/collection.dart';

class TodoItemNameField extends HookWidget {
  final int index;

  const TodoItemNameField({
    @required this.index
  });

  @override
  Widget build(BuildContext context) {
    final todo =
        context.formTodos.getOrElse(index, (_) => TodoItemPrimitive.empty());
    final textEditingController = useTextEditingController(text: todo.name);
    return TextFormField(
      controller: textEditingController,
        maxLength: TodoName.maxLength,
        onChanged: (value) {
          context.formTodos = context.formTodos.map((listTodo) =>
            listTodo == todo ? todo.copyWith(name: value) : listTodo);
        },
        validator: (_) {
            return context
              .bloc<TodoCategoryBloc>()
              .state
              .todoCategory
              .todos
              .value
              .fold(
                // Failure stemming from the TodoList length should NOT be displayed by the individual TextFormFields
                (f) => null,
                (todoList) => todoList[index].name.value.fold(
                  (f) => f.maybeMap(
                    empty: (f) => 'Cannot be empty',
                    exceedingLength: (_) => 'Too long',
                    multiline: (_) => 'Has to be in a single line',
                    orElse: () => null,
                  ),
                  (_) => null,
                ),
              );
        },
        decoration: InputDecoration(
            fillColor: Theme.of(context).cardColor, hintText: 'Todo Name'));
  }
}
