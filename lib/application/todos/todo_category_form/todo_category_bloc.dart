import 'dart:async';
import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:meta/meta.dart';

import '../../../domain/todo/i_todo_repository.dart';
import '../../../domain/todo/todo_category/todo_category.dart';
import '../../../domain/todo/todo_category/todo_category_failure.dart';
import '../../../domain/todo/value_objects.dart';
import '../../../presentation/pages/todo/misc/todo_item.dart';

part 'todo_category_bloc.freezed.dart';
part 'todo_category_event.dart';
part 'todo_category_state.dart';

@injectable
class TodoCategoryBloc extends Bloc<TodoCategoryEvent, TodoCategoryState> {
  final ITodoRepository _todoRepository;

  TodoCategoryBloc(this._todoRepository);
  
  @override
  TodoCategoryState get initialState => TodoCategoryState.initial();

   @override
  Stream<TodoCategoryState> mapEventToState(
    TodoCategoryEvent event,
  ) async* {
    yield* event.map(
      initialized: (e) async* {
        yield e.initialTodoOption.fold(
          // Yielding an unchanged state results in not emitting anything at all
          () => state,
          (initialTodo) {
            return state.copyWith(
              todoCategory: initialTodo,
              isEditing: true,
            );
          },
        );
      },
      nameChanged: (e) async* {
        yield state.copyWith(
          todoCategory: state.todoCategory.copyWith(name: CategoryName(e.nameStr)),
          saveFailureOrSuccessOption: none(),
        );
      },
      colorChanged: (e) async* {
        yield state.copyWith(
          todoCategory: state.todoCategory.copyWith(color: CategoryColor(e.color)),
          saveFailureOrSuccessOption: none(),
        );
      },
      todosChanged: (e) async* {
        yield state.copyWith(
          todoCategory: state.todoCategory.copyWith(
            todos: TodoList(
              e.todos.map((primitive) => primitive.toDomain())
            ),
          ),
          saveFailureOrSuccessOption: none(),
        );
      },
      saved: (e) async* {
        Either<TodoCategoryFailure, Unit> failureOrSuccess;

        yield state.copyWith(
          isSaving: true,
          saveFailureOrSuccessOption: none(),
        );

        if (state.todoCategory.failureOption.isNone()) {
          failureOrSuccess = state.isEditing
              ? await _todoRepository.update(state.todoCategory)
              : await _todoRepository.create(state.todoCategory);
        }
        yield state.copyWith(
          isSaving: false,
          showErrorMessages: true,
          saveFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
    );
  }
}
