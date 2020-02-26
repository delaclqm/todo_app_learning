import 'package:dartz/dartz.dart';
import 'package:todo_app_learning/core/errors/failures.dart';
import 'package:todo_app_learning/features/todo/domain/entities/Todo.dart';

abstract class TodoRepository {
  Future<Either<Failure, Todo>> getTodos();
}