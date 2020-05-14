import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';

import '../../core/entity.dart';
import '../../core/failures.dart';
import '../../core/value_objects.dart';
import '../todo_item/todo_item.dart';
import '../value_objects.dart';

part 'todo_category.freezed.dart';

@freezed
abstract class TodoCategory with _$TodoCategory implements IEntity {
  const factory TodoCategory({
    @required UniqueId id,
    @required CategoryName name,
    @required CategoryColor color,
    @required TodoList<TodoItem> todos
  }) = _TodoCategory;

  factory TodoCategory.empty() => TodoCategory(
        id: UniqueId(),
        name: CategoryName(''),
        color: CategoryColor(CategoryColor.predefinedColors[0]),
        todos: TodoList(emptyList())
      );
}

extension TodoCategoryX on TodoCategory {
  Option<ValueFailure<dynamic>> get failureOption {
    return name.failureOrUnit
        .andThen(color.failureOrUnit)
        .andThen(todos.failureOrUnit)
        .andThen(
          todos
              .getOrCrash()
              .map((todoItem) => todoItem.failureOption)
              .filter((o) => o.isSome())
              .getOrElse(0, (_) => none())
              .fold(() => right(unit), (f) => left(f)),
        )
        .fold((f) => some(f), (_) => none());
  }
}