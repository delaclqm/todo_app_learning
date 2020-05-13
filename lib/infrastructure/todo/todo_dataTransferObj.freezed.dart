// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'todo_dataTransferObj.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

TodoDto _$TodoDtoFromJson(Map<String, dynamic> json) {
  return _TodoDto.fromJson(json);
}

mixin _$TodoDto {
  @JsonKey(ignore: true)
  String get id;
  String get name;
  int get color;
  List<TodoItemDto> get todos;
  @ServerTimestampConverter()
  FieldValue get serverTimeStamp;

  TodoDto copyWith(
      {@JsonKey(ignore: true) String id,
      String name,
      int color,
      List<TodoItemDto> todos,
      @ServerTimestampConverter() FieldValue serverTimeStamp});

  Map<String, dynamic> toJson();
}

class _$TodoDtoTearOff {
  const _$TodoDtoTearOff();

  _TodoDto call(
      {@JsonKey(ignore: true) String id,
      @required String name,
      @required int color,
      @required List<TodoItemDto> todos,
      @required @ServerTimestampConverter() FieldValue serverTimeStamp}) {
    return _TodoDto(
      id: id,
      name: name,
      color: color,
      todos: todos,
      serverTimeStamp: serverTimeStamp,
    );
  }
}

const $TodoDto = _$TodoDtoTearOff();

@JsonSerializable()
class _$_TodoDto with DiagnosticableTreeMixin implements _TodoDto {
  _$_TodoDto(
      {@JsonKey(ignore: true) this.id,
      @required this.name,
      @required this.color,
      @required this.todos,
      @required @ServerTimestampConverter() this.serverTimeStamp})
      : assert(name != null),
        assert(color != null),
        assert(todos != null),
        assert(serverTimeStamp != null);

  factory _$_TodoDto.fromJson(Map<String, dynamic> json) =>
      _$_$_TodoDtoFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String id;
  @override
  final String name;
  @override
  final int color;
  @override
  final List<TodoItemDto> todos;
  @override
  @ServerTimestampConverter()
  final FieldValue serverTimeStamp;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TodoDto(id: $id, name: $name, color: $color, todos: $todos, serverTimeStamp: $serverTimeStamp)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TodoDto'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('color', color))
      ..add(DiagnosticsProperty('todos', todos))
      ..add(DiagnosticsProperty('serverTimeStamp', serverTimeStamp));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TodoDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.color, color) ||
                const DeepCollectionEquality().equals(other.color, color)) &&
            (identical(other.todos, todos) ||
                const DeepCollectionEquality().equals(other.todos, todos)) &&
            (identical(other.serverTimeStamp, serverTimeStamp) ||
                const DeepCollectionEquality()
                    .equals(other.serverTimeStamp, serverTimeStamp)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(color) ^
      const DeepCollectionEquality().hash(todos) ^
      const DeepCollectionEquality().hash(serverTimeStamp);

  @override
  _$_TodoDto copyWith({
    Object id = freezed,
    Object name = freezed,
    Object color = freezed,
    Object todos = freezed,
    Object serverTimeStamp = freezed,
  }) {
    return _$_TodoDto(
      id: id == freezed ? this.id : id as String,
      name: name == freezed ? this.name : name as String,
      color: color == freezed ? this.color : color as int,
      todos: todos == freezed ? this.todos : todos as List<TodoItemDto>,
      serverTimeStamp: serverTimeStamp == freezed
          ? this.serverTimeStamp
          : serverTimeStamp as FieldValue,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TodoDtoToJson(this);
  }
}

abstract class _TodoDto implements TodoDto {
  factory _TodoDto(
          {@JsonKey(ignore: true) String id,
          @required String name,
          @required int color,
          @required List<TodoItemDto> todos,
          @required @ServerTimestampConverter() FieldValue serverTimeStamp}) =
      _$_TodoDto;

  factory _TodoDto.fromJson(Map<String, dynamic> json) = _$_TodoDto.fromJson;

  @override
  @JsonKey(ignore: true)
  String get id;
  @override
  String get name;
  @override
  int get color;
  @override
  List<TodoItemDto> get todos;
  @override
  @ServerTimestampConverter()
  FieldValue get serverTimeStamp;

  @override
  _TodoDto copyWith(
      {@JsonKey(ignore: true) String id,
      String name,
      int color,
      List<TodoItemDto> todos,
      @ServerTimestampConverter() FieldValue serverTimeStamp});
}

TodoItemDto _$TodoItemDtoFromJson(Map<String, dynamic> json) {
  return _TodoItemDto.fromJson(json);
}

mixin _$TodoItemDto {
  String get id;
  String get name;
  bool get done;

  TodoItemDto copyWith({String id, String name, bool done});

  Map<String, dynamic> toJson();
}

class _$TodoItemDtoTearOff {
  const _$TodoItemDtoTearOff();

  _TodoItemDto call(
      {@required String id, @required String name, @required bool done}) {
    return _TodoItemDto(
      id: id,
      name: name,
      done: done,
    );
  }
}

const $TodoItemDto = _$TodoItemDtoTearOff();

@JsonSerializable()
class _$_TodoItemDto with DiagnosticableTreeMixin implements _TodoItemDto {
  const _$_TodoItemDto(
      {@required this.id, @required this.name, @required this.done})
      : assert(id != null),
        assert(name != null),
        assert(done != null);

  factory _$_TodoItemDto.fromJson(Map<String, dynamic> json) =>
      _$_$_TodoItemDtoFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final bool done;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TodoItemDto(id: $id, name: $name, done: $done)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TodoItemDto'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('done', done));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TodoItemDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.done, done) ||
                const DeepCollectionEquality().equals(other.done, done)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(done);

  @override
  _$_TodoItemDto copyWith({
    Object id = freezed,
    Object name = freezed,
    Object done = freezed,
  }) {
    return _$_TodoItemDto(
      id: id == freezed ? this.id : id as String,
      name: name == freezed ? this.name : name as String,
      done: done == freezed ? this.done : done as bool,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TodoItemDtoToJson(this);
  }
}

abstract class _TodoItemDto implements TodoItemDto {
  const factory _TodoItemDto(
      {@required String id,
      @required String name,
      @required bool done}) = _$_TodoItemDto;

  factory _TodoItemDto.fromJson(Map<String, dynamic> json) =
      _$_TodoItemDto.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  bool get done;

  @override
  _TodoItemDto copyWith({String id, String name, bool done});
}
