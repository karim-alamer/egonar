// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'server_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ServerFailures {
  String get msg => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String msg) connectionFailure,
    required TResult Function(String msg) unexpectedFailure,
    required TResult Function(String msg) noFoundFailure,
    required TResult Function(String msg) noDataChangedToBeUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String msg)? connectionFailure,
    TResult? Function(String msg)? unexpectedFailure,
    TResult? Function(String msg)? noFoundFailure,
    TResult? Function(String msg)? noDataChangedToBeUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String msg)? connectionFailure,
    TResult Function(String msg)? unexpectedFailure,
    TResult Function(String msg)? noFoundFailure,
    TResult Function(String msg)? noDataChangedToBeUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ConnectionFailure value) connectionFailure,
    required TResult Function(_UnexpectedFailure value) unexpectedFailure,
    required TResult Function(_NotFoundFailure value) noFoundFailure,
    required TResult Function(_NoDataChangedToBeUpdated value)
        noDataChangedToBeUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ConnectionFailure value)? connectionFailure,
    TResult? Function(_UnexpectedFailure value)? unexpectedFailure,
    TResult? Function(_NotFoundFailure value)? noFoundFailure,
    TResult? Function(_NoDataChangedToBeUpdated value)?
        noDataChangedToBeUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ConnectionFailure value)? connectionFailure,
    TResult Function(_UnexpectedFailure value)? unexpectedFailure,
    TResult Function(_NotFoundFailure value)? noFoundFailure,
    TResult Function(_NoDataChangedToBeUpdated value)? noDataChangedToBeUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ServerFailuresCopyWith<ServerFailures> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServerFailuresCopyWith<$Res> {
  factory $ServerFailuresCopyWith(
          ServerFailures value, $Res Function(ServerFailures) then) =
      _$ServerFailuresCopyWithImpl<$Res, ServerFailures>;
  @useResult
  $Res call({String msg});
}

/// @nodoc
class _$ServerFailuresCopyWithImpl<$Res, $Val extends ServerFailures>
    implements $ServerFailuresCopyWith<$Res> {
  _$ServerFailuresCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = null,
  }) {
    return _then(_value.copyWith(
      msg: null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConnectionFailureImplCopyWith<$Res>
    implements $ServerFailuresCopyWith<$Res> {
  factory _$$ConnectionFailureImplCopyWith(_$ConnectionFailureImpl value,
          $Res Function(_$ConnectionFailureImpl) then) =
      __$$ConnectionFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String msg});
}

/// @nodoc
class __$$ConnectionFailureImplCopyWithImpl<$Res>
    extends _$ServerFailuresCopyWithImpl<$Res, _$ConnectionFailureImpl>
    implements _$$ConnectionFailureImplCopyWith<$Res> {
  __$$ConnectionFailureImplCopyWithImpl(_$ConnectionFailureImpl _value,
      $Res Function(_$ConnectionFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = null,
  }) {
    return _then(_$ConnectionFailureImpl(
      msg: null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ConnectionFailureImpl
    with DiagnosticableTreeMixin
    implements _ConnectionFailure {
  const _$ConnectionFailureImpl(
      {this.msg = "Connection Error\n Please Check Your Internet Connection"});

  @override
  @JsonKey()
  final String msg;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ServerFailures.connectionFailure(msg: $msg)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ServerFailures.connectionFailure'))
      ..add(DiagnosticsProperty('msg', msg));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConnectionFailureImpl &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, msg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConnectionFailureImplCopyWith<_$ConnectionFailureImpl> get copyWith =>
      __$$ConnectionFailureImplCopyWithImpl<_$ConnectionFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String msg) connectionFailure,
    required TResult Function(String msg) unexpectedFailure,
    required TResult Function(String msg) noFoundFailure,
    required TResult Function(String msg) noDataChangedToBeUpdated,
  }) {
    return connectionFailure(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String msg)? connectionFailure,
    TResult? Function(String msg)? unexpectedFailure,
    TResult? Function(String msg)? noFoundFailure,
    TResult? Function(String msg)? noDataChangedToBeUpdated,
  }) {
    return connectionFailure?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String msg)? connectionFailure,
    TResult Function(String msg)? unexpectedFailure,
    TResult Function(String msg)? noFoundFailure,
    TResult Function(String msg)? noDataChangedToBeUpdated,
    required TResult orElse(),
  }) {
    if (connectionFailure != null) {
      return connectionFailure(msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ConnectionFailure value) connectionFailure,
    required TResult Function(_UnexpectedFailure value) unexpectedFailure,
    required TResult Function(_NotFoundFailure value) noFoundFailure,
    required TResult Function(_NoDataChangedToBeUpdated value)
        noDataChangedToBeUpdated,
  }) {
    return connectionFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ConnectionFailure value)? connectionFailure,
    TResult? Function(_UnexpectedFailure value)? unexpectedFailure,
    TResult? Function(_NotFoundFailure value)? noFoundFailure,
    TResult? Function(_NoDataChangedToBeUpdated value)?
        noDataChangedToBeUpdated,
  }) {
    return connectionFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ConnectionFailure value)? connectionFailure,
    TResult Function(_UnexpectedFailure value)? unexpectedFailure,
    TResult Function(_NotFoundFailure value)? noFoundFailure,
    TResult Function(_NoDataChangedToBeUpdated value)? noDataChangedToBeUpdated,
    required TResult orElse(),
  }) {
    if (connectionFailure != null) {
      return connectionFailure(this);
    }
    return orElse();
  }
}

abstract class _ConnectionFailure implements ServerFailures {
  const factory _ConnectionFailure({final String msg}) =
      _$ConnectionFailureImpl;

  @override
  String get msg;
  @override
  @JsonKey(ignore: true)
  _$$ConnectionFailureImplCopyWith<_$ConnectionFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnexpectedFailureImplCopyWith<$Res>
    implements $ServerFailuresCopyWith<$Res> {
  factory _$$UnexpectedFailureImplCopyWith(_$UnexpectedFailureImpl value,
          $Res Function(_$UnexpectedFailureImpl) then) =
      __$$UnexpectedFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String msg});
}

/// @nodoc
class __$$UnexpectedFailureImplCopyWithImpl<$Res>
    extends _$ServerFailuresCopyWithImpl<$Res, _$UnexpectedFailureImpl>
    implements _$$UnexpectedFailureImplCopyWith<$Res> {
  __$$UnexpectedFailureImplCopyWithImpl(_$UnexpectedFailureImpl _value,
      $Res Function(_$UnexpectedFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = null,
  }) {
    return _then(_$UnexpectedFailureImpl(
      msg: null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UnexpectedFailureImpl
    with DiagnosticableTreeMixin
    implements _UnexpectedFailure {
  const _$UnexpectedFailureImpl({this.msg = "Unexpected Error Happened"});

  @override
  @JsonKey()
  final String msg;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ServerFailures.unexpectedFailure(msg: $msg)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ServerFailures.unexpectedFailure'))
      ..add(DiagnosticsProperty('msg', msg));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnexpectedFailureImpl &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, msg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UnexpectedFailureImplCopyWith<_$UnexpectedFailureImpl> get copyWith =>
      __$$UnexpectedFailureImplCopyWithImpl<_$UnexpectedFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String msg) connectionFailure,
    required TResult Function(String msg) unexpectedFailure,
    required TResult Function(String msg) noFoundFailure,
    required TResult Function(String msg) noDataChangedToBeUpdated,
  }) {
    return unexpectedFailure(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String msg)? connectionFailure,
    TResult? Function(String msg)? unexpectedFailure,
    TResult? Function(String msg)? noFoundFailure,
    TResult? Function(String msg)? noDataChangedToBeUpdated,
  }) {
    return unexpectedFailure?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String msg)? connectionFailure,
    TResult Function(String msg)? unexpectedFailure,
    TResult Function(String msg)? noFoundFailure,
    TResult Function(String msg)? noDataChangedToBeUpdated,
    required TResult orElse(),
  }) {
    if (unexpectedFailure != null) {
      return unexpectedFailure(msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ConnectionFailure value) connectionFailure,
    required TResult Function(_UnexpectedFailure value) unexpectedFailure,
    required TResult Function(_NotFoundFailure value) noFoundFailure,
    required TResult Function(_NoDataChangedToBeUpdated value)
        noDataChangedToBeUpdated,
  }) {
    return unexpectedFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ConnectionFailure value)? connectionFailure,
    TResult? Function(_UnexpectedFailure value)? unexpectedFailure,
    TResult? Function(_NotFoundFailure value)? noFoundFailure,
    TResult? Function(_NoDataChangedToBeUpdated value)?
        noDataChangedToBeUpdated,
  }) {
    return unexpectedFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ConnectionFailure value)? connectionFailure,
    TResult Function(_UnexpectedFailure value)? unexpectedFailure,
    TResult Function(_NotFoundFailure value)? noFoundFailure,
    TResult Function(_NoDataChangedToBeUpdated value)? noDataChangedToBeUpdated,
    required TResult orElse(),
  }) {
    if (unexpectedFailure != null) {
      return unexpectedFailure(this);
    }
    return orElse();
  }
}

abstract class _UnexpectedFailure implements ServerFailures {
  const factory _UnexpectedFailure({final String msg}) =
      _$UnexpectedFailureImpl;

  @override
  String get msg;
  @override
  @JsonKey(ignore: true)
  _$$UnexpectedFailureImplCopyWith<_$UnexpectedFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NotFoundFailureImplCopyWith<$Res>
    implements $ServerFailuresCopyWith<$Res> {
  factory _$$NotFoundFailureImplCopyWith(_$NotFoundFailureImpl value,
          $Res Function(_$NotFoundFailureImpl) then) =
      __$$NotFoundFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String msg});
}

/// @nodoc
class __$$NotFoundFailureImplCopyWithImpl<$Res>
    extends _$ServerFailuresCopyWithImpl<$Res, _$NotFoundFailureImpl>
    implements _$$NotFoundFailureImplCopyWith<$Res> {
  __$$NotFoundFailureImplCopyWithImpl(
      _$NotFoundFailureImpl _value, $Res Function(_$NotFoundFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = null,
  }) {
    return _then(_$NotFoundFailureImpl(
      msg: null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NotFoundFailureImpl
    with DiagnosticableTreeMixin
    implements _NotFoundFailure {
  const _$NotFoundFailureImpl({this.msg = "Data Not Found"});

  @override
  @JsonKey()
  final String msg;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ServerFailures.noFoundFailure(msg: $msg)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ServerFailures.noFoundFailure'))
      ..add(DiagnosticsProperty('msg', msg));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotFoundFailureImpl &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, msg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NotFoundFailureImplCopyWith<_$NotFoundFailureImpl> get copyWith =>
      __$$NotFoundFailureImplCopyWithImpl<_$NotFoundFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String msg) connectionFailure,
    required TResult Function(String msg) unexpectedFailure,
    required TResult Function(String msg) noFoundFailure,
    required TResult Function(String msg) noDataChangedToBeUpdated,
  }) {
    return noFoundFailure(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String msg)? connectionFailure,
    TResult? Function(String msg)? unexpectedFailure,
    TResult? Function(String msg)? noFoundFailure,
    TResult? Function(String msg)? noDataChangedToBeUpdated,
  }) {
    return noFoundFailure?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String msg)? connectionFailure,
    TResult Function(String msg)? unexpectedFailure,
    TResult Function(String msg)? noFoundFailure,
    TResult Function(String msg)? noDataChangedToBeUpdated,
    required TResult orElse(),
  }) {
    if (noFoundFailure != null) {
      return noFoundFailure(msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ConnectionFailure value) connectionFailure,
    required TResult Function(_UnexpectedFailure value) unexpectedFailure,
    required TResult Function(_NotFoundFailure value) noFoundFailure,
    required TResult Function(_NoDataChangedToBeUpdated value)
        noDataChangedToBeUpdated,
  }) {
    return noFoundFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ConnectionFailure value)? connectionFailure,
    TResult? Function(_UnexpectedFailure value)? unexpectedFailure,
    TResult? Function(_NotFoundFailure value)? noFoundFailure,
    TResult? Function(_NoDataChangedToBeUpdated value)?
        noDataChangedToBeUpdated,
  }) {
    return noFoundFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ConnectionFailure value)? connectionFailure,
    TResult Function(_UnexpectedFailure value)? unexpectedFailure,
    TResult Function(_NotFoundFailure value)? noFoundFailure,
    TResult Function(_NoDataChangedToBeUpdated value)? noDataChangedToBeUpdated,
    required TResult orElse(),
  }) {
    if (noFoundFailure != null) {
      return noFoundFailure(this);
    }
    return orElse();
  }
}

abstract class _NotFoundFailure implements ServerFailures {
  const factory _NotFoundFailure({final String msg}) = _$NotFoundFailureImpl;

  @override
  String get msg;
  @override
  @JsonKey(ignore: true)
  _$$NotFoundFailureImplCopyWith<_$NotFoundFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NoDataChangedToBeUpdatedImplCopyWith<$Res>
    implements $ServerFailuresCopyWith<$Res> {
  factory _$$NoDataChangedToBeUpdatedImplCopyWith(
          _$NoDataChangedToBeUpdatedImpl value,
          $Res Function(_$NoDataChangedToBeUpdatedImpl) then) =
      __$$NoDataChangedToBeUpdatedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String msg});
}

/// @nodoc
class __$$NoDataChangedToBeUpdatedImplCopyWithImpl<$Res>
    extends _$ServerFailuresCopyWithImpl<$Res, _$NoDataChangedToBeUpdatedImpl>
    implements _$$NoDataChangedToBeUpdatedImplCopyWith<$Res> {
  __$$NoDataChangedToBeUpdatedImplCopyWithImpl(
      _$NoDataChangedToBeUpdatedImpl _value,
      $Res Function(_$NoDataChangedToBeUpdatedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = null,
  }) {
    return _then(_$NoDataChangedToBeUpdatedImpl(
      msg: null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NoDataChangedToBeUpdatedImpl
    with DiagnosticableTreeMixin
    implements _NoDataChangedToBeUpdated {
  const _$NoDataChangedToBeUpdatedImpl({this.msg = "No Data Changed"});

  @override
  @JsonKey()
  final String msg;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ServerFailures.noDataChangedToBeUpdated(msg: $msg)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'ServerFailures.noDataChangedToBeUpdated'))
      ..add(DiagnosticsProperty('msg', msg));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoDataChangedToBeUpdatedImpl &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, msg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NoDataChangedToBeUpdatedImplCopyWith<_$NoDataChangedToBeUpdatedImpl>
      get copyWith => __$$NoDataChangedToBeUpdatedImplCopyWithImpl<
          _$NoDataChangedToBeUpdatedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String msg) connectionFailure,
    required TResult Function(String msg) unexpectedFailure,
    required TResult Function(String msg) noFoundFailure,
    required TResult Function(String msg) noDataChangedToBeUpdated,
  }) {
    return noDataChangedToBeUpdated(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String msg)? connectionFailure,
    TResult? Function(String msg)? unexpectedFailure,
    TResult? Function(String msg)? noFoundFailure,
    TResult? Function(String msg)? noDataChangedToBeUpdated,
  }) {
    return noDataChangedToBeUpdated?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String msg)? connectionFailure,
    TResult Function(String msg)? unexpectedFailure,
    TResult Function(String msg)? noFoundFailure,
    TResult Function(String msg)? noDataChangedToBeUpdated,
    required TResult orElse(),
  }) {
    if (noDataChangedToBeUpdated != null) {
      return noDataChangedToBeUpdated(msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ConnectionFailure value) connectionFailure,
    required TResult Function(_UnexpectedFailure value) unexpectedFailure,
    required TResult Function(_NotFoundFailure value) noFoundFailure,
    required TResult Function(_NoDataChangedToBeUpdated value)
        noDataChangedToBeUpdated,
  }) {
    return noDataChangedToBeUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ConnectionFailure value)? connectionFailure,
    TResult? Function(_UnexpectedFailure value)? unexpectedFailure,
    TResult? Function(_NotFoundFailure value)? noFoundFailure,
    TResult? Function(_NoDataChangedToBeUpdated value)?
        noDataChangedToBeUpdated,
  }) {
    return noDataChangedToBeUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ConnectionFailure value)? connectionFailure,
    TResult Function(_UnexpectedFailure value)? unexpectedFailure,
    TResult Function(_NotFoundFailure value)? noFoundFailure,
    TResult Function(_NoDataChangedToBeUpdated value)? noDataChangedToBeUpdated,
    required TResult orElse(),
  }) {
    if (noDataChangedToBeUpdated != null) {
      return noDataChangedToBeUpdated(this);
    }
    return orElse();
  }
}

abstract class _NoDataChangedToBeUpdated implements ServerFailures {
  const factory _NoDataChangedToBeUpdated({final String msg}) =
      _$NoDataChangedToBeUpdatedImpl;

  @override
  String get msg;
  @override
  @JsonKey(ignore: true)
  _$$NoDataChangedToBeUpdatedImplCopyWith<_$NoDataChangedToBeUpdatedImpl>
      get copyWith => throw _privateConstructorUsedError;
}
