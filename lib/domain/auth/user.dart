import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'value_objects.dart';
import '../core/entity.dart';
import '../core/failures.dart';
import '../core/value_objects.dart';

part 'user.freezed.dart';

@freezed
abstract class User with _$User implements IEntity {
  const factory User({
    @required UniqueId id,
    @required StringSingleLine name,
    @required EmailAddress emailAddress,
  }) = _User;
}

extension UserX on User {
  Option<ValueFailure<dynamic>> get failureOption {
    return name.failureOrUnit
      .andThen(emailAddress.failureOrUnit)
      .fold((left) => some(left), (right) => none());
  }
}