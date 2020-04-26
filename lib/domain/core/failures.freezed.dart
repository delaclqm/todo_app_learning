// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

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

// ignore: unused_element
const $ValueFailure = _$ValueFailureTearOff();

mixin _$ValueFailure<T> {
  T get failedValue;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result exceedingLength(T failedValue, int max),
    @required Result empty(T failedValue),
    @required Result multiline(T failedValue),
    @required Result numberTooLarge(T failedValue, num max),
    @required Result listTooLong(T failedValue, int max),
    @required Result invalidEmail(T failedValue),
    @required Result shortPassword(T failedValue),
    @required Result invalidPhotoUrl(T failedValue),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result exceedingLength(T failedValue, int max),
    Result empty(T failedValue),
    Result multiline(T failedValue),
    Result numberTooLarge(T failedValue, num max),
    Result listTooLong(T failedValue, int max),
    Result invalidEmail(T failedValue),
    Result shortPassword(T failedValue),
    Result invalidPhotoUrl(T failedValue),
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

  $ValueFailureCopyWith<T, ValueFailure<T>> get copyWith;
}

abstract class $ValueFailureCopyWith<T, $Res> {
  factory $ValueFailureCopyWith(
          ValueFailure<T> value, $Res Function(ValueFailure<T>) then) =
      _$ValueFailureCopyWithImpl<T, $Res>;
  $Res call({T failedValue});
}

class _$ValueFailureCopyWithImpl<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  _$ValueFailureCopyWithImpl(this._value, this._then);

  final ValueFailure<T> _value;
  // ignore: unused_field
  final $Res Function(ValueFailure<T>) _then;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(_value.copyWith(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

abstract class _$ExceedingLengthCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$ExceedingLengthCopyWith(
          _ExceedingLength<T> value, $Res Function(_ExceedingLength<T>) then) =
      __$ExceedingLengthCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue, int max});
}

class __$ExceedingLengthCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$ExceedingLengthCopyWith<T, $Res> {
  __$ExceedingLengthCopyWithImpl(
      _ExceedingLength<T> _value, $Res Function(_ExceedingLength<T>) _then)
      : super(_value, (v) => _then(v as _ExceedingLength<T>));

  @override
  _ExceedingLength<T> get _value => super._value as _ExceedingLength<T>;

  @override
  $Res call({
    Object failedValue = freezed,
    Object max = freezed,
  }) {
    return _then(_ExceedingLength<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
      max: max == freezed ? _value.max : max as int,
    ));
  }
}

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
  _$ExceedingLengthCopyWith<T, _ExceedingLength<T>> get copyWith =>
      __$ExceedingLengthCopyWithImpl<T, _ExceedingLength<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result exceedingLength(T failedValue, int max),
    @required Result empty(T failedValue),
    @required Result multiline(T failedValue),
    @required Result numberTooLarge(T failedValue, num max),
    @required Result listTooLong(T failedValue, int max),
    @required Result invalidEmail(T failedValue),
    @required Result shortPassword(T failedValue),
    @required Result invalidPhotoUrl(T failedValue),
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
    Result exceedingLength(T failedValue, int max),
    Result empty(T failedValue),
    Result multiline(T failedValue),
    Result numberTooLarge(T failedValue, num max),
    Result listTooLong(T failedValue, int max),
    Result invalidEmail(T failedValue),
    Result shortPassword(T failedValue),
    Result invalidPhotoUrl(T failedValue),
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
  _$ExceedingLengthCopyWith<T, _ExceedingLength<T>> get copyWith;
}

abstract class _$EmptyCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$EmptyCopyWith(_Empty<T> value, $Res Function(_Empty<T>) then) =
      __$EmptyCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

class __$EmptyCopyWithImpl<T, $Res> extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$EmptyCopyWith<T, $Res> {
  __$EmptyCopyWithImpl(_Empty<T> _value, $Res Function(_Empty<T>) _then)
      : super(_value, (v) => _then(v as _Empty<T>));

  @override
  _Empty<T> get _value => super._value as _Empty<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(_Empty<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
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
  _$EmptyCopyWith<T, _Empty<T>> get copyWith =>
      __$EmptyCopyWithImpl<T, _Empty<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result exceedingLength(T failedValue, int max),
    @required Result empty(T failedValue),
    @required Result multiline(T failedValue),
    @required Result numberTooLarge(T failedValue, num max),
    @required Result listTooLong(T failedValue, int max),
    @required Result invalidEmail(T failedValue),
    @required Result shortPassword(T failedValue),
    @required Result invalidPhotoUrl(T failedValue),
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
    Result exceedingLength(T failedValue, int max),
    Result empty(T failedValue),
    Result multiline(T failedValue),
    Result numberTooLarge(T failedValue, num max),
    Result listTooLong(T failedValue, int max),
    Result invalidEmail(T failedValue),
    Result shortPassword(T failedValue),
    Result invalidPhotoUrl(T failedValue),
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
  _$EmptyCopyWith<T, _Empty<T>> get copyWith;
}

abstract class _$MultilineCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$MultilineCopyWith(
          _Multiline<T> value, $Res Function(_Multiline<T>) then) =
      __$MultilineCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

class __$MultilineCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$MultilineCopyWith<T, $Res> {
  __$MultilineCopyWithImpl(
      _Multiline<T> _value, $Res Function(_Multiline<T>) _then)
      : super(_value, (v) => _then(v as _Multiline<T>));

  @override
  _Multiline<T> get _value => super._value as _Multiline<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(_Multiline<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
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
  _$MultilineCopyWith<T, _Multiline<T>> get copyWith =>
      __$MultilineCopyWithImpl<T, _Multiline<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result exceedingLength(T failedValue, int max),
    @required Result empty(T failedValue),
    @required Result multiline(T failedValue),
    @required Result numberTooLarge(T failedValue, num max),
    @required Result listTooLong(T failedValue, int max),
    @required Result invalidEmail(T failedValue),
    @required Result shortPassword(T failedValue),
    @required Result invalidPhotoUrl(T failedValue),
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
    Result exceedingLength(T failedValue, int max),
    Result empty(T failedValue),
    Result multiline(T failedValue),
    Result numberTooLarge(T failedValue, num max),
    Result listTooLong(T failedValue, int max),
    Result invalidEmail(T failedValue),
    Result shortPassword(T failedValue),
    Result invalidPhotoUrl(T failedValue),
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
  _$MultilineCopyWith<T, _Multiline<T>> get copyWith;
}

abstract class _$NumberTooLargeCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$NumberTooLargeCopyWith(
          _NumberTooLarge<T> value, $Res Function(_NumberTooLarge<T>) then) =
      __$NumberTooLargeCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue, num max});
}

class __$NumberTooLargeCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$NumberTooLargeCopyWith<T, $Res> {
  __$NumberTooLargeCopyWithImpl(
      _NumberTooLarge<T> _value, $Res Function(_NumberTooLarge<T>) _then)
      : super(_value, (v) => _then(v as _NumberTooLarge<T>));

  @override
  _NumberTooLarge<T> get _value => super._value as _NumberTooLarge<T>;

  @override
  $Res call({
    Object failedValue = freezed,
    Object max = freezed,
  }) {
    return _then(_NumberTooLarge<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
      max: max == freezed ? _value.max : max as num,
    ));
  }
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
  _$NumberTooLargeCopyWith<T, _NumberTooLarge<T>> get copyWith =>
      __$NumberTooLargeCopyWithImpl<T, _NumberTooLarge<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result exceedingLength(T failedValue, int max),
    @required Result empty(T failedValue),
    @required Result multiline(T failedValue),
    @required Result numberTooLarge(T failedValue, num max),
    @required Result listTooLong(T failedValue, int max),
    @required Result invalidEmail(T failedValue),
    @required Result shortPassword(T failedValue),
    @required Result invalidPhotoUrl(T failedValue),
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
    Result exceedingLength(T failedValue, int max),
    Result empty(T failedValue),
    Result multiline(T failedValue),
    Result numberTooLarge(T failedValue, num max),
    Result listTooLong(T failedValue, int max),
    Result invalidEmail(T failedValue),
    Result shortPassword(T failedValue),
    Result invalidPhotoUrl(T failedValue),
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
  _$NumberTooLargeCopyWith<T, _NumberTooLarge<T>> get copyWith;
}

abstract class _$ListTooLongCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$ListTooLongCopyWith(
          _ListTooLong<T> value, $Res Function(_ListTooLong<T>) then) =
      __$ListTooLongCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue, int max});
}

class __$ListTooLongCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$ListTooLongCopyWith<T, $Res> {
  __$ListTooLongCopyWithImpl(
      _ListTooLong<T> _value, $Res Function(_ListTooLong<T>) _then)
      : super(_value, (v) => _then(v as _ListTooLong<T>));

  @override
  _ListTooLong<T> get _value => super._value as _ListTooLong<T>;

  @override
  $Res call({
    Object failedValue = freezed,
    Object max = freezed,
  }) {
    return _then(_ListTooLong<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
      max: max == freezed ? _value.max : max as int,
    ));
  }
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
  _$ListTooLongCopyWith<T, _ListTooLong<T>> get copyWith =>
      __$ListTooLongCopyWithImpl<T, _ListTooLong<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result exceedingLength(T failedValue, int max),
    @required Result empty(T failedValue),
    @required Result multiline(T failedValue),
    @required Result numberTooLarge(T failedValue, num max),
    @required Result listTooLong(T failedValue, int max),
    @required Result invalidEmail(T failedValue),
    @required Result shortPassword(T failedValue),
    @required Result invalidPhotoUrl(T failedValue),
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
    Result exceedingLength(T failedValue, int max),
    Result empty(T failedValue),
    Result multiline(T failedValue),
    Result numberTooLarge(T failedValue, num max),
    Result listTooLong(T failedValue, int max),
    Result invalidEmail(T failedValue),
    Result shortPassword(T failedValue),
    Result invalidPhotoUrl(T failedValue),
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
  _$ListTooLongCopyWith<T, _ListTooLong<T>> get copyWith;
}

abstract class _$InvalidEmailCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$InvalidEmailCopyWith(
          _InvalidEmail<T> value, $Res Function(_InvalidEmail<T>) then) =
      __$InvalidEmailCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

class __$InvalidEmailCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$InvalidEmailCopyWith<T, $Res> {
  __$InvalidEmailCopyWithImpl(
      _InvalidEmail<T> _value, $Res Function(_InvalidEmail<T>) _then)
      : super(_value, (v) => _then(v as _InvalidEmail<T>));

  @override
  _InvalidEmail<T> get _value => super._value as _InvalidEmail<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(_InvalidEmail<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
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
  _$InvalidEmailCopyWith<T, _InvalidEmail<T>> get copyWith =>
      __$InvalidEmailCopyWithImpl<T, _InvalidEmail<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result exceedingLength(T failedValue, int max),
    @required Result empty(T failedValue),
    @required Result multiline(T failedValue),
    @required Result numberTooLarge(T failedValue, num max),
    @required Result listTooLong(T failedValue, int max),
    @required Result invalidEmail(T failedValue),
    @required Result shortPassword(T failedValue),
    @required Result invalidPhotoUrl(T failedValue),
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
    Result exceedingLength(T failedValue, int max),
    Result empty(T failedValue),
    Result multiline(T failedValue),
    Result numberTooLarge(T failedValue, num max),
    Result listTooLong(T failedValue, int max),
    Result invalidEmail(T failedValue),
    Result shortPassword(T failedValue),
    Result invalidPhotoUrl(T failedValue),
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
  _$InvalidEmailCopyWith<T, _InvalidEmail<T>> get copyWith;
}

abstract class _$ShortPasswordCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$ShortPasswordCopyWith(
          _ShortPassword<T> value, $Res Function(_ShortPassword<T>) then) =
      __$ShortPasswordCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

class __$ShortPasswordCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$ShortPasswordCopyWith<T, $Res> {
  __$ShortPasswordCopyWithImpl(
      _ShortPassword<T> _value, $Res Function(_ShortPassword<T>) _then)
      : super(_value, (v) => _then(v as _ShortPassword<T>));

  @override
  _ShortPassword<T> get _value => super._value as _ShortPassword<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(_ShortPassword<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
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
  _$ShortPasswordCopyWith<T, _ShortPassword<T>> get copyWith =>
      __$ShortPasswordCopyWithImpl<T, _ShortPassword<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result exceedingLength(T failedValue, int max),
    @required Result empty(T failedValue),
    @required Result multiline(T failedValue),
    @required Result numberTooLarge(T failedValue, num max),
    @required Result listTooLong(T failedValue, int max),
    @required Result invalidEmail(T failedValue),
    @required Result shortPassword(T failedValue),
    @required Result invalidPhotoUrl(T failedValue),
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
    Result exceedingLength(T failedValue, int max),
    Result empty(T failedValue),
    Result multiline(T failedValue),
    Result numberTooLarge(T failedValue, num max),
    Result listTooLong(T failedValue, int max),
    Result invalidEmail(T failedValue),
    Result shortPassword(T failedValue),
    Result invalidPhotoUrl(T failedValue),
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
  _$ShortPasswordCopyWith<T, _ShortPassword<T>> get copyWith;
}

abstract class _$InvalidPhotoUrlCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$InvalidPhotoUrlCopyWith(
          _InvalidPhotoUrl<T> value, $Res Function(_InvalidPhotoUrl<T>) then) =
      __$InvalidPhotoUrlCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

class __$InvalidPhotoUrlCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$InvalidPhotoUrlCopyWith<T, $Res> {
  __$InvalidPhotoUrlCopyWithImpl(
      _InvalidPhotoUrl<T> _value, $Res Function(_InvalidPhotoUrl<T>) _then)
      : super(_value, (v) => _then(v as _InvalidPhotoUrl<T>));

  @override
  _InvalidPhotoUrl<T> get _value => super._value as _InvalidPhotoUrl<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(_InvalidPhotoUrl<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
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
  _$InvalidPhotoUrlCopyWith<T, _InvalidPhotoUrl<T>> get copyWith =>
      __$InvalidPhotoUrlCopyWithImpl<T, _InvalidPhotoUrl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result exceedingLength(T failedValue, int max),
    @required Result empty(T failedValue),
    @required Result multiline(T failedValue),
    @required Result numberTooLarge(T failedValue, num max),
    @required Result listTooLong(T failedValue, int max),
    @required Result invalidEmail(T failedValue),
    @required Result shortPassword(T failedValue),
    @required Result invalidPhotoUrl(T failedValue),
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
    Result exceedingLength(T failedValue, int max),
    Result empty(T failedValue),
    Result multiline(T failedValue),
    Result numberTooLarge(T failedValue, num max),
    Result listTooLong(T failedValue, int max),
    Result invalidEmail(T failedValue),
    Result shortPassword(T failedValue),
    Result invalidPhotoUrl(T failedValue),
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
  _$InvalidPhotoUrlCopyWith<T, _InvalidPhotoUrl<T>> get copyWith;
}
