import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:meta/meta.dart';

class TodoCategory extends Equatable {
  final String categoryName;
  final LinearGradient color;
  final Icon icon;

  TodoCategory({
    @required this.categoryName,
    @required this.color,
    @required this.icon
  });

  @override
  List<Object> get props => [this.categoryName, this.color, this.icon];
}