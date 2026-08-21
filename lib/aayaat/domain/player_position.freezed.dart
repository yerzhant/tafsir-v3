// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'player_position.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PlayerPosition {

 double get position; String get title;
/// Create a copy of PlayerPosition
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PlayerPositionCopyWith<PlayerPosition> get copyWith => _$PlayerPositionCopyWithImpl<PlayerPosition>(this as PlayerPosition, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PlayerPosition&&(identical(other.position, position) || other.position == position)&&(identical(other.title, title) || other.title == title));
}


@override
int get hashCode => Object.hash(runtimeType,position,title);

@override
String toString() {
  return 'PlayerPosition(position: $position, title: $title)';
}


}

/// @nodoc
abstract mixin class $PlayerPositionCopyWith<$Res>  {
  factory $PlayerPositionCopyWith(PlayerPosition value, $Res Function(PlayerPosition) _then) = _$PlayerPositionCopyWithImpl;
@useResult
$Res call({
 double position, String title
});




}
/// @nodoc
class _$PlayerPositionCopyWithImpl<$Res>
    implements $PlayerPositionCopyWith<$Res> {
  _$PlayerPositionCopyWithImpl(this._self, this._then);

  final PlayerPosition _self;
  final $Res Function(PlayerPosition) _then;

/// Create a copy of PlayerPosition
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? position = null,Object? title = null,}) {
  return _then(_self.copyWith(
position: null == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as double,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [PlayerPosition].
extension PlayerPositionPatterns on PlayerPosition {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PlayerPosition value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PlayerPosition() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PlayerPosition value)  $default,){
final _that = this;
switch (_that) {
case _PlayerPosition():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PlayerPosition value)?  $default,){
final _that = this;
switch (_that) {
case _PlayerPosition() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double position,  String title)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PlayerPosition() when $default != null:
return $default(_that.position,_that.title);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double position,  String title)  $default,) {final _that = this;
switch (_that) {
case _PlayerPosition():
return $default(_that.position,_that.title);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double position,  String title)?  $default,) {final _that = this;
switch (_that) {
case _PlayerPosition() when $default != null:
return $default(_that.position,_that.title);case _:
  return null;

}
}

}

/// @nodoc


class _PlayerPosition implements PlayerPosition {
  const _PlayerPosition(this.position, this.title);
  

@override final  double position;
@override final  String title;

/// Create a copy of PlayerPosition
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PlayerPositionCopyWith<_PlayerPosition> get copyWith => __$PlayerPositionCopyWithImpl<_PlayerPosition>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PlayerPosition&&(identical(other.position, position) || other.position == position)&&(identical(other.title, title) || other.title == title));
}


@override
int get hashCode => Object.hash(runtimeType,position,title);

@override
String toString() {
  return 'PlayerPosition(position: $position, title: $title)';
}


}

/// @nodoc
abstract mixin class _$PlayerPositionCopyWith<$Res> implements $PlayerPositionCopyWith<$Res> {
  factory _$PlayerPositionCopyWith(_PlayerPosition value, $Res Function(_PlayerPosition) _then) = __$PlayerPositionCopyWithImpl;
@override @useResult
$Res call({
 double position, String title
});




}
/// @nodoc
class __$PlayerPositionCopyWithImpl<$Res>
    implements _$PlayerPositionCopyWith<$Res> {
  __$PlayerPositionCopyWithImpl(this._self, this._then);

  final _PlayerPosition _self;
  final $Res Function(_PlayerPosition) _then;

/// Create a copy of PlayerPosition
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? position = null,Object? title = null,}) {
  return _then(_PlayerPosition(
null == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as double,null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
