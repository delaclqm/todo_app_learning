import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

class Todo extends Equatable {
  final String name;
  final int difficulty;
  final String notes;
  final DateTime duedate;
  final bool completed;

  Todo({
    @required this.name,
    @required this.difficulty,
    @required this.notes,
    @required this.duedate,
    @required this.completed,
  });

  @override
  List<Object> get props =>
      [this.name, this.difficulty, this.notes, this.duedate, this.completed];
}