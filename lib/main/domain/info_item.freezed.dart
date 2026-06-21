// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'info_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$InfoItem {

 InfoItemType get type; InfoName get name;
/// Create a copy of InfoItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InfoItemCopyWith<InfoItem> get copyWith => _$InfoItemCopyWithImpl<InfoItem>(this as InfoItem, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InfoItem&&(identical(other.type, type) || other.type == type)&&(identical(other.name, name) || other.name == name));
}


@override
int get hashCode => Object.hash(runtimeType,type,name);

@override
String toString() {
  return 'InfoItem(type: $type, name: $name)';
}


}

/// @nodoc
abstract mixin class $InfoItemCopyWith<$Res>  {
  factory $InfoItemCopyWith(InfoItem value, $Res Function(InfoItem) _then) = _$InfoItemCopyWithImpl;
@useResult
$Res call({
 InfoItemType type, InfoName name
});




}
/// @nodoc
class _$InfoItemCopyWithImpl<$Res>
    implements $InfoItemCopyWith<$Res> {
  _$InfoItemCopyWithImpl(this._self, this._then);

  final InfoItem _self;
  final $Res Function(InfoItem) _then;

/// Create a copy of InfoItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = null,Object? name = null,}) {
  return _then(_self.copyWith(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as InfoItemType,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as InfoName,
  ));
}

}


/// Adds pattern-matching-related methods to [InfoItem].
extension InfoItemPatterns on InfoItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _InfoItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InfoItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _InfoItem value)  $default,){
final _that = this;
switch (_that) {
case _InfoItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _InfoItem value)?  $default,){
final _that = this;
switch (_that) {
case _InfoItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( InfoItemType type,  InfoName name)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InfoItem() when $default != null:
return $default(_that.type,_that.name);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( InfoItemType type,  InfoName name)  $default,) {final _that = this;
switch (_that) {
case _InfoItem():
return $default(_that.type,_that.name);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( InfoItemType type,  InfoName name)?  $default,) {final _that = this;
switch (_that) {
case _InfoItem() when $default != null:
return $default(_that.type,_that.name);case _:
  return null;

}
}

}

/// @nodoc


class _InfoItem implements InfoItem {
  const _InfoItem(this.type, this.name);
  

@override final  InfoItemType type;
@override final  InfoName name;

/// Create a copy of InfoItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InfoItemCopyWith<_InfoItem> get copyWith => __$InfoItemCopyWithImpl<_InfoItem>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InfoItem&&(identical(other.type, type) || other.type == type)&&(identical(other.name, name) || other.name == name));
}


@override
int get hashCode => Object.hash(runtimeType,type,name);

@override
String toString() {
  return 'InfoItem(type: $type, name: $name)';
}


}

/// @nodoc
abstract mixin class _$InfoItemCopyWith<$Res> implements $InfoItemCopyWith<$Res> {
  factory _$InfoItemCopyWith(_InfoItem value, $Res Function(_InfoItem) _then) = __$InfoItemCopyWithImpl;
@override @useResult
$Res call({
 InfoItemType type, InfoName name
});




}
/// @nodoc
class __$InfoItemCopyWithImpl<$Res>
    implements _$InfoItemCopyWith<$Res> {
  __$InfoItemCopyWithImpl(this._self, this._then);

  final _InfoItem _self;
  final $Res Function(_InfoItem) _then;

/// Create a copy of InfoItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = null,Object? name = null,}) {
  return _then(_InfoItem(
null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as InfoItemType,null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as InfoName,
  ));
}


}

// dart format on
