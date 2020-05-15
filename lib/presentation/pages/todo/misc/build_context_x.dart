import 'package:flutter/material.dart';
import 'package:kt_dart/collection.dart';
import 'package:provider/provider.dart';

import 'todo_item.dart';

extension FormTodosX on BuildContext {
  KtList<TodoItemPrimitive> get formTodos =>
      Provider.of<FormTodos>(this, listen: false).value;
  set formTodos(KtList<TodoItemPrimitive> value) =>
      Provider.of<FormTodos>(this, listen: false).value = value;
}
