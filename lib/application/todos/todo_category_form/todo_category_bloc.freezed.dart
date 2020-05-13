// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'todo_category_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

mixin _$TodoCategoryEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<TodoCategory> initialTodoOption),
    @required Result nameChanged(String nameStr),
    @required Result colorChanged(Color color),
    @required Result todosChanged(KtList<TodoItemPrimitive> todos),
    @required Result saved(),
  });

  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<TodoCategory> initialTodoOption),
    Result nameChanged(String nameStr),
    Result colorChanged(Color color),
    Result todosChanged(KtList<TodoItemPrimitive> todos),
    Result saved(),
    @required Result orElse(),
  });

  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result nameChanged(_NameChanged value),
    @required Result colorChanged(_ColorChanged value),
    @required Result todosChanged(_TodosChanged value),
    @required Result saved(_Saved value),
  });

  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result nameChanged(_NameChanged value),
    Result colorChanged(_ColorChanged value),
    Result todosChanged(_TodosChanged value),
    Result saved(_Saved value),
    @required Result orElse(),
  });
}

class _$TodoCategoryEventTearOff {
  const _$TodoCategoryEventTearOff();

  _Initialized initialized(Option<TodoCategory> initialTodoOption) {
    return _Initialized(
      initialTodoOption,
    );
  }

  _NameChanged nameChanged(String nameStr) {
    return _NameChanged(
      nameStr,
    );
  }

  _ColorChanged colorChanged(Color color) {
    return _ColorChanged(
      color,
    );
  }

  _TodosChanged todosChanged(KtList<TodoItemPrimitive> todos) {
    return _TodosChanged(
      todos,
    );
  }

  _Saved saved() {
    return const _Saved();
  }
}

const $TodoCategoryEvent = _$TodoCategoryEventTearOff();

class _$_Initialized implements _Initialized {
  const _$_Initialized(this.initialTodoOption)
      : assert(initialTodoOption != null);

  @override
  final Option<TodoCategory> initialTodoOption;

  @override
  String toString() {
    return 'TodoCategoryEvent.initialized(initialTodoOption: $initialTodoOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Initialized &&
            (identical(other.initialTodoOption, initialTodoOption) ||
                const DeepCollectionEquality()
                    .equals(other.initialTodoOption, initialTodoOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(initialTodoOption);

  @override
  _$_Initialized copyWith({
    Object initialTodoOption = freezed,
  }) {
    return _$_Initialized(
      initialTodoOption == freezed
          ? this.initialTodoOption
          : initialTodoOption as Option<TodoCategory>,
    );
  }

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<TodoCategory> initialTodoOption),
    @required Result nameChanged(String nameStr),
    @required Result colorChanged(Color color),
    @required Result todosChanged(KtList<TodoItemPrimitive> todos),
    @required Result saved(),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(colorChanged != null);
    assert(todosChanged != null);
    assert(saved != null);
    return initialized(initialTodoOption);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<TodoCategory> initialTodoOption),
    Result nameChanged(String nameStr),
    Result colorChanged(Color color),
    Result todosChanged(KtList<TodoItemPrimitive> todos),
    Result saved(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized(initialTodoOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result nameChanged(_NameChanged value),
    @required Result colorChanged(_ColorChanged value),
    @required Result todosChanged(_TodosChanged value),
    @required Result saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(colorChanged != null);
    assert(todosChanged != null);
    assert(saved != null);
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result nameChanged(_NameChanged value),
    Result colorChanged(_ColorChanged value),
    Result todosChanged(_TodosChanged value),
    Result saved(_Saved value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements TodoCategoryEvent {
  const factory _Initialized(Option<TodoCategory> initialTodoOption) =
      _$_Initialized;

  Option<TodoCategory> get initialTodoOption;

  _Initialized copyWith({Option<TodoCategory> initialTodoOption});
}

class _$_NameChanged implements _NameChanged {
  const _$_NameChanged(this.nameStr) : assert(nameStr != null);

  @override
  final String nameStr;

  @override
  String toString() {
    return 'TodoCategoryEvent.nameChanged(nameStr: $nameStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NameChanged &&
            (identical(other.nameStr, nameStr) ||
                const DeepCollectionEquality().equals(other.nameStr, nameStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(nameStr);

  @override
  _$_NameChanged copyWith({
    Object nameStr = freezed,
  }) {
    return _$_NameChanged(
      nameStr == freezed ? this.nameStr : nameStr as String,
    );
  }

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<TodoCategory> initialTodoOption),
    @required Result nameChanged(String nameStr),
    @required Result colorChanged(Color color),
    @required Result todosChanged(KtList<TodoItemPrimitive> todos),
    @required Result saved(),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(colorChanged != null);
    assert(todosChanged != null);
    assert(saved != null);
    return nameChanged(nameStr);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<TodoCategory> initialTodoOption),
    Result nameChanged(String nameStr),
    Result colorChanged(Color color),
    Result todosChanged(KtList<TodoItemPrimitive> todos),
    Result saved(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (nameChanged != null) {
      return nameChanged(nameStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result nameChanged(_NameChanged value),
    @required Result colorChanged(_ColorChanged value),
    @required Result todosChanged(_TodosChanged value),
    @required Result saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(colorChanged != null);
    assert(todosChanged != null);
    assert(saved != null);
    return nameChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result nameChanged(_NameChanged value),
    Result colorChanged(_ColorChanged value),
    Result todosChanged(_TodosChanged value),
    Result saved(_Saved value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (nameChanged != null) {
      return nameChanged(this);
    }
    return orElse();
  }
}

abstract class _NameChanged implements TodoCategoryEvent {
  const factory _NameChanged(String nameStr) = _$_NameChanged;

  String get nameStr;

  _NameChanged copyWith({String nameStr});
}

class _$_ColorChanged implements _ColorChanged {
  const _$_ColorChanged(this.color) : assert(color != null);

  @override
  final Color color;

  @override
  String toString() {
    return 'TodoCategoryEvent.colorChanged(color: $color)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ColorChanged &&
            (identical(other.color, color) ||
                const DeepCollectionEquality().equals(other.color, color)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(color);

  @override
  _$_ColorChanged copyWith({
    Object color = freezed,
  }) {
    return _$_ColorChanged(
      color == freezed ? this.color : color as Color,
    );
  }

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<TodoCategory> initialTodoOption),
    @required Result nameChanged(String nameStr),
    @required Result colorChanged(Color color),
    @required Result todosChanged(KtList<TodoItemPrimitive> todos),
    @required Result saved(),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(colorChanged != null);
    assert(todosChanged != null);
    assert(saved != null);
    return colorChanged(color);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<TodoCategory> initialTodoOption),
    Result nameChanged(String nameStr),
    Result colorChanged(Color color),
    Result todosChanged(KtList<TodoItemPrimitive> todos),
    Result saved(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (colorChanged != null) {
      return colorChanged(color);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result nameChanged(_NameChanged value),
    @required Result colorChanged(_ColorChanged value),
    @required Result todosChanged(_TodosChanged value),
    @required Result saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(colorChanged != null);
    assert(todosChanged != null);
    assert(saved != null);
    return colorChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result nameChanged(_NameChanged value),
    Result colorChanged(_ColorChanged value),
    Result todosChanged(_TodosChanged value),
    Result saved(_Saved value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (colorChanged != null) {
      return colorChanged(this);
    }
    return orElse();
  }
}

abstract class _ColorChanged implements TodoCategoryEvent {
  const factory _ColorChanged(Color color) = _$_ColorChanged;

  Color get color;

  _ColorChanged copyWith({Color color});
}

class _$_TodosChanged implements _TodosChanged {
  const _$_TodosChanged(this.todos) : assert(todos != null);

  @override
  final KtList<TodoItemPrimitive> todos;

  @override
  String toString() {
    return 'TodoCategoryEvent.todosChanged(todos: $todos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TodosChanged &&
            (identical(other.todos, todos) ||
                const DeepCollectionEquality().equals(other.todos, todos)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(todos);

  @override
  _$_TodosChanged copyWith({
    Object todos = freezed,
  }) {
    return _$_TodosChanged(
      todos == freezed ? this.todos : todos as KtList<TodoItemPrimitive>,
    );
  }

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<TodoCategory> initialTodoOption),
    @required Result nameChanged(String nameStr),
    @required Result colorChanged(Color color),
    @required Result todosChanged(KtList<TodoItemPrimitive> todos),
    @required Result saved(),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(colorChanged != null);
    assert(todosChanged != null);
    assert(saved != null);
    return todosChanged(todos);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<TodoCategory> initialTodoOption),
    Result nameChanged(String nameStr),
    Result colorChanged(Color color),
    Result todosChanged(KtList<TodoItemPrimitive> todos),
    Result saved(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (todosChanged != null) {
      return todosChanged(todos);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result nameChanged(_NameChanged value),
    @required Result colorChanged(_ColorChanged value),
    @required Result todosChanged(_TodosChanged value),
    @required Result saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(colorChanged != null);
    assert(todosChanged != null);
    assert(saved != null);
    return todosChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result nameChanged(_NameChanged value),
    Result colorChanged(_ColorChanged value),
    Result todosChanged(_TodosChanged value),
    Result saved(_Saved value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (todosChanged != null) {
      return todosChanged(this);
    }
    return orElse();
  }
}

abstract class _TodosChanged implements TodoCategoryEvent {
  const factory _TodosChanged(KtList<TodoItemPrimitive> todos) =
      _$_TodosChanged;

  KtList<TodoItemPrimitive> get todos;

  _TodosChanged copyWith({KtList<TodoItemPrimitive> todos});
}

class _$_Saved implements _Saved {
  const _$_Saved();

  @override
  String toString() {
    return 'TodoCategoryEvent.saved()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Saved);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<TodoCategory> initialTodoOption),
    @required Result nameChanged(String nameStr),
    @required Result colorChanged(Color color),
    @required Result todosChanged(KtList<TodoItemPrimitive> todos),
    @required Result saved(),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(colorChanged != null);
    assert(todosChanged != null);
    assert(saved != null);
    return saved();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<TodoCategory> initialTodoOption),
    Result nameChanged(String nameStr),
    Result colorChanged(Color color),
    Result todosChanged(KtList<TodoItemPrimitive> todos),
    Result saved(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (saved != null) {
      return saved();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result nameChanged(_NameChanged value),
    @required Result colorChanged(_ColorChanged value),
    @required Result todosChanged(_TodosChanged value),
    @required Result saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(colorChanged != null);
    assert(todosChanged != null);
    assert(saved != null);
    return saved(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result nameChanged(_NameChanged value),
    Result colorChanged(_ColorChanged value),
    Result todosChanged(_TodosChanged value),
    Result saved(_Saved value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }
}

abstract class _Saved implements TodoCategoryEvent {
  const factory _Saved() = _$_Saved;
}

mixin _$TodoCategoryState {
  TodoCategory get todoCategory;
  bool get showErrorMessages;
  bool get isEditing;
  bool get isSaving;
  Option<Either<TodoCategoryFailure, Unit>> get saveFailureOrSuccessOption;

  TodoCategoryState copyWith(
      {TodoCategory todoCategory,
      bool showErrorMessages,
      bool isEditing,
      bool isSaving,
      Option<Either<TodoCategoryFailure, Unit>> saveFailureOrSuccessOption});
}

class _$TodoCategoryStateTearOff {
  const _$TodoCategoryStateTearOff();

  _TodoCategoryState call(
      {@required
          TodoCategory todoCategory,
      @required
          bool showErrorMessages,
      @required
          bool isEditing,
      @required
          bool isSaving,
      @required
          Option<Either<TodoCategoryFailure, Unit>>
              saveFailureOrSuccessOption}) {
    return _TodoCategoryState(
      todoCategory: todoCategory,
      showErrorMessages: showErrorMessages,
      isEditing: isEditing,
      isSaving: isSaving,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption,
    );
  }
}

const $TodoCategoryState = _$TodoCategoryStateTearOff();

class _$_TodoCategoryState implements _TodoCategoryState {
  const _$_TodoCategoryState(
      {@required this.todoCategory,
      @required this.showErrorMessages,
      @required this.isEditing,
      @required this.isSaving,
      @required this.saveFailureOrSuccessOption})
      : assert(todoCategory != null),
        assert(showErrorMessages != null),
        assert(isEditing != null),
        assert(isSaving != null),
        assert(saveFailureOrSuccessOption != null);

  @override
  final TodoCategory todoCategory;
  @override
  final bool showErrorMessages;
  @override
  final bool isEditing;
  @override
  final bool isSaving;
  @override
  final Option<Either<TodoCategoryFailure, Unit>> saveFailureOrSuccessOption;

  @override
  String toString() {
    return 'TodoCategoryState(todoCategory: $todoCategory, showErrorMessages: $showErrorMessages, isEditing: $isEditing, isSaving: $isSaving, saveFailureOrSuccessOption: $saveFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TodoCategoryState &&
            (identical(other.todoCategory, todoCategory) ||
                const DeepCollectionEquality()
                    .equals(other.todoCategory, todoCategory)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.isEditing, isEditing) ||
                const DeepCollectionEquality()
                    .equals(other.isEditing, isEditing)) &&
            (identical(other.isSaving, isSaving) ||
                const DeepCollectionEquality()
                    .equals(other.isSaving, isSaving)) &&
            (identical(other.saveFailureOrSuccessOption,
                    saveFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.saveFailureOrSuccessOption,
                    saveFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(todoCategory) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(isEditing) ^
      const DeepCollectionEquality().hash(isSaving) ^
      const DeepCollectionEquality().hash(saveFailureOrSuccessOption);

  @override
  _$_TodoCategoryState copyWith({
    Object todoCategory = freezed,
    Object showErrorMessages = freezed,
    Object isEditing = freezed,
    Object isSaving = freezed,
    Object saveFailureOrSuccessOption = freezed,
  }) {
    return _$_TodoCategoryState(
      todoCategory: todoCategory == freezed
          ? this.todoCategory
          : todoCategory as TodoCategory,
      showErrorMessages: showErrorMessages == freezed
          ? this.showErrorMessages
          : showErrorMessages as bool,
      isEditing: isEditing == freezed ? this.isEditing : isEditing as bool,
      isSaving: isSaving == freezed ? this.isSaving : isSaving as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? this.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption
              as Option<Either<TodoCategoryFailure, Unit>>,
    );
  }
}

abstract class _TodoCategoryState implements TodoCategoryState {
  const factory _TodoCategoryState(
      {@required
          TodoCategory todoCategory,
      @required
          bool showErrorMessages,
      @required
          bool isEditing,
      @required
          bool isSaving,
      @required
          Option<Either<TodoCategoryFailure, Unit>>
              saveFailureOrSuccessOption}) = _$_TodoCategoryState;

  @override
  TodoCategory get todoCategory;
  @override
  bool get showErrorMessages;
  @override
  bool get isEditing;
  @override
  bool get isSaving;
  @override
  Option<Either<TodoCategoryFailure, Unit>> get saveFailureOrSuccessOption;

  @override
  _TodoCategoryState copyWith(
      {TodoCategory todoCategory,
      bool showErrorMessages,
      bool isEditing,
      bool isSaving,
      Option<Either<TodoCategoryFailure, Unit>> saveFailureOrSuccessOption});
}
