// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'muqaddim.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Muqaddim {

 MuqaddimType get type; MuqaddimContent get content;
/// Create a copy of Muqaddim
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MuqaddimCopyWith<Muqaddim> get copyWith => _$MuqaddimCopyWithImpl<Muqaddim>(this as Muqaddim, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Muqaddim&&(identical(other.type, type) || other.type == type)&&(identical(other.content, content) || other.content == content));
}


@override
int get hashCode => Object.hash(runtimeType,type,content);

@override
String toString() {
  return 'Muqaddim(type: $type, content: $content)';
}


}

/// @nodoc
abstract mixin class $MuqaddimCopyWith<$Res>  {
  factory $MuqaddimCopyWith(Muqaddim value, $Res Function(Muqaddim) _then) = _$MuqaddimCopyWithImpl;
@useResult
$Res call({
 MuqaddimType type, MuqaddimContent content
});




}
/// @nodoc
class _$MuqaddimCopyWithImpl<$Res>
    implements $MuqaddimCopyWith<$Res> {
  _$MuqaddimCopyWithImpl(this._self, this._then);

  final Muqaddim _self;
  final $Res Function(Muqaddim) _then;

/// Create a copy of Muqaddim
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = null,Object? content = null,}) {
  return _then(_self.copyWith(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as MuqaddimType,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as MuqaddimContent,
  ));
}

}


/// Adds pattern-matching-related methods to [Muqaddim].
extension MuqaddimPatterns on Muqaddim {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Muqaddim value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Muqaddim() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Muqaddim value)  $default,){
final _that = this;
switch (_that) {
case _Muqaddim():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Muqaddim value)?  $default,){
final _that = this;
switch (_that) {
case _Muqaddim() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( MuqaddimType type,  MuqaddimContent content)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Muqaddim() when $default != null:
return $default(_that.type,_that.content);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( MuqaddimType type,  MuqaddimContent content)  $default,) {final _that = this;
switch (_that) {
case _Muqaddim():
return $default(_that.type,_that.content);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( MuqaddimType type,  MuqaddimContent content)?  $default,) {final _that = this;
switch (_that) {
case _Muqaddim() when $default != null:
return $default(_that.type,_that.content);case _:
  return null;

}
}

}

/// @nodoc


class _Muqaddim implements Muqaddim {
  const _Muqaddim(this.type, this.content);
  

@override final  MuqaddimType type;
@override final  MuqaddimContent content;

/// Create a copy of Muqaddim
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MuqaddimCopyWith<_Muqaddim> get copyWith => __$MuqaddimCopyWithImpl<_Muqaddim>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Muqaddim&&(identical(other.type, type) || other.type == type)&&(identical(other.content, content) || other.content == content));
}


@override
int get hashCode => Object.hash(runtimeType,type,content);

@override
String toString() {
  return 'Muqaddim(type: $type, content: $content)';
}


}

/// @nodoc
abstract mixin class _$MuqaddimCopyWith<$Res> implements $MuqaddimCopyWith<$Res> {
  factory _$MuqaddimCopyWith(_Muqaddim value, $Res Function(_Muqaddim) _then) = __$MuqaddimCopyWithImpl;
@override @useResult
$Res call({
 MuqaddimType type, MuqaddimContent content
});




}
/// @nodoc
class __$MuqaddimCopyWithImpl<$Res>
    implements _$MuqaddimCopyWith<$Res> {
  __$MuqaddimCopyWithImpl(this._self, this._then);

  final _Muqaddim _self;
  final $Res Function(_Muqaddim) _then;

/// Create a copy of Muqaddim
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = null,Object? content = null,}) {
  return _then(_Muqaddim(
null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as MuqaddimType,null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as MuqaddimContent,
  ));
}


}

// dart format on
