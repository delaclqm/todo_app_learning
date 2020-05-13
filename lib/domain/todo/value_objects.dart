import 'dart:ui';

import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:kt_dart/collection.dart';
import 'package:todo_app_learning/domain/todo/todo_item/todo_item.dart';

import '../core/failures.dart';
import '../core/value_objects.dart';
import '../core/value_validators.dart';

class CategoryName extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const maxLength = 30;

  factory CategoryName(String input) {
    assert(input != null);
    return CategoryName._(
      validateMaxStringLength(input, maxLength)
          .flatMap(validateStringNotEmpty)
          .flatMap(validateSingleLine),
    );
  }

  const CategoryName._(this.value);
}

class CategoryColor extends ValueObject<Color> {
  static const List<Color> predefinedColors = [
    Color(0xfffafafa), // canvas
    Color(0xfffa8072), // salmon
    Color(0xfffedc56), // mustard
    Color(0xffd0f0c0), // tea
    Color(0xfffca3b7), // flamingo
    Color(0xff997950), // tortilla
    Color(0xfffffdd0), // cream
  ];

  @override
  final Either<ValueFailure<Color>, Color> value;

  factory CategoryColor(Color input) {
    assert(input != null);
    return CategoryColor._(
      right(input),
    );
  }

  const CategoryColor._(this.value);
}

class TodoName extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const maxLength = 30;

  factory TodoName(String input) {
    assert(input != null);
    return TodoName._(
      validateMaxStringLength(input, maxLength)
          .flatMap(validateStringNotEmpty)
          .flatMap(validateSingleLine),
    );
  }

  const TodoName._(this.value);
}

class TodoList<T> extends ValueObject<KtList<T>> {
  @override
  final Either<ValueFailure<KtList<T>>, KtList<T>> value;

  factory TodoList(KtList<T> input) {
    assert(input != null);
    return TodoList._(right(input));
  }

  const TodoList._(this.value);

  int get length {
    return value.getOrElse(() => emptyList()).size;
  }
}