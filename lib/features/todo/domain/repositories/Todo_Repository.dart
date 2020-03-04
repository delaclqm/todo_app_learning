import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../entities/Todo.dart';
import '../entities/TodoCategory.dart';
import '../entities/Todos.dart';

abstract class TodoRepository {
  // Getter Methods
  Future<Either<Failure, Todos>> getAllTodos(String user);
  Future<Either<Failure, Todos>> getTodos(String user, TodoCategory category, TodoFilter);

  // Adding Methods
  Future<Either<Failure, Object>> addTodoCategory(String user, TodoCategory category);
  Future<Either<Failure, Object>> addTodo(String user, TodoCategory category, Todo todo);

  // Changing Methods
  Future<Either<Failure, Object>> editCategory(String user, TodoCategory category);
  Future<Either<Failure, Object>> markTodoCompleted(String user, TodoCategory category, Todo todo);
  Future<Either<Failure, Object>> editTodo(String user, TodoCategory category, Todo todo);
}