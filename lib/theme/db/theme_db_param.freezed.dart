// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'theme_db_param.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ThemeDbParam {

 ThemeDbParamKey get key; String get value;
/// Create a copy of ThemeDbParam
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ThemeDbParamCopyWith<ThemeDbParam> get copyWith => _$ThemeDbParamCopyWithImpl<ThemeDbParam>(this as ThemeDbParam, _$identity);

  /// Serializes this ThemeDbParam to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ThemeDbParam&&(identical(other.key, key) || other.key == key)&&(identical(other.value, value) || other.value == value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,key,value);

@override
String toString() {
  return 'ThemeDbParam(key: $key, value: $value)';
}


}

/// @nodoc
abstract mixin class $ThemeDbParamCopyWith<$Res>  {
  factory $ThemeDbParamCopyWith(ThemeDbParam value, $Res Function(ThemeDbParam) _then) = _$ThemeDbParamCopyWithImpl;
@useResult
$Res call({
 ThemeDbParamKey key, String value
});




}
/// @nodoc
class _$ThemeDbParamCopyWithImpl<$Res>
    implements $ThemeDbParamCopyWith<$Res> {
  _$ThemeDbParamCopyWithImpl(this._self, this._then);

  final ThemeDbParam _self;
  final $Res Function(ThemeDbParam) _then;

/// Create a copy of ThemeDbParam
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? key = null,Object? value = null,}) {
  return _then(_self.copyWith(
key: null == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as ThemeDbParamKey,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ThemeDbParam].
extension ThemeDbParamPatterns on ThemeDbParam {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ThemeDbParam value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ThemeDbParam() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ThemeDbParam value)  $default,){
final _that = this;
switch (_that) {
case _ThemeDbParam():
return $default(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ThemeDbParam value)?  $default,){
final _that = this;
switch (_that) {
case _ThemeDbParam() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ThemeDbParamKey key,  String value)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ThemeDbParam() when $default != null:
return $default(_that.key,_that.value);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ThemeDbParamKey key,  String value)  $default,) {final _that = this;
switch (_that) {
case _ThemeDbParam():
return $default(_that.key,_that.value);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ThemeDbParamKey key,  String value)?  $default,) {final _that = this;
switch (_that) {
case _ThemeDbParam() when $default != null:
return $default(_that.key,_that.value);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ThemeDbParam implements ThemeDbParam {
  const _ThemeDbParam(this.key, this.value);
  factory _ThemeDbParam.fromJson(Map<String, dynamic> json) => _$ThemeDbParamFromJson(json);

@override final  ThemeDbParamKey key;
@override final  String value;

/// Create a copy of ThemeDbParam
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ThemeDbParamCopyWith<_ThemeDbParam> get copyWith => __$ThemeDbParamCopyWithImpl<_ThemeDbParam>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ThemeDbParamToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ThemeDbParam&&(identical(other.key, key) || other.key == key)&&(identical(other.value, value) || other.value == value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,key,value);

@override
String toString() {
  return 'ThemeDbParam(key: $key, value: $value)';
}


}

/// @nodoc
abstract mixin class _$ThemeDbParamCopyWith<$Res> implements $ThemeDbParamCopyWith<$Res> {
  factory _$ThemeDbParamCopyWith(_ThemeDbParam value, $Res Function(_ThemeDbParam) _then) = __$ThemeDbParamCopyWithImpl;
@override @useResult
$Res call({
 ThemeDbParamKey key, String value
});




}
/// @nodoc
class __$ThemeDbParamCopyWithImpl<$Res>
    implements _$ThemeDbParamCopyWith<$Res> {
  __$ThemeDbParamCopyWithImpl(this._self, this._then);

  final _ThemeDbParam _self;
  final $Res Function(_ThemeDbParam) _then;

/// Create a copy of ThemeDbParam
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? key = null,Object? value = null,}) {
  return _then(_ThemeDbParam(
null == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as ThemeDbParamKey,null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
