// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'todo_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

mixin _$TodoWatcherEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchAllStarted(),
    @required
        Result todosReceived(
            Either<TodoCategoryFailure, KtList<TodoCategory>> failureOrTodos),
  });

  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchAllStarted(),
    Result todosReceived(
        Either<TodoCategoryFailure, KtList<TodoCategory>> failureOrTodos),
    @required Result orElse(),
  });

  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchAllStarted(_WatchAllStarted value),
    @required Result todosReceived(_TodosReceived value),
  });

  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchAllStarted(_WatchAllStarted value),
    Result todosReceived(_TodosReceived value),
    @required Result orElse(),
  });
}

class _$TodoWatcherEventTearOff {
  const _$TodoWatcherEventTearOff();

  _WatchAllStarted watchAllStarted() {
    return const _WatchAllStarted();
  }

  _TodosReceived todosReceived(
      Either<TodoCategoryFailure, KtList<TodoCategory>> failureOrTodos) {
    return _TodosReceived(
      failureOrTodos,
    );
  }
}

const $TodoWatcherEvent = _$TodoWatcherEventTearOff();

class _$_WatchAllStarted implements _WatchAllStarted {
  const _$_WatchAllStarted();

  @override
  String toString() {
    return 'TodoWatcherEvent.watchAllStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _WatchAllStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchAllStarted(),
    @required
        Result todosReceived(
            Either<TodoCategoryFailure, KtList<TodoCategory>> failureOrTodos),
  }) {
    assert(watchAllStarted != null);
    assert(todosReceived != null);
    return watchAllStarted();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchAllStarted(),
    Result todosReceived(
        Either<TodoCategoryFailure, KtList<TodoCategory>> failureOrTodos),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchAllStarted != null) {
      return watchAllStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchAllStarted(_WatchAllStarted value),
    @required Result todosReceived(_TodosReceived value),
  }) {
    assert(watchAllStarted != null);
    assert(todosReceived != null);
    return watchAllStarted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchAllStarted(_WatchAllStarted value),
    Result todosReceived(_TodosReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchAllStarted != null) {
      return watchAllStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchAllStarted implements TodoWatcherEvent {
  const factory _WatchAllStarted() = _$_WatchAllStarted;
}

class _$_TodosReceived implements _TodosReceived {
  const _$_TodosReceived(this.failureOrTodos) : assert(failureOrTodos != null);

  @override
  final Either<TodoCategoryFailure, KtList<TodoCategory>> failureOrTodos;

  @override
  String toString() {
    return 'TodoWatcherEvent.todosReceived(failureOrTodos: $failureOrTodos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TodosReceived &&
            (identical(other.failureOrTodos, failureOrTodos) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrTodos, failureOrTodos)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failureOrTodos);

  @override
  _$_TodosReceived copyWith({
    Object failureOrTodos = freezed,
  }) {
    return _$_TodosReceived(
      failureOrTodos == freezed
          ? this.failureOrTodos
          : failureOrTodos as Either<TodoCategoryFailure, KtList<TodoCategory>>,
    );
  }

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchAllStarted(),
    @required
        Result todosReceived(
            Either<TodoCategoryFailure, KtList<TodoCategory>> failureOrTodos),
  }) {
    assert(watchAllStarted != null);
    assert(todosReceived != null);
    return todosReceived(failureOrTodos);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchAllStarted(),
    Result todosReceived(
        Either<TodoCategoryFailure, KtList<TodoCategory>> failureOrTodos),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (todosReceived != null) {
      return todosReceived(failureOrTodos);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchAllStarted(_WatchAllStarted value),
    @required Result todosReceived(_TodosReceived value),
  }) {
    assert(watchAllStarted != null);
    assert(todosReceived != null);
    return todosReceived(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchAllStarted(_WatchAllStarted value),
    Result todosReceived(_TodosReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (todosReceived != null) {
      return todosReceived(this);
    }
    return orElse();
  }
}

abstract class _TodosReceived implements TodoWatcherEvent {
  const factory _TodosReceived(
          Either<TodoCategoryFailure, KtList<TodoCategory>> failureOrTodos) =
      _$_TodosReceived;

  Either<TodoCategoryFailure, KtList<TodoCategory>> get failureOrTodos;

  _TodosReceived copyWith(
      {Either<TodoCategoryFailure, KtList<TodoCategory>> failureOrTodos});
}

mixin _$TodoWatcherState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(KtList<TodoCategory> todos),
    @required Result loadFailure(TodoCategoryFailure todoFailure),
  });

  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(KtList<TodoCategory> todos),
    Result loadFailure(TodoCategoryFailure todoFailure),
    @required Result orElse(),
  });

  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loadInProgress(DataTransferInProgress value),
    @required Result loadSuccess(LoadSuccess value),
    @required Result loadFailure(LoadFailure value),
  });

  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loadInProgress(DataTransferInProgress value),
    Result loadSuccess(LoadSuccess value),
    Result loadFailure(LoadFailure value),
    @required Result orElse(),
  });
}

class _$TodoWatcherStateTearOff {
  const _$TodoWatcherStateTearOff();

  Initial initial() {
    return const Initial();
  }

  DataTransferInProgress loadInProgress() {
    return const DataTransferInProgress();
  }

  LoadSuccess loadSuccess(KtList<TodoCategory> todos) {
    return LoadSuccess(
      todos,
    );
  }

  LoadFailure loadFailure(TodoCategoryFailure todoFailure) {
    return LoadFailure(
      todoFailure,
    );
  }
}

const $TodoWatcherState = _$TodoWatcherStateTearOff();

class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'TodoWatcherState.initial()';
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
    @required Result loadInProgress(),
    @required Result loadSuccess(KtList<TodoCategory> todos),
    @required Result loadFailure(TodoCategoryFailure todoFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(KtList<TodoCategory> todos),
    Result loadFailure(TodoCategoryFailure todoFailure),
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
    @required Result loadInProgress(DataTransferInProgress value),
    @required Result loadSuccess(LoadSuccess value),
    @required Result loadFailure(LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loadInProgress(DataTransferInProgress value),
    Result loadSuccess(LoadSuccess value),
    Result loadFailure(LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements TodoWatcherState {
  const factory Initial() = _$Initial;
}

class _$DataTransferInProgress implements DataTransferInProgress {
  const _$DataTransferInProgress();

  @override
  String toString() {
    return 'TodoWatcherState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is DataTransferInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(KtList<TodoCategory> todos),
    @required Result loadFailure(TodoCategoryFailure todoFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(KtList<TodoCategory> todos),
    Result loadFailure(TodoCategoryFailure todoFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadInProgress != null) {
      return loadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loadInProgress(DataTransferInProgress value),
    @required Result loadSuccess(LoadSuccess value),
    @required Result loadFailure(LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loadInProgress(DataTransferInProgress value),
    Result loadSuccess(LoadSuccess value),
    Result loadFailure(LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class DataTransferInProgress implements TodoWatcherState {
  const factory DataTransferInProgress() = _$DataTransferInProgress;
}

class _$LoadSuccess implements LoadSuccess {
  const _$LoadSuccess(this.todos) : assert(todos != null);

  @override
  final KtList<TodoCategory> todos;

  @override
  String toString() {
    return 'TodoWatcherState.loadSuccess(todos: $todos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadSuccess &&
            (identical(other.todos, todos) ||
                const DeepCollectionEquality().equals(other.todos, todos)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(todos);

  @override
  _$LoadSuccess copyWith({
    Object todos = freezed,
  }) {
    return _$LoadSuccess(
      todos == freezed ? this.todos : todos as KtList<TodoCategory>,
    );
  }

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(KtList<TodoCategory> todos),
    @required Result loadFailure(TodoCategoryFailure todoFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(todos);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(KtList<TodoCategory> todos),
    Result loadFailure(TodoCategoryFailure todoFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(todos);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loadInProgress(DataTransferInProgress value),
    @required Result loadSuccess(LoadSuccess value),
    @required Result loadFailure(LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loadInProgress(DataTransferInProgress value),
    Result loadSuccess(LoadSuccess value),
    Result loadFailure(LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class LoadSuccess implements TodoWatcherState {
  const factory LoadSuccess(KtList<TodoCategory> todos) = _$LoadSuccess;

  KtList<TodoCategory> get todos;

  LoadSuccess copyWith({KtList<TodoCategory> todos});
}

class _$LoadFailure implements LoadFailure {
  const _$LoadFailure(this.todoFailure) : assert(todoFailure != null);

  @override
  final TodoCategoryFailure todoFailure;

  @override
  String toString() {
    return 'TodoWatcherState.loadFailure(todoFailure: $todoFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadFailure &&
            (identical(other.todoFailure, todoFailure) ||
                const DeepCollectionEquality()
                    .equals(other.todoFailure, todoFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(todoFailure);

  @override
  _$LoadFailure copyWith({
    Object todoFailure = freezed,
  }) {
    return _$LoadFailure(
      todoFailure == freezed
          ? this.todoFailure
          : todoFailure as TodoCategoryFailure,
    );
  }

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(KtList<TodoCategory> todos),
    @required Result loadFailure(TodoCategoryFailure todoFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadFailure(todoFailure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(KtList<TodoCategory> todos),
    Result loadFailure(TodoCategoryFailure todoFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(todoFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loadInProgress(DataTransferInProgress value),
    @required Result loadSuccess(LoadSuccess value),
    @required Result loadFailure(LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loadInProgress(DataTransferInProgress value),
    Result loadSuccess(LoadSuccess value),
    Result loadFailure(LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class LoadFailure implements TodoWatcherState {
  const factory LoadFailure(TodoCategoryFailure todoFailure) = _$LoadFailure;

  TodoCategoryFailure get todoFailure;

  LoadFailure copyWith({TodoCategoryFailure todoFailure});
}
