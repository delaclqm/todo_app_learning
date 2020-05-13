// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_dataTransferObj.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TodoDto _$_$_TodoDtoFromJson(Map<String, dynamic> json) {
  return _$_TodoDto(
    name: json['name'] as String,
    color: json['color'] as int,
    todos: (json['todos'] as List)
        ?.map((e) =>
            e == null ? null : TodoItemDto.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    serverTimeStamp:
        const ServerTimestampConverter().fromJson(json['serverTimeStamp']),
  );
}

Map<String, dynamic> _$_$_TodoDtoToJson(_$_TodoDto instance) =>
    <String, dynamic>{
      'name': instance.name,
      'color': instance.color,
      'todos': instance.todos,
      'serverTimeStamp':
          const ServerTimestampConverter().toJson(instance.serverTimeStamp),
    };

_$_TodoItemDto _$_$_TodoItemDtoFromJson(Map<String, dynamic> json) {
  return _$_TodoItemDto(
    id: json['id'] as String,
    name: json['name'] as String,
    done: json['done'] as bool,
  );
}

Map<String, dynamic> _$_$_TodoItemDtoToJson(_$_TodoItemDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'done': instance.done,
    };
