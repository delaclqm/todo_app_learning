import 'package:dartz/dartz.dart';
import 'package:kt_dart/collection.dart';

import 'todo_category/todo_category.dart';
import 'todo_category/todo_category_failure.dart';

abstract class ITodoRepository {
  Stream<Either<TodoCategoryFailure, KtList<TodoCategory>>> watchAll();
  // Stream<Either<TodoCategoryFailure, KtList<TodoCategory>>> watchUncompleted();
  Future<Either<TodoCategoryFailure, Unit>> create(TodoCategory note);
  Future<Either<TodoCategoryFailure, Unit>> update(TodoCategory note);
  Future<Either<TodoCategoryFailure, Unit>> delete(TodoCategory note);
}