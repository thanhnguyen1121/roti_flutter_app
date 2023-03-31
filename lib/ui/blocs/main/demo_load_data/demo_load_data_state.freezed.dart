// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'demo_load_data_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DemoLoadDataState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<PostModel> models, bool enablePullUp) $default, {
    required TResult Function() loading,
    required TResult Function(dynamic error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(List<PostModel> models, bool enablePullUp)? $default, {
    TResult? Function()? loading,
    TResult? Function(dynamic error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<PostModel> models, bool enablePullUp)? $default, {
    TResult Function()? loading,
    TResult Function(dynamic error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(DemoLoadDataStateData value) $default, {
    required TResult Function(DemoLoadDataStateLoading value) loading,
    required TResult Function(DemoLoadDataStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(DemoLoadDataStateData value)? $default, {
    TResult? Function(DemoLoadDataStateLoading value)? loading,
    TResult? Function(DemoLoadDataStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(DemoLoadDataStateData value)? $default, {
    TResult Function(DemoLoadDataStateLoading value)? loading,
    TResult Function(DemoLoadDataStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DemoLoadDataStateCopyWith<$Res> {
  factory $DemoLoadDataStateCopyWith(
          DemoLoadDataState value, $Res Function(DemoLoadDataState) then) =
      _$DemoLoadDataStateCopyWithImpl<$Res, DemoLoadDataState>;
}

/// @nodoc
class _$DemoLoadDataStateCopyWithImpl<$Res, $Val extends DemoLoadDataState>
    implements $DemoLoadDataStateCopyWith<$Res> {
  _$DemoLoadDataStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$DemoLoadDataStateDataCopyWith<$Res> {
  factory _$$DemoLoadDataStateDataCopyWith(_$DemoLoadDataStateData value,
          $Res Function(_$DemoLoadDataStateData) then) =
      __$$DemoLoadDataStateDataCopyWithImpl<$Res>;
  @useResult
  $Res call({List<PostModel> models, bool enablePullUp});
}

/// @nodoc
class __$$DemoLoadDataStateDataCopyWithImpl<$Res>
    extends _$DemoLoadDataStateCopyWithImpl<$Res, _$DemoLoadDataStateData>
    implements _$$DemoLoadDataStateDataCopyWith<$Res> {
  __$$DemoLoadDataStateDataCopyWithImpl(_$DemoLoadDataStateData _value,
      $Res Function(_$DemoLoadDataStateData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? models = null,
    Object? enablePullUp = null,
  }) {
    return _then(_$DemoLoadDataStateData(
      null == models
          ? _value._models
          : models // ignore: cast_nullable_to_non_nullable
              as List<PostModel>,
      null == enablePullUp
          ? _value.enablePullUp
          : enablePullUp // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$DemoLoadDataStateData implements DemoLoadDataStateData {
  const _$DemoLoadDataStateData(final List<PostModel> models, this.enablePullUp)
      : _models = models;

  final List<PostModel> _models;
  @override
  List<PostModel> get models {
    if (_models is EqualUnmodifiableListView) return _models;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_models);
  }

  @override
  final bool enablePullUp;

  @override
  String toString() {
    return 'DemoLoadDataState(models: $models, enablePullUp: $enablePullUp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DemoLoadDataStateData &&
            const DeepCollectionEquality().equals(other._models, _models) &&
            (identical(other.enablePullUp, enablePullUp) ||
                other.enablePullUp == enablePullUp));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_models), enablePullUp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DemoLoadDataStateDataCopyWith<_$DemoLoadDataStateData> get copyWith =>
      __$$DemoLoadDataStateDataCopyWithImpl<_$DemoLoadDataStateData>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<PostModel> models, bool enablePullUp) $default, {
    required TResult Function() loading,
    required TResult Function(dynamic error) error,
  }) {
    return $default(models, enablePullUp);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(List<PostModel> models, bool enablePullUp)? $default, {
    TResult? Function()? loading,
    TResult? Function(dynamic error)? error,
  }) {
    return $default?.call(models, enablePullUp);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<PostModel> models, bool enablePullUp)? $default, {
    TResult Function()? loading,
    TResult Function(dynamic error)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(models, enablePullUp);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(DemoLoadDataStateData value) $default, {
    required TResult Function(DemoLoadDataStateLoading value) loading,
    required TResult Function(DemoLoadDataStateError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(DemoLoadDataStateData value)? $default, {
    TResult? Function(DemoLoadDataStateLoading value)? loading,
    TResult? Function(DemoLoadDataStateError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(DemoLoadDataStateData value)? $default, {
    TResult Function(DemoLoadDataStateLoading value)? loading,
    TResult Function(DemoLoadDataStateError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class DemoLoadDataStateData implements DemoLoadDataState {
  const factory DemoLoadDataStateData(
          final List<PostModel> models, final bool enablePullUp) =
      _$DemoLoadDataStateData;

  List<PostModel> get models;
  bool get enablePullUp;
  @JsonKey(ignore: true)
  _$$DemoLoadDataStateDataCopyWith<_$DemoLoadDataStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DemoLoadDataStateLoadingCopyWith<$Res> {
  factory _$$DemoLoadDataStateLoadingCopyWith(_$DemoLoadDataStateLoading value,
          $Res Function(_$DemoLoadDataStateLoading) then) =
      __$$DemoLoadDataStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DemoLoadDataStateLoadingCopyWithImpl<$Res>
    extends _$DemoLoadDataStateCopyWithImpl<$Res, _$DemoLoadDataStateLoading>
    implements _$$DemoLoadDataStateLoadingCopyWith<$Res> {
  __$$DemoLoadDataStateLoadingCopyWithImpl(_$DemoLoadDataStateLoading _value,
      $Res Function(_$DemoLoadDataStateLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DemoLoadDataStateLoading implements DemoLoadDataStateLoading {
  const _$DemoLoadDataStateLoading();

  @override
  String toString() {
    return 'DemoLoadDataState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DemoLoadDataStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<PostModel> models, bool enablePullUp) $default, {
    required TResult Function() loading,
    required TResult Function(dynamic error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(List<PostModel> models, bool enablePullUp)? $default, {
    TResult? Function()? loading,
    TResult? Function(dynamic error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<PostModel> models, bool enablePullUp)? $default, {
    TResult Function()? loading,
    TResult Function(dynamic error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(DemoLoadDataStateData value) $default, {
    required TResult Function(DemoLoadDataStateLoading value) loading,
    required TResult Function(DemoLoadDataStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(DemoLoadDataStateData value)? $default, {
    TResult? Function(DemoLoadDataStateLoading value)? loading,
    TResult? Function(DemoLoadDataStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(DemoLoadDataStateData value)? $default, {
    TResult Function(DemoLoadDataStateLoading value)? loading,
    TResult Function(DemoLoadDataStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class DemoLoadDataStateLoading implements DemoLoadDataState {
  const factory DemoLoadDataStateLoading() = _$DemoLoadDataStateLoading;
}

/// @nodoc
abstract class _$$DemoLoadDataStateErrorCopyWith<$Res> {
  factory _$$DemoLoadDataStateErrorCopyWith(_$DemoLoadDataStateError value,
          $Res Function(_$DemoLoadDataStateError) then) =
      __$$DemoLoadDataStateErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic error});
}

/// @nodoc
class __$$DemoLoadDataStateErrorCopyWithImpl<$Res>
    extends _$DemoLoadDataStateCopyWithImpl<$Res, _$DemoLoadDataStateError>
    implements _$$DemoLoadDataStateErrorCopyWith<$Res> {
  __$$DemoLoadDataStateErrorCopyWithImpl(_$DemoLoadDataStateError _value,
      $Res Function(_$DemoLoadDataStateError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$DemoLoadDataStateError(
      freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$DemoLoadDataStateError implements DemoLoadDataStateError {
  const _$DemoLoadDataStateError(this.error);

  @override
  final dynamic error;

  @override
  String toString() {
    return 'DemoLoadDataState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DemoLoadDataStateError &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DemoLoadDataStateErrorCopyWith<_$DemoLoadDataStateError> get copyWith =>
      __$$DemoLoadDataStateErrorCopyWithImpl<_$DemoLoadDataStateError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<PostModel> models, bool enablePullUp) $default, {
    required TResult Function() loading,
    required TResult Function(dynamic error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(List<PostModel> models, bool enablePullUp)? $default, {
    TResult? Function()? loading,
    TResult? Function(dynamic error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<PostModel> models, bool enablePullUp)? $default, {
    TResult Function()? loading,
    TResult Function(dynamic error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(DemoLoadDataStateData value) $default, {
    required TResult Function(DemoLoadDataStateLoading value) loading,
    required TResult Function(DemoLoadDataStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(DemoLoadDataStateData value)? $default, {
    TResult? Function(DemoLoadDataStateLoading value)? loading,
    TResult? Function(DemoLoadDataStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(DemoLoadDataStateData value)? $default, {
    TResult Function(DemoLoadDataStateLoading value)? loading,
    TResult Function(DemoLoadDataStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class DemoLoadDataStateError implements DemoLoadDataState {
  const factory DemoLoadDataStateError(final dynamic error) =
      _$DemoLoadDataStateError;

  dynamic get error;
  @JsonKey(ignore: true)
  _$$DemoLoadDataStateErrorCopyWith<_$DemoLoadDataStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
