import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

class Todo extends Equatable {
  final String id;
  final String name;
  final int difficulty;
  final String notes;
  final DateTime duedate;
  final bool completed;

  Todo({
    this.id,
    @required this.name,
    @required this.difficulty,
    @required this.notes,
    @required this.duedate,
    @required this.completed,
  });

  @override
  List<Object> get props =>
      [this.id, this.name, this.difficulty, this.notes, this.duedate, this.completed];
}
