// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

mixin _$ValueFailure<T> {
  T get failedValue;

  ValueFailure<T> copyWith({T failedValue});

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result exceedingLength(@required T failedValue, @required int max),
    @required Result empty(@required T failedValue),
    @required Result multiline(@required T failedValue),
    @required Result numberTooLarge(@required T failedValue, @required num max),
    @required Result listTooLong(@required T failedValue, @required int max),
    @required Result invalidEmail(@required T failedValue),
    @required Result shortPassword(@required T failedValue),
    @required Result invalidPhotoUrl(@required T failedValue),
  });

  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result exceedingLength(@required T failedValue, @required int max),
    Result empty(@required T failedValue),
    Result multiline(@required T failedValue),
    Result numberTooLarge(@required T failedValue, @required num max),
    Result listTooLong(@required T failedValue, @required int max),
    Result invalidEmail(@required T failedValue),
    Result shortPassword(@required T failedValue),
    Result invalidPhotoUrl(@required T failedValue),
    @required Result orElse(),
  });

  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result exceedingLength(_ExceedingLength<T> value),
    @required Result empty(_Empty<T> value),
    @required Result multiline(_Multiline<T> value),
    @required Result numberTooLarge(_NumberTooLarge<T> value),
    @required Result listTooLong(_ListTooLong<T> value),
    @required Result invalidEmail(_InvalidEmail<T> value),
    @required Result shortPassword(_ShortPassword<T> value),
    @required Result invalidPhotoUrl(_InvalidPhotoUrl<T> value),
  });

  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result exceedingLength(_ExceedingLength<T> value),
    Result empty(_Empty<T> value),
    Result multiline(_Multiline<T> value),
    Result numberTooLarge(_NumberTooLarge<T> value),
    Result listTooLong(_ListTooLong<T> value),
    Result invalidEmail(_InvalidEmail<T> value),
    Result shortPassword(_ShortPassword<T> value),
    Result invalidPhotoUrl(_InvalidPhotoUrl<T> value),
    @required Result orElse(),
  });
}

class _$ValueFailureTearOff {
  const _$ValueFailureTearOff();

  _ExceedingLength<T> exceedingLength<T>(
      {@required T failedValue, @required int max}) {
    return _ExceedingLength<T>(
      failedValue: failedValue,
      max: max,
    );
  }

  _Empty<T> empty<T>({@required T failedValue}) {
    return _Empty<T>(
      failedValue: failedValue,
    );
  }

  _Multiline<T> multiline<T>({@required T failedValue}) {
    return _Multiline<T>(
      failedValue: failedValue,
    );
  }

  _NumberTooLarge<T> numberTooLarge<T>(
      {@required T failedValue, @required num max}) {
    return _NumberTooLarge<T>(
      failedValue: failedValue,
      max: max,
    );
  }

  _ListTooLong<T> listTooLong<T>({@required T failedValue, @required int max}) {
    return _ListTooLong<T>(
      failedValue: failedValue,
      max: max,
    );
  }

  _InvalidEmail<T> invalidEmail<T>({@required T failedValue}) {
    return _InvalidEmail<T>(
      failedValue: failedValue,
    );
  }

  _ShortPassword<T> shortPassword<T>({@required T failedValue}) {
    return _ShortPassword<T>(
      failedValue: failedValue,
    );
  }

  _InvalidPhotoUrl<T> invalidPhotoUrl<T>({@required T failedValue}) {
    return _InvalidPhotoUrl<T>(
      failedValue: failedValue,
    );
  }
}

const $ValueFailure = _$ValueFailureTearOff();

class _$_ExceedingLength<T>
    with DiagnosticableTreeMixin
    implements _ExceedingLength<T> {
  const _$_ExceedingLength({@required this.failedValue, @required this.max})
      : assert(failedValue != null),
        assert(max != null);

  @override
  final T failedValue;
  @override
  final int max;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValueFailure<$T>.exceedingLength(failedValue: $failedValue, max: $max)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ValueFailure<$T>.exceedingLength'))
      ..add(DiagnosticsProperty('failedValue', failedValue))
      ..add(DiagnosticsProperty('max', max));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ExceedingLength<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)) &&
            (identical(other.max, max) ||
                const DeepCollectionEquality().equals(other.max, max)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failedValue) ^
      const DeepCollectionEquality().hash(max);

  @override
  _$_ExceedingLength<T> copyWith({
    Object failedValue = freezed,
    Object max = freezed,
  }) {
    return _$_ExceedingLength<T>(
      failedValue: failedValue == freezed ? this.failedValue : failedValue as T,
      max: max == freezed ? this.max : max as int,
    );
  }

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result exceedingLength(@required T failedValue, @required int max),
    @required Result empty(@required T failedValue),
    @required Result multiline(@required T failedValue),
    @required Result numberTooLarge(@required T failedValue, @required num max),
    @required Result listTooLong(@required T failedValue, @required int max),
    @required Result invalidEmail(@required T failedValue),
    @required Result shortPassword(@required T failedValue),
    @required Result invalidPhotoUrl(@required T failedValue),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(numberTooLarge != null);
    assert(listTooLong != null);
    assert(invalidEmail != null);
    assert(shortPassword != null);
    assert(invalidPhotoUrl != null);
    return exceedingLength(failedValue, max);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result exceedingLength(@required T failedValue, @required int max),
    Result empty(@required T failedValue),
    Result multiline(@required T failedValue),
    Result numberTooLarge(@required T failedValue, @required num max),
    Result listTooLong(@required T failedValue, @required int max),
    Result invalidEmail(@required T failedValue),
    Result shortPassword(@required T failedValue),
    Result invalidPhotoUrl(@required T failedValue),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (exceedingLength != null) {
      return exceedingLength(failedValue, max);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result exceedingLength(_ExceedingLength<T> value),
    @required Result empty(_Empty<T> value),
    @required Result multiline(_Multiline<T> value),
    @required Result numberTooLarge(_NumberTooLarge<T> value),
    @required Result listTooLong(_ListTooLong<T> value),
    @required Result invalidEmail(_InvalidEmail<T> value),
    @required Result shortPassword(_ShortPassword<T> value),
    @required Result invalidPhotoUrl(_InvalidPhotoUrl<T> value),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(numberTooLarge != null);
    assert(listTooLong != null);
    assert(invalidEmail != null);
    assert(shortPassword != null);
    assert(invalidPhotoUrl != null);
    return exceedingLength(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result exceedingLength(_ExceedingLength<T> value),
    Result empty(_Empty<T> value),
    Result multiline(_Multiline<T> value),
    Result numberTooLarge(_NumberTooLarge<T> value),
    Result listTooLong(_ListTooLong<T> value),
    Result invalidEmail(_InvalidEmail<T> value),
    Result shortPassword(_ShortPassword<T> value),
    Result invalidPhotoUrl(_InvalidPhotoUrl<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (exceedingLength != null) {
      return exceedingLength(this);
    }
    return orElse();
  }
}

abstract class _ExceedingLength<T> implements ValueFailure<T> {
  const factory _ExceedingLength({@required T failedValue, @required int max}) =
      _$_ExceedingLength<T>;

  @override
  T get failedValue;
  int get max;

  @override
  _ExceedingLength<T> copyWith({T failedValue, int max});
}

class _$_Empty<T> with DiagnosticableTreeMixin implements _Empty<T> {
  const _$_Empty({@required this.failedValue}) : assert(failedValue != null);

  @override
  final T failedValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValueFailure<$T>.empty(failedValue: $failedValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ValueFailure<$T>.empty'))
      ..add(DiagnosticsProperty('failedValue', failedValue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Empty<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @override
  _$_Empty<T> copyWith({
    Object failedValue = freezed,
  }) {
    return _$_Empty<T>(
      failedValue: failedValue == freezed ? this.failedValue : failedValue as T,
    );
  }

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result exceedingLength(@required T failedValue, @required int max),
    @required Result empty(@required T failedValue),
    @required Result multiline(@required T failedValue),
    @required Result numberTooLarge(@required T failedValue, @required num max),
    @required Result listTooLong(@required T failedValue, @required int max),
    @required Result invalidEmail(@required T failedValue),
    @required Result shortPassword(@required T failedValue),
    @required Result invalidPhotoUrl(@required T failedValue),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(numberTooLarge != null);
    assert(listTooLong != null);
    assert(invalidEmail != null);
    assert(shortPassword != null);
    assert(invalidPhotoUrl != null);
    return empty(failedValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result exceedingLength(@required T failedValue, @required int max),
    Result empty(@required T failedValue),
    Result multiline(@required T failedValue),
    Result numberTooLarge(@required T failedValue, @required num max),
    Result listTooLong(@required T failedValue, @required int max),
    Result invalidEmail(@required T failedValue),
    Result shortPassword(@required T failedValue),
    Result invalidPhotoUrl(@required T failedValue),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (empty != null) {
      return empty(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result exceedingLength(_ExceedingLength<T> value),
    @required Result empty(_Empty<T> value),
    @required Result multiline(_Multiline<T> value),
    @required Result numberTooLarge(_NumberTooLarge<T> value),
    @required Result listTooLong(_ListTooLong<T> value),
    @required Result invalidEmail(_InvalidEmail<T> value),
    @required Result shortPassword(_ShortPassword<T> value),
    @required Result invalidPhotoUrl(_InvalidPhotoUrl<T> value),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(numberTooLarge != null);
    assert(listTooLong != null);
    assert(invalidEmail != null);
    assert(shortPassword != null);
    assert(invalidPhotoUrl != null);
    return empty(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result exceedingLength(_ExceedingLength<T> value),
    Result empty(_Empty<T> value),
    Result multiline(_Multiline<T> value),
    Result numberTooLarge(_NumberTooLarge<T> value),
    Result listTooLong(_ListTooLong<T> value),
    Result invalidEmail(_InvalidEmail<T> value),
    Result shortPassword(_ShortPassword<T> value),
    Result invalidPhotoUrl(_InvalidPhotoUrl<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _Empty<T> implements ValueFailure<T> {
  const factory _Empty({@required T failedValue}) = _$_Empty<T>;

  @override
  T get failedValue;

  @override
  _Empty<T> copyWith({T failedValue});
}

class _$_Multiline<T> with DiagnosticableTreeMixin implements _Multiline<T> {
  const _$_Multiline({@required this.failedValue})
      : assert(failedValue != null);

  @override
  final T failedValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValueFailure<$T>.multiline(failedValue: $failedValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ValueFailure<$T>.multiline'))
      ..add(DiagnosticsProperty('failedValue', failedValue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Multiline<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @override
  _$_Multiline<T> copyWith({
    Object failedValue = freezed,
  }) {
    return _$_Multiline<T>(
      failedValue: failedValue == freezed ? this.failedValue : failedValue as T,
    );
  }

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result exceedingLength(@required T failedValue, @required int max),
    @required Result empty(@required T failedValue),
    @required Result multiline(@required T failedValue),
    @required Result numberTooLarge(@required T failedValue, @required num max),
    @required Result listTooLong(@required T failedValue, @required int max),
    @required Result invalidEmail(@required T failedValue),
    @required Result shortPassword(@required T failedValue),
    @required Result invalidPhotoUrl(@required T failedValue),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(numberTooLarge != null);
    assert(listTooLong != null);
    assert(invalidEmail != null);
    assert(shortPassword != null);
    assert(invalidPhotoUrl != null);
    return multiline(failedValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result exceedingLength(@required T failedValue, @required int max),
    Result empty(@required T failedValue),
    Result multiline(@required T failedValue),
    Result numberTooLarge(@required T failedValue, @required num max),
    Result listTooLong(@required T failedValue, @required int max),
    Result invalidEmail(@required T failedValue),
    Result shortPassword(@required T failedValue),
    Result invalidPhotoUrl(@required T failedValue),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (multiline != null) {
      return multiline(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result exceedingLength(_ExceedingLength<T> value),
    @required Result empty(_Empty<T> value),
    @required Result multiline(_Multiline<T> value),
    @required Result numberTooLarge(_NumberTooLarge<T> value),
    @required Result listTooLong(_ListTooLong<T> value),
    @required Result invalidEmail(_InvalidEmail<T> value),
    @required Result shortPassword(_ShortPassword<T> value),
    @required Result invalidPhotoUrl(_InvalidPhotoUrl<T> value),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(numberTooLarge != null);
    assert(listTooLong != null);
    assert(invalidEmail != null);
    assert(shortPassword != null);
    assert(invalidPhotoUrl != null);
    return multiline(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result exceedingLength(_ExceedingLength<T> value),
    Result empty(_Empty<T> value),
    Result multiline(_Multiline<T> value),
    Result numberTooLarge(_NumberTooLarge<T> value),
    Result listTooLong(_ListTooLong<T> value),
    Result invalidEmail(_InvalidEmail<T> value),
    Result shortPassword(_ShortPassword<T> value),
    Result invalidPhotoUrl(_InvalidPhotoUrl<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (multiline != null) {
      return multiline(this);
    }
    return orElse();
  }
}

abstract class _Multiline<T> implements ValueFailure<T> {
  const factory _Multiline({@required T failedValue}) = _$_Multiline<T>;

  @override
  T get failedValue;

  @override
  _Multiline<T> copyWith({T failedValue});
}

class _$_NumberTooLarge<T>
    with DiagnosticableTreeMixin
    implements _NumberTooLarge<T> {
  const _$_NumberTooLarge({@required this.failedValue, @required this.max})
      : assert(failedValue != null),
        assert(max != null);

  @override
  final T failedValue;
  @override
  final num max;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValueFailure<$T>.numberTooLarge(failedValue: $failedValue, max: $max)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ValueFailure<$T>.numberTooLarge'))
      ..add(DiagnosticsProperty('failedValue', failedValue))
      ..add(DiagnosticsProperty('max', max));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NumberTooLarge<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)) &&
            (identical(other.max, max) ||
                const DeepCollectionEquality().equals(other.max, max)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failedValue) ^
      const DeepCollectionEquality().hash(max);

  @override
  _$_NumberTooLarge<T> copyWith({
    Object failedValue = freezed,
    Object max = freezed,
  }) {
    return _$_NumberTooLarge<T>(
      failedValue: failedValue == freezed ? this.failedValue : failedValue as T,
      max: max == freezed ? this.max : max as num,
    );
  }

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result exceedingLength(@required T failedValue, @required int max),
    @required Result empty(@required T failedValue),
    @required Result multiline(@required T failedValue),
    @required Result numberTooLarge(@required T failedValue, @required num max),
    @required Result listTooLong(@required T failedValue, @required int max),
    @required Result invalidEmail(@required T failedValue),
    @required Result shortPassword(@required T failedValue),
    @required Result invalidPhotoUrl(@required T failedValue),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(numberTooLarge != null);
    assert(listTooLong != null);
    assert(invalidEmail != null);
    assert(shortPassword != null);
    assert(invalidPhotoUrl != null);
    return numberTooLarge(failedValue, max);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result exceedingLength(@required T failedValue, @required int max),
    Result empty(@required T failedValue),
    Result multiline(@required T failedValue),
    Result numberTooLarge(@required T failedValue, @required num max),
    Result listTooLong(@required T failedValue, @required int max),
    Result invalidEmail(@required T failedValue),
    Result shortPassword(@required T failedValue),
    Result invalidPhotoUrl(@required T failedValue),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (numberTooLarge != null) {
      return numberTooLarge(failedValue, max);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result exceedingLength(_ExceedingLength<T> value),
    @required Result empty(_Empty<T> value),
    @required Result multiline(_Multiline<T> value),
    @required Result numberTooLarge(_NumberTooLarge<T> value),
    @required Result listTooLong(_ListTooLong<T> value),
    @required Result invalidEmail(_InvalidEmail<T> value),
    @required Result shortPassword(_ShortPassword<T> value),
    @required Result invalidPhotoUrl(_InvalidPhotoUrl<T> value),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(numberTooLarge != null);
    assert(listTooLong != null);
    assert(invalidEmail != null);
    assert(shortPassword != null);
    assert(invalidPhotoUrl != null);
    return numberTooLarge(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result exceedingLength(_ExceedingLength<T> value),
    Result empty(_Empty<T> value),
    Result multiline(_Multiline<T> value),
    Result numberTooLarge(_NumberTooLarge<T> value),
    Result listTooLong(_ListTooLong<T> value),
    Result invalidEmail(_InvalidEmail<T> value),
    Result shortPassword(_ShortPassword<T> value),
    Result invalidPhotoUrl(_InvalidPhotoUrl<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (numberTooLarge != null) {
      return numberTooLarge(this);
    }
    return orElse();
  }
}

abstract class _NumberTooLarge<T> implements ValueFailure<T> {
  const factory _NumberTooLarge({@required T failedValue, @required num max}) =
      _$_NumberTooLarge<T>;

  @override
  T get failedValue;
  num get max;

  @override
  _NumberTooLarge<T> copyWith({T failedValue, num max});
}

class _$_ListTooLong<T>
    with DiagnosticableTreeMixin
    implements _ListTooLong<T> {
  const _$_ListTooLong({@required this.failedValue, @required this.max})
      : assert(failedValue != null),
        assert(max != null);

  @override
  final T failedValue;
  @override
  final int max;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValueFailure<$T>.listTooLong(failedValue: $failedValue, max: $max)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ValueFailure<$T>.listTooLong'))
      ..add(DiagnosticsProperty('failedValue', failedValue))
      ..add(DiagnosticsProperty('max', max));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ListTooLong<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)) &&
            (identical(other.max, max) ||
                const DeepCollectionEquality().equals(other.max, max)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failedValue) ^
      const DeepCollectionEquality().hash(max);

  @override
  _$_ListTooLong<T> copyWith({
    Object failedValue = freezed,
    Object max = freezed,
  }) {
    return _$_ListTooLong<T>(
      failedValue: failedValue == freezed ? this.failedValue : failedValue as T,
      max: max == freezed ? this.max : max as int,
    );
  }

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result exceedingLength(@required T failedValue, @required int max),
    @required Result empty(@required T failedValue),
    @required Result multiline(@required T failedValue),
    @required Result numberTooLarge(@required T failedValue, @required num max),
    @required Result listTooLong(@required T failedValue, @required int max),
    @required Result invalidEmail(@required T failedValue),
    @required Result shortPassword(@required T failedValue),
    @required Result invalidPhotoUrl(@required T failedValue),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(numberTooLarge != null);
    assert(listTooLong != null);
    assert(invalidEmail != null);
    assert(shortPassword != null);
    assert(invalidPhotoUrl != null);
    return listTooLong(failedValue, max);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result exceedingLength(@required T failedValue, @required int max),
    Result empty(@required T failedValue),
    Result multiline(@required T failedValue),
    Result numberTooLarge(@required T failedValue, @required num max),
    Result listTooLong(@required T failedValue, @required int max),
    Result invalidEmail(@required T failedValue),
    Result shortPassword(@required T failedValue),
    Result invalidPhotoUrl(@required T failedValue),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (listTooLong != null) {
      return listTooLong(failedValue, max);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result exceedingLength(_ExceedingLength<T> value),
    @required Result empty(_Empty<T> value),
    @required Result multiline(_Multiline<T> value),
    @required Result numberTooLarge(_NumberTooLarge<T> value),
    @required Result listTooLong(_ListTooLong<T> value),
    @required Result invalidEmail(_InvalidEmail<T> value),
    @required Result shortPassword(_ShortPassword<T> value),
    @required Result invalidPhotoUrl(_InvalidPhotoUrl<T> value),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(numberTooLarge != null);
    assert(listTooLong != null);
    assert(invalidEmail != null);
    assert(shortPassword != null);
    assert(invalidPhotoUrl != null);
    return listTooLong(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result exceedingLength(_ExceedingLength<T> value),
    Result empty(_Empty<T> value),
    Result multiline(_Multiline<T> value),
    Result numberTooLarge(_NumberTooLarge<T> value),
    Result listTooLong(_ListTooLong<T> value),
    Result invalidEmail(_InvalidEmail<T> value),
    Result shortPassword(_ShortPassword<T> value),
    Result invalidPhotoUrl(_InvalidPhotoUrl<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (listTooLong != null) {
      return listTooLong(this);
    }
    return orElse();
  }
}

abstract class _ListTooLong<T> implements ValueFailure<T> {
  const factory _ListTooLong({@required T failedValue, @required int max}) =
      _$_ListTooLong<T>;

  @override
  T get failedValue;
  int get max;

  @override
  _ListTooLong<T> copyWith({T failedValue, int max});
}

class _$_InvalidEmail<T>
    with DiagnosticableTreeMixin
    implements _InvalidEmail<T> {
  const _$_InvalidEmail({@required this.failedValue})
      : assert(failedValue != null);

  @override
  final T failedValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValueFailure<$T>.invalidEmail(failedValue: $failedValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ValueFailure<$T>.invalidEmail'))
      ..add(DiagnosticsProperty('failedValue', failedValue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InvalidEmail<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @override
  _$_InvalidEmail<T> copyWith({
    Object failedValue = freezed,
  }) {
    return _$_InvalidEmail<T>(
      failedValue: failedValue == freezed ? this.failedValue : failedValue as T,
    );
  }

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result exceedingLength(@required T failedValue, @required int max),
    @required Result empty(@required T failedValue),
    @required Result multiline(@required T failedValue),
    @required Result numberTooLarge(@required T failedValue, @required num max),
    @required Result listTooLong(@required T failedValue, @required int max),
    @required Result invalidEmail(@required T failedValue),
    @required Result shortPassword(@required T failedValue),
    @required Result invalidPhotoUrl(@required T failedValue),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(numberTooLarge != null);
    assert(listTooLong != null);
    assert(invalidEmail != null);
    assert(shortPassword != null);
    assert(invalidPhotoUrl != null);
    return invalidEmail(failedValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result exceedingLength(@required T failedValue, @required int max),
    Result empty(@required T failedValue),
    Result multiline(@required T failedValue),
    Result numberTooLarge(@required T failedValue, @required num max),
    Result listTooLong(@required T failedValue, @required int max),
    Result invalidEmail(@required T failedValue),
    Result shortPassword(@required T failedValue),
    Result invalidPhotoUrl(@required T failedValue),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidEmail != null) {
      return invalidEmail(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result exceedingLength(_ExceedingLength<T> value),
    @required Result empty(_Empty<T> value),
    @required Result multiline(_Multiline<T> value),
    @required Result numberTooLarge(_NumberTooLarge<T> value),
    @required Result listTooLong(_ListTooLong<T> value),
    @required Result invalidEmail(_InvalidEmail<T> value),
    @required Result shortPassword(_ShortPassword<T> value),
    @required Result invalidPhotoUrl(_InvalidPhotoUrl<T> value),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(numberTooLarge != null);
    assert(listTooLong != null);
    assert(invalidEmail != null);
    assert(shortPassword != null);
    assert(invalidPhotoUrl != null);
    return invalidEmail(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result exceedingLength(_ExceedingLength<T> value),
    Result empty(_Empty<T> value),
    Result multiline(_Multiline<T> value),
    Result numberTooLarge(_NumberTooLarge<T> value),
    Result listTooLong(_ListTooLong<T> value),
    Result invalidEmail(_InvalidEmail<T> value),
    Result shortPassword(_ShortPassword<T> value),
    Result invalidPhotoUrl(_InvalidPhotoUrl<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidEmail != null) {
      return invalidEmail(this);
    }
    return orElse();
  }
}

abstract class _InvalidEmail<T> implements ValueFailure<T> {
  const factory _InvalidEmail({@required T failedValue}) = _$_InvalidEmail<T>;

  @override
  T get failedValue;

  @override
  _InvalidEmail<T> copyWith({T failedValue});
}

class _$_ShortPassword<T>
    with DiagnosticableTreeMixin
    implements _ShortPassword<T> {
  const _$_ShortPassword({@required this.failedValue})
      : assert(failedValue != null);

  @override
  final T failedValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValueFailure<$T>.shortPassword(failedValue: $failedValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ValueFailure<$T>.shortPassword'))
      ..add(DiagnosticsProperty('failedValue', failedValue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ShortPassword<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @override
  _$_ShortPassword<T> copyWith({
    Object failedValue = freezed,
  }) {
    return _$_ShortPassword<T>(
      failedValue: failedValue == freezed ? this.failedValue : failedValue as T,
    );
  }

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result exceedingLength(@required T failedValue, @required int max),
    @required Result empty(@required T failedValue),
    @required Result multiline(@required T failedValue),
    @required Result numberTooLarge(@required T failedValue, @required num max),
    @required Result listTooLong(@required T failedValue, @required int max),
    @required Result invalidEmail(@required T failedValue),
    @required Result shortPassword(@required T failedValue),
    @required Result invalidPhotoUrl(@required T failedValue),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(numberTooLarge != null);
    assert(listTooLong != null);
    assert(invalidEmail != null);
    assert(shortPassword != null);
    assert(invalidPhotoUrl != null);
    return shortPassword(failedValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result exceedingLength(@required T failedValue, @required int max),
    Result empty(@required T failedValue),
    Result multiline(@required T failedValue),
    Result numberTooLarge(@required T failedValue, @required num max),
    Result listTooLong(@required T failedValue, @required int max),
    Result invalidEmail(@required T failedValue),
    Result shortPassword(@required T failedValue),
    Result invalidPhotoUrl(@required T failedValue),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (shortPassword != null) {
      return shortPassword(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result exceedingLength(_ExceedingLength<T> value),
    @required Result empty(_Empty<T> value),
    @required Result multiline(_Multiline<T> value),
    @required Result numberTooLarge(_NumberTooLarge<T> value),
    @required Result listTooLong(_ListTooLong<T> value),
    @required Result invalidEmail(_InvalidEmail<T> value),
    @required Result shortPassword(_ShortPassword<T> value),
    @required Result invalidPhotoUrl(_InvalidPhotoUrl<T> value),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(numberTooLarge != null);
    assert(listTooLong != null);
    assert(invalidEmail != null);
    assert(shortPassword != null);
    assert(invalidPhotoUrl != null);
    return shortPassword(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result exceedingLength(_ExceedingLength<T> value),
    Result empty(_Empty<T> value),
    Result multiline(_Multiline<T> value),
    Result numberTooLarge(_NumberTooLarge<T> value),
    Result listTooLong(_ListTooLong<T> value),
    Result invalidEmail(_InvalidEmail<T> value),
    Result shortPassword(_ShortPassword<T> value),
    Result invalidPhotoUrl(_InvalidPhotoUrl<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (shortPassword != null) {
      return shortPassword(this);
    }
    return orElse();
  }
}

abstract class _ShortPassword<T> implements ValueFailure<T> {
  const factory _ShortPassword({@required T failedValue}) = _$_ShortPassword<T>;

  @override
  T get failedValue;

  @override
  _ShortPassword<T> copyWith({T failedValue});
}

class _$_InvalidPhotoUrl<T>
    with DiagnosticableTreeMixin
    implements _InvalidPhotoUrl<T> {
  const _$_InvalidPhotoUrl({@required this.failedValue})
      : assert(failedValue != null);

  @override
  final T failedValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValueFailure<$T>.invalidPhotoUrl(failedValue: $failedValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ValueFailure<$T>.invalidPhotoUrl'))
      ..add(DiagnosticsProperty('failedValue', failedValue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InvalidPhotoUrl<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @override
  _$_InvalidPhotoUrl<T> copyWith({
    Object failedValue = freezed,
  }) {
    return _$_InvalidPhotoUrl<T>(
      failedValue: failedValue == freezed ? this.failedValue : failedValue as T,
    );
  }

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result exceedingLength(@required T failedValue, @required int max),
    @required Result empty(@required T failedValue),
    @required Result multiline(@required T failedValue),
    @required Result numberTooLarge(@required T failedValue, @required num max),
    @required Result listTooLong(@required T failedValue, @required int max),
    @required Result invalidEmail(@required T failedValue),
    @required Result shortPassword(@required T failedValue),
    @required Result invalidPhotoUrl(@required T failedValue),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(numberTooLarge != null);
    assert(listTooLong != null);
    assert(invalidEmail != null);
    assert(shortPassword != null);
    assert(invalidPhotoUrl != null);
    return invalidPhotoUrl(failedValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result exceedingLength(@required T failedValue, @required int max),
    Result empty(@required T failedValue),
    Result multiline(@required T failedValue),
    Result numberTooLarge(@required T failedValue, @required num max),
    Result listTooLong(@required T failedValue, @required int max),
    Result invalidEmail(@required T failedValue),
    Result shortPassword(@required T failedValue),
    Result invalidPhotoUrl(@required T failedValue),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidPhotoUrl != null) {
      return invalidPhotoUrl(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result exceedingLength(_ExceedingLength<T> value),
    @required Result empty(_Empty<T> value),
    @required Result multiline(_Multiline<T> value),
    @required Result numberTooLarge(_NumberTooLarge<T> value),
    @required Result listTooLong(_ListTooLong<T> value),
    @required Result invalidEmail(_InvalidEmail<T> value),
    @required Result shortPassword(_ShortPassword<T> value),
    @required Result invalidPhotoUrl(_InvalidPhotoUrl<T> value),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(numberTooLarge != null);
    assert(listTooLong != null);
    assert(invalidEmail != null);
    assert(shortPassword != null);
    assert(invalidPhotoUrl != null);
    return invalidPhotoUrl(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result exceedingLength(_ExceedingLength<T> value),
    Result empty(_Empty<T> value),
    Result multiline(_Multiline<T> value),
    Result numberTooLarge(_NumberTooLarge<T> value),
    Result listTooLong(_ListTooLong<T> value),
    Result invalidEmail(_InvalidEmail<T> value),
    Result shortPassword(_ShortPassword<T> value),
    Result invalidPhotoUrl(_InvalidPhotoUrl<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidPhotoUrl != null) {
      return invalidPhotoUrl(this);
    }
    return orElse();
  }
}

abstract class _InvalidPhotoUrl<T> implements ValueFailure<T> {
  const factory _InvalidPhotoUrl({@required T failedValue}) =
      _$_InvalidPhotoUrl<T>;

  @override
  T get failedValue;

  @override
  _InvalidPhotoUrl<T> copyWith({T failedValue});
}
