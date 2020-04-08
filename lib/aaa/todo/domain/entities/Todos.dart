import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

import 'TodoCategory.dart';
import 'Todo.dart';

class Todos extends Equatable {
  final TodoCategory category;
  final List<Todo> todos;

  Todos({
    @required this.category,
    @required this.todos
  });

  @override
  List<Object> get props => [this.category, this.todos];
}