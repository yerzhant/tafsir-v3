// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'theme_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ThemeState {

 bool get sameAsInSystem; bool get doNotSwitchOffScreen; AppTheme get theme; AppError? get error;
/// Create a copy of ThemeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ThemeStateCopyWith<ThemeState> get copyWith => _$ThemeStateCopyWithImpl<ThemeState>(this as ThemeState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ThemeState&&(identical(other.sameAsInSystem, sameAsInSystem) || other.sameAsInSystem == sameAsInSystem)&&(identical(other.doNotSwitchOffScreen, doNotSwitchOffScreen) || other.doNotSwitchOffScreen == doNotSwitchOffScreen)&&(identical(other.theme, theme) || other.theme == theme)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,sameAsInSystem,doNotSwitchOffScreen,theme,error);

@override
String toString() {
  return 'ThemeState(sameAsInSystem: $sameAsInSystem, doNotSwitchOffScreen: $doNotSwitchOffScreen, theme: $theme, error: $error)';
}


}

/// @nodoc
abstract mixin class $ThemeStateCopyWith<$Res>  {
  factory $ThemeStateCopyWith(ThemeState value, $Res Function(ThemeState) _then) = _$ThemeStateCopyWithImpl;
@useResult
$Res call({
 bool sameAsInSystem, bool doNotSwitchOffScreen, AppTheme theme, AppError? error
});


$AppErrorCopyWith<$Res>? get error;

}
/// @nodoc
class _$ThemeStateCopyWithImpl<$Res>
    implements $ThemeStateCopyWith<$Res> {
  _$ThemeStateCopyWithImpl(this._self, this._then);

  final ThemeState _self;
  final $Res Function(ThemeState) _then;

/// Create a copy of ThemeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? sameAsInSystem = null,Object? doNotSwitchOffScreen = null,Object? theme = null,Object? error = freezed,}) {
  return _then(_self.copyWith(
sameAsInSystem: null == sameAsInSystem ? _self.sameAsInSystem : sameAsInSystem // ignore: cast_nullable_to_non_nullable
as bool,doNotSwitchOffScreen: null == doNotSwitchOffScreen ? _self.doNotSwitchOffScreen : doNotSwitchOffScreen // ignore: cast_nullable_to_non_nullable
as bool,theme: null == theme ? _self.theme : theme // ignore: cast_nullable_to_non_nullable
as AppTheme,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as AppError?,
  ));
}
/// Create a copy of ThemeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AppErrorCopyWith<$Res>? get error {
    if (_self.error == null) {
    return null;
  }

  return $AppErrorCopyWith<$Res>(_self.error!, (value) {
    return _then(_self.copyWith(error: value));
  });
}
}


/// Adds pattern-matching-related methods to [ThemeState].
extension ThemeStatePatterns on ThemeState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Current value)?  current,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Current() when current != null:
return current(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Current value)  current,}){
final _that = this;
switch (_that) {
case _Current():
return current(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Current value)?  current,}){
final _that = this;
switch (_that) {
case _Current() when current != null:
return current(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( bool sameAsInSystem,  bool doNotSwitchOffScreen,  AppTheme theme,  AppError? error)?  current,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Current() when current != null:
return current(_that.sameAsInSystem,_that.doNotSwitchOffScreen,_that.theme,_that.error);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( bool sameAsInSystem,  bool doNotSwitchOffScreen,  AppTheme theme,  AppError? error)  current,}) {final _that = this;
switch (_that) {
case _Current():
return current(_that.sameAsInSystem,_that.doNotSwitchOffScreen,_that.theme,_that.error);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( bool sameAsInSystem,  bool doNotSwitchOffScreen,  AppTheme theme,  AppError? error)?  current,}) {final _that = this;
switch (_that) {
case _Current() when current != null:
return current(_that.sameAsInSystem,_that.doNotSwitchOffScreen,_that.theme,_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _Current implements ThemeState {
  const _Current(this.sameAsInSystem, this.doNotSwitchOffScreen, this.theme, this.error);
  

@override final  bool sameAsInSystem;
@override final  bool doNotSwitchOffScreen;
@override final  AppTheme theme;
@override final  AppError? error;

/// Create a copy of ThemeState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CurrentCopyWith<_Current> get copyWith => __$CurrentCopyWithImpl<_Current>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Current&&(identical(other.sameAsInSystem, sameAsInSystem) || other.sameAsInSystem == sameAsInSystem)&&(identical(other.doNotSwitchOffScreen, doNotSwitchOffScreen) || other.doNotSwitchOffScreen == doNotSwitchOffScreen)&&(identical(other.theme, theme) || other.theme == theme)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,sameAsInSystem,doNotSwitchOffScreen,theme,error);

@override
String toString() {
  return 'ThemeState.current(sameAsInSystem: $sameAsInSystem, doNotSwitchOffScreen: $doNotSwitchOffScreen, theme: $theme, error: $error)';
}


}

/// @nodoc
abstract mixin class _$CurrentCopyWith<$Res> implements $ThemeStateCopyWith<$Res> {
  factory _$CurrentCopyWith(_Current value, $Res Function(_Current) _then) = __$CurrentCopyWithImpl;
@override @useResult
$Res call({
 bool sameAsInSystem, bool doNotSwitchOffScreen, AppTheme theme, AppError? error
});


@override $AppErrorCopyWith<$Res>? get error;

}
/// @nodoc
class __$CurrentCopyWithImpl<$Res>
    implements _$CurrentCopyWith<$Res> {
  __$CurrentCopyWithImpl(this._self, this._then);

  final _Current _self;
  final $Res Function(_Current) _then;

/// Create a copy of ThemeState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? sameAsInSystem = null,Object? doNotSwitchOffScreen = null,Object? theme = null,Object? error = freezed,}) {
  return _then(_Current(
null == sameAsInSystem ? _self.sameAsInSystem : sameAsInSystem // ignore: cast_nullable_to_non_nullable
as bool,null == doNotSwitchOffScreen ? _self.doNotSwitchOffScreen : doNotSwitchOffScreen // ignore: cast_nullable_to_non_nullable
as bool,null == theme ? _self.theme : theme // ignore: cast_nullable_to_non_nullable
as AppTheme,freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as AppError?,
  ));
}

/// Create a copy of ThemeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AppErrorCopyWith<$Res>? get error {
    if (_self.error == null) {
    return null;
  }

  return $AppErrorCopyWith<$Res>(_self.error!, (value) {
    return _then(_self.copyWith(error: value));
  });
}
}

// dart format on
