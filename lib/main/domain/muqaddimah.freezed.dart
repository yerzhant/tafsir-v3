// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'muqaddimah.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Muqaddimah {

 MuqaddimahType get type; MuqaddimahTitle get title; MuqaddimahContent get content;
/// Create a copy of Muqaddimah
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MuqaddimahCopyWith<Muqaddimah> get copyWith => _$MuqaddimahCopyWithImpl<Muqaddimah>(this as Muqaddimah, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Muqaddimah&&(identical(other.type, type) || other.type == type)&&(identical(other.title, title) || other.title == title)&&(identical(other.content, content) || other.content == content));
}


@override
int get hashCode => Object.hash(runtimeType,type,title,content);

@override
String toString() {
  return 'Muqaddimah(type: $type, title: $title, content: $content)';
}


}

/// @nodoc
abstract mixin class $MuqaddimahCopyWith<$Res>  {
  factory $MuqaddimahCopyWith(Muqaddimah value, $Res Function(Muqaddimah) _then) = _$MuqaddimahCopyWithImpl;
@useResult
$Res call({
 MuqaddimahType type, MuqaddimahTitle title, MuqaddimahContent content
});




}
/// @nodoc
class _$MuqaddimahCopyWithImpl<$Res>
    implements $MuqaddimahCopyWith<$Res> {
  _$MuqaddimahCopyWithImpl(this._self, this._then);

  final Muqaddimah _self;
  final $Res Function(Muqaddimah) _then;

/// Create a copy of Muqaddimah
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = null,Object? title = null,Object? content = null,}) {
  return _then(_self.copyWith(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as MuqaddimahType,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as MuqaddimahTitle,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as MuqaddimahContent,
  ));
}

}


/// Adds pattern-matching-related methods to [Muqaddimah].
extension MuqaddimahPatterns on Muqaddimah {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Muqaddimah value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Muqaddimah() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Muqaddimah value)  $default,){
final _that = this;
switch (_that) {
case _Muqaddimah():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Muqaddimah value)?  $default,){
final _that = this;
switch (_that) {
case _Muqaddimah() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( MuqaddimahType type,  MuqaddimahTitle title,  MuqaddimahContent content)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Muqaddimah() when $default != null:
return $default(_that.type,_that.title,_that.content);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( MuqaddimahType type,  MuqaddimahTitle title,  MuqaddimahContent content)  $default,) {final _that = this;
switch (_that) {
case _Muqaddimah():
return $default(_that.type,_that.title,_that.content);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( MuqaddimahType type,  MuqaddimahTitle title,  MuqaddimahContent content)?  $default,) {final _that = this;
switch (_that) {
case _Muqaddimah() when $default != null:
return $default(_that.type,_that.title,_that.content);case _:
  return null;

}
}

}

/// @nodoc


class _Muqaddimah implements Muqaddimah {
  const _Muqaddimah(this.type, this.title, this.content);
  

@override final  MuqaddimahType type;
@override final  MuqaddimahTitle title;
@override final  MuqaddimahContent content;

/// Create a copy of Muqaddimah
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MuqaddimahCopyWith<_Muqaddimah> get copyWith => __$MuqaddimahCopyWithImpl<_Muqaddimah>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Muqaddimah&&(identical(other.type, type) || other.type == type)&&(identical(other.title, title) || other.title == title)&&(identical(other.content, content) || other.content == content));
}


@override
int get hashCode => Object.hash(runtimeType,type,title,content);

@override
String toString() {
  return 'Muqaddimah(type: $type, title: $title, content: $content)';
}


}

/// @nodoc
abstract mixin class _$MuqaddimahCopyWith<$Res> implements $MuqaddimahCopyWith<$Res> {
  factory _$MuqaddimahCopyWith(_Muqaddimah value, $Res Function(_Muqaddimah) _then) = __$MuqaddimahCopyWithImpl;
@override @useResult
$Res call({
 MuqaddimahType type, MuqaddimahTitle title, MuqaddimahContent content
});




}
/// @nodoc
class __$MuqaddimahCopyWithImpl<$Res>
    implements _$MuqaddimahCopyWith<$Res> {
  __$MuqaddimahCopyWithImpl(this._self, this._then);

  final _Muqaddimah _self;
  final $Res Function(_Muqaddimah) _then;

/// Create a copy of Muqaddimah
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = null,Object? title = null,Object? content = null,}) {
  return _then(_Muqaddimah(
null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as MuqaddimahType,null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as MuqaddimahTitle,null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as MuqaddimahContent,
  ));
}


}

// dart format on
