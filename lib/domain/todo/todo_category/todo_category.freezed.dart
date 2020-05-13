// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'todo_category.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

mixin _$TodoCategory {
  UniqueId get id;
  CategoryName get name;
  CategoryColor get color;
  TodoList<TodoItem> get todos;

  TodoCategory copyWith(
      {UniqueId id,
      CategoryName name,
      CategoryColor color,
      TodoList<TodoItem> todos});
}

class _$TodoCategoryTearOff {
  const _$TodoCategoryTearOff();

  _TodoCategory call(
      {@required UniqueId id,
      @required CategoryName name,
      @required CategoryColor color,
      @required TodoList<TodoItem> todos}) {
    return _TodoCategory(
      id: id,
      name: name,
      color: color,
      todos: todos,
    );
  }
}

const $TodoCategory = _$TodoCategoryTearOff();

class _$_TodoCategory with DiagnosticableTreeMixin implements _TodoCategory {
  const _$_TodoCategory(
      {@required this.id,
      @required this.name,
      @required this.color,
      @required this.todos})
      : assert(id != null),
        assert(name != null),
        assert(color != null),
        assert(todos != null);

  @override
  final UniqueId id;
  @override
  final CategoryName name;
  @override
  final CategoryColor color;
  @override
  final TodoList<TodoItem> todos;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TodoCategory(id: $id, name: $name, color: $color, todos: $todos)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TodoCategory'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('color', color))
      ..add(DiagnosticsProperty('todos', todos));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TodoCategory &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.color, color) ||
                const DeepCollectionEquality().equals(other.color, color)) &&
            (identical(other.todos, todos) ||
                const DeepCollectionEquality().equals(other.todos, todos)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(color) ^
      const DeepCollectionEquality().hash(todos);

  @override
  _$_TodoCategory copyWith({
    Object id = freezed,
    Object name = freezed,
    Object color = freezed,
    Object todos = freezed,
  }) {
    return _$_TodoCategory(
      id: id == freezed ? this.id : id as UniqueId,
      name: name == freezed ? this.name : name as CategoryName,
      color: color == freezed ? this.color : color as CategoryColor,
      todos: todos == freezed ? this.todos : todos as TodoList<TodoItem>,
    );
  }
}

abstract class _TodoCategory implements TodoCategory {
  const factory _TodoCategory(
      {@required UniqueId id,
      @required CategoryName name,
      @required CategoryColor color,
      @required TodoList<TodoItem> todos}) = _$_TodoCategory;

  @override
  UniqueId get id;
  @override
  CategoryName get name;
  @override
  CategoryColor get color;
  @override
  TodoList<TodoItem> get todos;

  @override
  _TodoCategory copyWith(
      {UniqueId id,
      CategoryName name,
      CategoryColor color,
      TodoList<TodoItem> todos});
}
