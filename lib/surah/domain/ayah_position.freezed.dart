// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ayah_position.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AyahPosition {

 int get number; double get alignment;
/// Create a copy of AyahPosition
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AyahPositionCopyWith<AyahPosition> get copyWith => _$AyahPositionCopyWithImpl<AyahPosition>(this as AyahPosition, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AyahPosition&&(identical(other.number, number) || other.number == number)&&(identical(other.alignment, alignment) || other.alignment == alignment));
}


@override
int get hashCode => Object.hash(runtimeType,number,alignment);

@override
String toString() {
  return 'AyahPosition(number: $number, alignment: $alignment)';
}


}

/// @nodoc
abstract mixin class $AyahPositionCopyWith<$Res>  {
  factory $AyahPositionCopyWith(AyahPosition value, $Res Function(AyahPosition) _then) = _$AyahPositionCopyWithImpl;
@useResult
$Res call({
 int number, double alignment
});




}
/// @nodoc
class _$AyahPositionCopyWithImpl<$Res>
    implements $AyahPositionCopyWith<$Res> {
  _$AyahPositionCopyWithImpl(this._self, this._then);

  final AyahPosition _self;
  final $Res Function(AyahPosition) _then;

/// Create a copy of AyahPosition
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? number = null,Object? alignment = null,}) {
  return _then(_self.copyWith(
number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as int,alignment: null == alignment ? _self.alignment : alignment // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [AyahPosition].
extension AyahPositionPatterns on AyahPosition {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AyahPosition value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AyahPosition() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AyahPosition value)  $default,){
final _that = this;
switch (_that) {
case _AyahPosition():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AyahPosition value)?  $default,){
final _that = this;
switch (_that) {
case _AyahPosition() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int number,  double alignment)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AyahPosition() when $default != null:
return $default(_that.number,_that.alignment);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int number,  double alignment)  $default,) {final _that = this;
switch (_that) {
case _AyahPosition():
return $default(_that.number,_that.alignment);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int number,  double alignment)?  $default,) {final _that = this;
switch (_that) {
case _AyahPosition() when $default != null:
return $default(_that.number,_that.alignment);case _:
  return null;

}
}

}

/// @nodoc


class _AyahPosition implements AyahPosition {
  const _AyahPosition(this.number, this.alignment);
  

@override final  int number;
@override final  double alignment;

/// Create a copy of AyahPosition
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AyahPositionCopyWith<_AyahPosition> get copyWith => __$AyahPositionCopyWithImpl<_AyahPosition>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AyahPosition&&(identical(other.number, number) || other.number == number)&&(identical(other.alignment, alignment) || other.alignment == alignment));
}


@override
int get hashCode => Object.hash(runtimeType,number,alignment);

@override
String toString() {
  return 'AyahPosition(number: $number, alignment: $alignment)';
}


}

/// @nodoc
abstract mixin class _$AyahPositionCopyWith<$Res> implements $AyahPositionCopyWith<$Res> {
  factory _$AyahPositionCopyWith(_AyahPosition value, $Res Function(_AyahPosition) _then) = __$AyahPositionCopyWithImpl;
@override @useResult
$Res call({
 int number, double alignment
});




}
/// @nodoc
class __$AyahPositionCopyWithImpl<$Res>
    implements _$AyahPositionCopyWith<$Res> {
  __$AyahPositionCopyWithImpl(this._self, this._then);

  final _AyahPosition _self;
  final $Res Function(_AyahPosition) _then;

/// Create a copy of AyahPosition
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? number = null,Object? alignment = null,}) {
  return _then(_AyahPosition(
null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as int,null == alignment ? _self.alignment : alignment // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
