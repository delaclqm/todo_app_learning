import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:todo_app_learning/application/todos/todo_category_form/todo_category_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app_learning/domain/todo/value_objects.dart';

class TodoCategoryNameField extends HookWidget {
  const TodoCategoryNameField({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textEditingController = useTextEditingController();

    return BlocConsumer<TodoCategoryBloc, TodoCategoryState>(
        listenWhen: (p, c) => p.isEditing != c.isEditing,
        listener: (context, state) {
          // In case of an initial data failure... We can't get to this point though.
          textEditingController.text = state.todoCategory.name.getOrCrash();
        },
        buildWhen: (p, c) => p.todoCategory.name != c.todoCategory.name,
        builder: (context, state) {
          return TextFormField(
            controller: textEditingController,
            maxLength: CategoryName.maxLength,
            onChanged: (value) => context
                .bloc<TodoCategoryBloc>()
                .add(TodoCategoryEvent.nameChanged(value)),
            validator: (_) => context
                .bloc<TodoCategoryBloc>()
                .state
                .todoCategory
                .name
                .value
                .fold(
                  (f) => f.maybeMap(
                    empty: (f) => 'Cannot be empty',
                    exceedingLength: (f) => 'Exceeding length, max: ${f.max}',
                    orElse: () => null,
                  ),
                  (_) => null,
                ),
            decoration: InputDecoration(
                fillColor: Theme.of(context).cardColor,
                hintText: 'Name of Category'),
          );
        });
  }
}
