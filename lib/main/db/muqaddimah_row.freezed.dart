// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'muqaddimah_row.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MuqaddimahRow {

 MuqaddimahType get type; MuqaddimahContent get content;
/// Create a copy of MuqaddimahRow
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MuqaddimahRowCopyWith<MuqaddimahRow> get copyWith => _$MuqaddimahRowCopyWithImpl<MuqaddimahRow>(this as MuqaddimahRow, _$identity);

  /// Serializes this MuqaddimahRow to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MuqaddimahRow&&(identical(other.type, type) || other.type == type)&&(identical(other.content, content) || other.content == content));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,content);

@override
String toString() {
  return 'MuqaddimahRow(type: $type, content: $content)';
}


}

/// @nodoc
abstract mixin class $MuqaddimahRowCopyWith<$Res>  {
  factory $MuqaddimahRowCopyWith(MuqaddimahRow value, $Res Function(MuqaddimahRow) _then) = _$MuqaddimahRowCopyWithImpl;
@useResult
$Res call({
 MuqaddimahType type, MuqaddimahContent content
});




}
/// @nodoc
class _$MuqaddimahRowCopyWithImpl<$Res>
    implements $MuqaddimahRowCopyWith<$Res> {
  _$MuqaddimahRowCopyWithImpl(this._self, this._then);

  final MuqaddimahRow _self;
  final $Res Function(MuqaddimahRow) _then;

/// Create a copy of MuqaddimahRow
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = null,Object? content = null,}) {
  return _then(_self.copyWith(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as MuqaddimahType,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as MuqaddimahContent,
  ));
}

}


/// Adds pattern-matching-related methods to [MuqaddimahRow].
extension MuqaddimahRowPatterns on MuqaddimahRow {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MuqaddimahRow value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MuqaddimahRow() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MuqaddimahRow value)  $default,){
final _that = this;
switch (_that) {
case _MuqaddimahRow():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MuqaddimahRow value)?  $default,){
final _that = this;
switch (_that) {
case _MuqaddimahRow() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( MuqaddimahType type,  MuqaddimahContent content)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MuqaddimahRow() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( MuqaddimahType type,  MuqaddimahContent content)  $default,) {final _that = this;
switch (_that) {
case _MuqaddimahRow():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( MuqaddimahType type,  MuqaddimahContent content)?  $default,) {final _that = this;
switch (_that) {
case _MuqaddimahRow() when $default != null:
return $default(_that.type,_that.content);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MuqaddimahRow extends MuqaddimahRow {
  const _MuqaddimahRow(this.type, this.content): super._();
  factory _MuqaddimahRow.fromJson(Map<String, dynamic> json) => _$MuqaddimahRowFromJson(json);

@override final  MuqaddimahType type;
@override final  MuqaddimahContent content;

/// Create a copy of MuqaddimahRow
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MuqaddimahRowCopyWith<_MuqaddimahRow> get copyWith => __$MuqaddimahRowCopyWithImpl<_MuqaddimahRow>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MuqaddimahRowToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MuqaddimahRow&&(identical(other.type, type) || other.type == type)&&(identical(other.content, content) || other.content == content));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,content);

@override
String toString() {
  return 'MuqaddimahRow(type: $type, content: $content)';
}


}

/// @nodoc
abstract mixin class _$MuqaddimahRowCopyWith<$Res> implements $MuqaddimahRowCopyWith<$Res> {
  factory _$MuqaddimahRowCopyWith(_MuqaddimahRow value, $Res Function(_MuqaddimahRow) _then) = __$MuqaddimahRowCopyWithImpl;
@override @useResult
$Res call({
 MuqaddimahType type, MuqaddimahContent content
});




}
/// @nodoc
class __$MuqaddimahRowCopyWithImpl<$Res>
    implements _$MuqaddimahRowCopyWith<$Res> {
  __$MuqaddimahRowCopyWithImpl(this._self, this._then);

  final _MuqaddimahRow _self;
  final $Res Function(_MuqaddimahRow) _then;

/// Create a copy of MuqaddimahRow
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = null,Object? content = null,}) {
  return _then(_MuqaddimahRow(
null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as MuqaddimahType,null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as MuqaddimahContent,
  ));
}


}

// dart format on
