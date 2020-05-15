import 'package:dartz/dartz.dart';
import 'package:kt_dart/collection.dart';

import 'todo_category/todo_category.dart';
import 'todo_category/todo_category_failure.dart';

abstract class ITodoRepository {
  Stream<Either<TodoCategoryFailure, KtList<TodoCategory>>> watchAll();
  Future<Either<TodoCategoryFailure, Unit>> create(TodoCategory todoCategory);
  Future<Either<TodoCategoryFailure, Unit>> update(TodoCategory todoCategory);
  Future<Either<TodoCategoryFailure, Unit>> delete(TodoCategory todoCategory);
}