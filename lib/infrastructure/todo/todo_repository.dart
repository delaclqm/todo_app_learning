import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';

import 'package:rxdart/rxdart.dart';
import 'package:kt_dart/collection.dart';
import 'package:todo_app_learning/domain/todo/todo_category/todo_category.dart';
import 'package:todo_app_learning/domain/todo/todo_category/todo_category_failure.dart';
import 'package:todo_app_learning/infrastructure/todo/todo_dataTransferObj.dart';

import '../../domain/todo/i_todo_repository.dart';
import '../core/firebase_helper_functions.dart';

@prod
@lazySingleton
@RegisterAs(ITodoRepository)
class TodoRepository implements ITodoRepository {
  final Firestore _firestore;

  TodoRepository(this._firestore);

  @override
  Stream<Either<TodoCategoryFailure, KtList<TodoCategory>>> watchAll() async* {
    final userDoc = await _firestore.userDocument();
    yield* userDoc.todoCategoryCollection
        .orderBy('serverTimeStamp', descending: true)
        .snapshots()
        .map(
          (snapshot) => right<TodoCategoryFailure, KtList<TodoCategory>>(
            snapshot.documents
                .map((doc) => TodoDto.fromFirestore(doc).toDomain())
                .toImmutableList(),
          ),
        )
        .onErrorReturnWith((e) {
      if (e is PlatformException && e.message.contains('PERMISSION_DENIED')) {
        return left(const TodoCategoryFailure.insufficientPermissions());
      } else {
        // TODO: Log these unexpected errors everywhere
        return left(const TodoCategoryFailure.unexpected());
      }
    });
  }

  // @override
  // Stream<Either<TodoCategoryFailure, KtList<TodoCategory>>> watchUncompleted() async* {
  //   final userDoc = await _firestore.userDocument();
  //   yield* userDoc.todoCategoryCollection
  //       .orderBy('serverTimeStamp', descending: true)
  //       .snapshots()
  //       .map(
  //         (snapshot) => snapshot.documents
  //             .map((doc) => TodoDto.fromFirestore(doc).toDomain()),
  //       )
  //       .map(
  //         (todoCategories) => right<TodoCategoryFailure, KtList<TodoCategory>>(
  //           todoCategories
  //               .where(
  //                 (todoCategory) =>
  //                     todoCategory.todos.getOrCrash().any((todoItem) => !todoItem.done),
  //               )
  //               .toImmutableList(),
  //         ),
  //       )
  //       .onErrorReturnWith((e) {
  //     if (e is PlatformException && e.message.contains('PERMISSION_DENIED')) {
  //       return left(const TodoCategoryFailure.insufficientPermissions());
  //     } else {
  //       return left(const TodoCategoryFailure.unexpected());
  //     }
  //   });
  // }

  @override
  Future<Either<TodoCategoryFailure, Unit>> create(TodoCategory todoCategory) async {
    try {
      final userDoc = await _firestore.userDocument();
      final noteDto = TodoDto.fromDomain(todoCategory);

      await userDoc.todoCategoryCollection
          .document(noteDto.id)
          .setData(noteDto.toJson());

      return right(unit);
    } on PlatformException catch (e) {
      // These error codes and messages aren't in the documentation AFAIK, experiment in the debugger to find out about them.
      if (e.message.contains('PERMISSION_DENIED')) {
        return left(const TodoCategoryFailure.insufficientPermissions());
      } else {
        return left(const TodoCategoryFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<TodoCategoryFailure, Unit>> update(TodoCategory todoCategory) async {
    try {
      final userDoc = await _firestore.userDocument();
      final todoDto = TodoDto.fromDomain(todoCategory);

      await userDoc.todoCategoryCollection
          .document(todoDto.id)
          .updateData(todoDto.toJson());

      return right(unit);
    } on PlatformException catch (e) {
      if (e.message.contains('PERMISSION_DENIED')) {
        return left(const TodoCategoryFailure.insufficientPermissions());
      } else if (e.message.contains('NOT_FOUND')) {
        return left(const TodoCategoryFailure.unableToUpdate());
      } else {
        return left(const TodoCategoryFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<TodoCategoryFailure, Unit>> delete(TodoCategory todoCategory) async {
    try {
      final userDoc = await _firestore.userDocument();
      final todoCategoryId = todoCategory.id.getOrCrash();

      await userDoc.todoCategoryCollection.document(todoCategoryId).delete();

      return right(unit);
    } on PlatformException catch (e) {
      if (e.message.contains('PERMISSION_DENIED')) {
        return left(const TodoCategoryFailure.insufficientPermissions());
      } else {
        return left(const TodoCategoryFailure.unexpected());
      }
    }
  }
}