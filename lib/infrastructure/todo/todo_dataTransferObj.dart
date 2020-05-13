
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';

import '../../domain/core/value_objects.dart';
import '../../domain/todo/todo_category/todo_category.dart';
import '../../domain/todo/todo_item/todo_item.dart';
import '../../domain/todo/value_objects.dart';

part 'todo_dataTransferObj.freezed.dart';
part 'todo_dataTransferObj.g.dart';

@freezed
abstract class TodoDto with _$TodoDto {
  factory TodoDto({
    @JsonKey(ignore: true) String id,
    @required String name,
    @required int color,
    @required List<TodoItemDto> todos,
    @required @ServerTimestampConverter() FieldValue serverTimeStamp,
  }) = _TodoDto;

  factory TodoDto.fromDomain(TodoCategory category) {
    return TodoDto(
      id: category.id.getOrCrash(),
      name: category.name.getOrCrash(),
      color: category.color.getOrCrash().value,
      todos: category.todos
        .getOrCrash()
        .mapIndexed(
          (index, todoItem) => TodoItemDto.fromDomain(todoItem)
        )
        .asList(),
      serverTimeStamp: FieldValue.serverTimestamp(),
    );
  }

  factory TodoDto.fromJson(Map<String, dynamic> json) =>
      _$TodoDtoFromJson(json);

  factory TodoDto.fromFirestore(DocumentSnapshot doc) {
    return TodoDto.fromJson(doc.data).copyWith(id: doc.documentID);
  }
}

class ServerTimestampConverter implements JsonConverter<FieldValue, Object> {
  const ServerTimestampConverter();

  @override
  FieldValue fromJson(Object json) {
    return FieldValue.serverTimestamp();
  }

  @override
  Object toJson(FieldValue fieldValue) => fieldValue;
}

extension TodoDtoX on TodoDto {
  TodoCategory toDomain() {
    return TodoCategory(
      id: UniqueId.fromUniqueString(id),
      name: CategoryName(name),
      color: CategoryColor(Color(color)),
      todos: TodoList(todos.map((dto) => dto.toDomain()).toImmutableList())
    );
  }
}

@freezed
abstract class TodoItemDto with _$TodoItemDto {
  const factory TodoItemDto({
    @required String id,
    @required String name,
    @required bool done,
  }) = _TodoItemDto;

  factory TodoItemDto.fromDomain(TodoItem todoItem) {
    return TodoItemDto(
      id: todoItem.id.getOrCrash(),
      name: todoItem.name.getOrCrash(),
      done: todoItem.done,
    );
  }

  factory TodoItemDto.fromJson(Map<String, dynamic> json) =>
      _$TodoItemDtoFromJson(json);
}

extension TodoItemDtoX on TodoItemDto {
  TodoItem toDomain() {
    return TodoItem(
      id: UniqueId.fromUniqueString(id),
      name: TodoName(name),
      done: done,
    );
  }
}