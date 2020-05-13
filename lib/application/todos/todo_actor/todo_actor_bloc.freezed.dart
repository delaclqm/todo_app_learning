// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'todo_actor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

mixin _$TodoActorEvent {
  TodoCategory get todo;

  TodoActorEvent copyWith({TodoCategory todo});
}

class _$TodoActorEventTearOff {
  const _$TodoActorEventTearOff();

  _Deleted deleted(TodoCategory todo) {
    return _Deleted(
      todo,
    );
  }
}

const $TodoActorEvent = _$TodoActorEventTearOff();

class _$_Deleted implements _Deleted {
  const _$_Deleted(this.todo) : assert(todo != null);

  @override
  final TodoCategory todo;

  @override
  String toString() {
    return 'TodoActorEvent.deleted(todo: $todo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Deleted &&
            (identical(other.todo, todo) ||
                const DeepCollectionEquality().equals(other.todo, todo)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(todo);

  @override
  _$_Deleted copyWith({
    Object todo = freezed,
  }) {
    return _$_Deleted(
      todo == freezed ? this.todo : todo as TodoCategory,
    );
  }
}

abstract class _Deleted implements TodoActorEvent {
  const factory _Deleted(TodoCategory todo) = _$_Deleted;

  @override
  TodoCategory get todo;

  @override
  _Deleted copyWith({TodoCategory todo});
}

mixin _$TodoActorState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result actionInProgress(),
    @required Result deleteFailure(TodoCategoryFailure todoFailure),
    @required Result deleteSuccess(),
  });

  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result deleteFailure(TodoCategoryFailure todoFailure),
    Result deleteSuccess(),
    @required Result orElse(),
  });

  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result actionInProgress(ActionInProgress value),
    @required Result deleteFailure(DeleteFailure value),
    @required Result deleteSuccess(DeleteSuccess value),
  });

  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result actionInProgress(ActionInProgress value),
    Result deleteFailure(DeleteFailure value),
    Result deleteSuccess(DeleteSuccess value),
    @required Result orElse(),
  });
}

class _$TodoActorStateTearOff {
  const _$TodoActorStateTearOff();

  Initial initial() {
    return const Initial();
  }

  ActionInProgress actionInProgress() {
    return const ActionInProgress();
  }

  DeleteFailure deleteFailure(TodoCategoryFailure todoFailure) {
    return DeleteFailure(
      todoFailure,
    );
  }

  DeleteSuccess deleteSuccess() {
    return const DeleteSuccess();
  }
}

const $TodoActorState = _$TodoActorStateTearOff();

class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'TodoActorState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result actionInProgress(),
    @required Result deleteFailure(TodoCategoryFailure todoFailure),
    @required Result deleteSuccess(),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deleteFailure != null);
    assert(deleteSuccess != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result deleteFailure(TodoCategoryFailure todoFailure),
    Result deleteSuccess(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result actionInProgress(ActionInProgress value),
    @required Result deleteFailure(DeleteFailure value),
    @required Result deleteSuccess(DeleteSuccess value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deleteFailure != null);
    assert(deleteSuccess != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result actionInProgress(ActionInProgress value),
    Result deleteFailure(DeleteFailure value),
    Result deleteSuccess(DeleteSuccess value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements TodoActorState {
  const factory Initial() = _$Initial;
}

class _$ActionInProgress implements ActionInProgress {
  const _$ActionInProgress();

  @override
  String toString() {
    return 'TodoActorState.actionInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ActionInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result actionInProgress(),
    @required Result deleteFailure(TodoCategoryFailure todoFailure),
    @required Result deleteSuccess(),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deleteFailure != null);
    assert(deleteSuccess != null);
    return actionInProgress();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result deleteFailure(TodoCategoryFailure todoFailure),
    Result deleteSuccess(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (actionInProgress != null) {
      return actionInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result actionInProgress(ActionInProgress value),
    @required Result deleteFailure(DeleteFailure value),
    @required Result deleteSuccess(DeleteSuccess value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deleteFailure != null);
    assert(deleteSuccess != null);
    return actionInProgress(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result actionInProgress(ActionInProgress value),
    Result deleteFailure(DeleteFailure value),
    Result deleteSuccess(DeleteSuccess value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (actionInProgress != null) {
      return actionInProgress(this);
    }
    return orElse();
  }
}

abstract class ActionInProgress implements TodoActorState {
  const factory ActionInProgress() = _$ActionInProgress;
}

class _$DeleteFailure implements DeleteFailure {
  const _$DeleteFailure(this.todoFailure) : assert(todoFailure != null);

  @override
  final TodoCategoryFailure todoFailure;

  @override
  String toString() {
    return 'TodoActorState.deleteFailure(todoFailure: $todoFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DeleteFailure &&
            (identical(other.todoFailure, todoFailure) ||
                const DeepCollectionEquality()
                    .equals(other.todoFailure, todoFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(todoFailure);

  @override
  _$DeleteFailure copyWith({
    Object todoFailure = freezed,
  }) {
    return _$DeleteFailure(
      todoFailure == freezed
          ? this.todoFailure
          : todoFailure as TodoCategoryFailure,
    );
  }

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result actionInProgress(),
    @required Result deleteFailure(TodoCategoryFailure todoFailure),
    @required Result deleteSuccess(),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deleteFailure != null);
    assert(deleteSuccess != null);
    return deleteFailure(todoFailure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result deleteFailure(TodoCategoryFailure todoFailure),
    Result deleteSuccess(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleteFailure != null) {
      return deleteFailure(todoFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result actionInProgress(ActionInProgress value),
    @required Result deleteFailure(DeleteFailure value),
    @required Result deleteSuccess(DeleteSuccess value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deleteFailure != null);
    assert(deleteSuccess != null);
    return deleteFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result actionInProgress(ActionInProgress value),
    Result deleteFailure(DeleteFailure value),
    Result deleteSuccess(DeleteSuccess value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleteFailure != null) {
      return deleteFailure(this);
    }
    return orElse();
  }
}

abstract class DeleteFailure implements TodoActorState {
  const factory DeleteFailure(TodoCategoryFailure todoFailure) =
      _$DeleteFailure;

  TodoCategoryFailure get todoFailure;

  DeleteFailure copyWith({TodoCategoryFailure todoFailure});
}

class _$DeleteSuccess implements DeleteSuccess {
  const _$DeleteSuccess();

  @override
  String toString() {
    return 'TodoActorState.deleteSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is DeleteSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result actionInProgress(),
    @required Result deleteFailure(TodoCategoryFailure todoFailure),
    @required Result deleteSuccess(),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deleteFailure != null);
    assert(deleteSuccess != null);
    return deleteSuccess();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result deleteFailure(TodoCategoryFailure todoFailure),
    Result deleteSuccess(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleteSuccess != null) {
      return deleteSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result actionInProgress(ActionInProgress value),
    @required Result deleteFailure(DeleteFailure value),
    @required Result deleteSuccess(DeleteSuccess value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deleteFailure != null);
    assert(deleteSuccess != null);
    return deleteSuccess(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result actionInProgress(ActionInProgress value),
    Result deleteFailure(DeleteFailure value),
    Result deleteSuccess(DeleteSuccess value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleteSuccess != null) {
      return deleteSuccess(this);
    }
    return orElse();
  }
}

abstract class DeleteSuccess implements TodoActorState {
  const factory DeleteSuccess() = _$DeleteSuccess;
}
