import 'package:dartz/dartz.dart';

import 'failures.dart';

/// This class should be exteded by our value objects so that we do not need to keep
/// rewriting the code for value equality

abstract class ValueObject<T> {
  const ValueObject();
  Either<ValueFailure<T>, T> get value;

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
    return o is ValueObject<T> && o.value == value;
  }

  @override
  int get hashCode => value.hashCode;
  
  @override
  String toString() => 'Value($value)';
}