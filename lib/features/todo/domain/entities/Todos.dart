import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:meta/meta.dart';
import 'package:todo_app_learning/features/todo/domain/entities/Todo.dart';

class Todos extends Equatable {
  final String categoryName;
  final List<Todo> todos;
  final LinearGradient color;
  final Icon icon;

  Todos({
    @required this.categoryName,
    @required this.todos,
    @required this.color,
    @required this.icon
  });

  @override
  List<Object> get props => [this.categoryName, this.todos, this.color, this.icon];
}