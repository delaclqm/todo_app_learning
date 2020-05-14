import 'dart:ui';

import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:kt_dart/collection.dart';

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
    Color(0xffAA00FF), // purple
    Color(0xffD50000), // red
    Color(0xff304FFE), // blue
    Color(0xff1B5E20), // green
    Color(0xffE65100), // orange
    Color(0xff212121), // grey
    Color(0xffF50057), // pink
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