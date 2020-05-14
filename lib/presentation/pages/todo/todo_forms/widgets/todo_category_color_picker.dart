import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:todo_app_learning/application/todos/todo_category_form/todo_category_bloc.dart';

class TodoCategoryColorPicker extends HookWidget {
  final Color currentColor;

  const TodoCategoryColorPicker(this.currentColor);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TodoCategoryBloc, TodoCategoryState>(
        condition: (p, c) => p.todoCategory.color != c.todoCategory.color,
        builder: (context, state) {
          return GestureDetector(
              onTap: () {
                context
                    .bloc<TodoCategoryBloc>()
                    .add(TodoCategoryEvent.colorChanged(currentColor));
              },
              child: SimpleDialogOption(
                  padding: const EdgeInsets.all(5),
                  child: Material(
                    color: currentColor,
                    elevation: 4,
                    shape: CircleBorder(
                        side: state.todoCategory.color.value.fold(
                          // In case of a failure, just don't select anything
                          (_) => BorderSide.none,
                          (color) => color == currentColor
                              ? const BorderSide(width: 1.5)
                              : BorderSide.none,
                        ),
                        ),
                    child: Container(
                      width: 25,
                      height: 25,
                    ),
                  )));
        });
  }
}
