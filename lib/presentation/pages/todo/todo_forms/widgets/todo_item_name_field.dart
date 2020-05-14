import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class TodoItemNameField extends HookWidget {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
        // onChanged: (value) => context
        //     .bloc<TodoCategoryBloc>()
        //     .add(TodoCategoryEvent.nameChanged(value)),
        // validator: (_) => context
        //     .bloc<TodoCategoryBloc>()
        //     .state
        //     .todoCategory
        //     .name
        //     .value
        //     .fold(
        //       (f) => f.maybeMap(
        //         empty: (f) => 'Cannot be empty',
        //         exceedingLength: (f) => 'Exceeding length, max: ${f.max}',
        //         orElse: () => null,
        //       ),
        //       (_) => null,
        //     ),
        decoration: InputDecoration(
            fillColor: Theme.of(context).cardColor, hintText: 'Todo Name'));
  }
}
