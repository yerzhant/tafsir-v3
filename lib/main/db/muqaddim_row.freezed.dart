// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'muqaddim_row.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MuqaddimRow {

 MuqaddimType get type; MuqaddimContent get content;
/// Create a copy of MuqaddimRow
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MuqaddimRowCopyWith<MuqaddimRow> get copyWith => _$MuqaddimRowCopyWithImpl<MuqaddimRow>(this as MuqaddimRow, _$identity);

  /// Serializes this MuqaddimRow to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MuqaddimRow&&(identical(other.type, type) || other.type == type)&&(identical(other.content, content) || other.content == content));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,content);

@override
String toString() {
  return 'MuqaddimRow(type: $type, content: $content)';
}


}

/// @nodoc
abstract mixin class $MuqaddimRowCopyWith<$Res>  {
  factory $MuqaddimRowCopyWith(MuqaddimRow value, $Res Function(MuqaddimRow) _then) = _$MuqaddimRowCopyWithImpl;
@useResult
$Res call({
 MuqaddimType type, MuqaddimContent content
});




}
/// @nodoc
class _$MuqaddimRowCopyWithImpl<$Res>
    implements $MuqaddimRowCopyWith<$Res> {
  _$MuqaddimRowCopyWithImpl(this._self, this._then);

  final MuqaddimRow _self;
  final $Res Function(MuqaddimRow) _then;

/// Create a copy of MuqaddimRow
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = null,Object? content = null,}) {
  return _then(_self.copyWith(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as MuqaddimType,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as MuqaddimContent,
  ));
}

}


/// Adds pattern-matching-related methods to [MuqaddimRow].
extension MuqaddimRowPatterns on MuqaddimRow {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MuqaddimRow value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MuqaddimRow() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MuqaddimRow value)  $default,){
final _that = this;
switch (_that) {
case _MuqaddimRow():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MuqaddimRow value)?  $default,){
final _that = this;
switch (_that) {
case _MuqaddimRow() when $default != null:
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
case _MuqaddimRow() when $default != null:
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
case _MuqaddimRow():
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
case _MuqaddimRow() when $default != null:
return $default(_that.type,_that.content);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MuqaddimRow implements MuqaddimRow {
  const _MuqaddimRow(this.type, this.content);
  factory _MuqaddimRow.fromJson(Map<String, dynamic> json) => _$MuqaddimRowFromJson(json);

@override final  MuqaddimType type;
@override final  MuqaddimContent content;

/// Create a copy of MuqaddimRow
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MuqaddimRowCopyWith<_MuqaddimRow> get copyWith => __$MuqaddimRowCopyWithImpl<_MuqaddimRow>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MuqaddimRowToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MuqaddimRow&&(identical(other.type, type) || other.type == type)&&(identical(other.content, content) || other.content == content));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,content);

@override
String toString() {
  return 'MuqaddimRow(type: $type, content: $content)';
}


}

/// @nodoc
abstract mixin class _$MuqaddimRowCopyWith<$Res> implements $MuqaddimRowCopyWith<$Res> {
  factory _$MuqaddimRowCopyWith(_MuqaddimRow value, $Res Function(_MuqaddimRow) _then) = __$MuqaddimRowCopyWithImpl;
@override @useResult
$Res call({
 MuqaddimType type, MuqaddimContent content
});




}
/// @nodoc
class __$MuqaddimRowCopyWithImpl<$Res>
    implements _$MuqaddimRowCopyWith<$Res> {
  __$MuqaddimRowCopyWithImpl(this._self, this._then);

  final _MuqaddimRow _self;
  final $Res Function(_MuqaddimRow) _then;

/// Create a copy of MuqaddimRow
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = null,Object? content = null,}) {
  return _then(_MuqaddimRow(
null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as MuqaddimType,null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as MuqaddimContent,
  ));
}


}

// dart format on
