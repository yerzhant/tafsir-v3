// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bookmark_row.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BookmarkRow {

 SurahNumber get surahNumber; AayahNumber get aayahNumber;
/// Create a copy of BookmarkRow
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BookmarkRowCopyWith<BookmarkRow> get copyWith => _$BookmarkRowCopyWithImpl<BookmarkRow>(this as BookmarkRow, _$identity);

  /// Serializes this BookmarkRow to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BookmarkRow&&(identical(other.surahNumber, surahNumber) || other.surahNumber == surahNumber)&&(identical(other.aayahNumber, aayahNumber) || other.aayahNumber == aayahNumber));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,surahNumber,aayahNumber);

@override
String toString() {
  return 'BookmarkRow(surahNumber: $surahNumber, aayahNumber: $aayahNumber)';
}


}

/// @nodoc
abstract mixin class $BookmarkRowCopyWith<$Res>  {
  factory $BookmarkRowCopyWith(BookmarkRow value, $Res Function(BookmarkRow) _then) = _$BookmarkRowCopyWithImpl;
@useResult
$Res call({
 SurahNumber surahNumber, AayahNumber aayahNumber
});




}
/// @nodoc
class _$BookmarkRowCopyWithImpl<$Res>
    implements $BookmarkRowCopyWith<$Res> {
  _$BookmarkRowCopyWithImpl(this._self, this._then);

  final BookmarkRow _self;
  final $Res Function(BookmarkRow) _then;

/// Create a copy of BookmarkRow
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? surahNumber = null,Object? aayahNumber = null,}) {
  return _then(_self.copyWith(
surahNumber: null == surahNumber ? _self.surahNumber : surahNumber // ignore: cast_nullable_to_non_nullable
as SurahNumber,aayahNumber: null == aayahNumber ? _self.aayahNumber : aayahNumber // ignore: cast_nullable_to_non_nullable
as AayahNumber,
  ));
}

}


/// Adds pattern-matching-related methods to [BookmarkRow].
extension BookmarkRowPatterns on BookmarkRow {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BookmarkRow value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BookmarkRow() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BookmarkRow value)  $default,){
final _that = this;
switch (_that) {
case _BookmarkRow():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BookmarkRow value)?  $default,){
final _that = this;
switch (_that) {
case _BookmarkRow() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( SurahNumber surahNumber,  AayahNumber aayahNumber)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BookmarkRow() when $default != null:
return $default(_that.surahNumber,_that.aayahNumber);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( SurahNumber surahNumber,  AayahNumber aayahNumber)  $default,) {final _that = this;
switch (_that) {
case _BookmarkRow():
return $default(_that.surahNumber,_that.aayahNumber);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( SurahNumber surahNumber,  AayahNumber aayahNumber)?  $default,) {final _that = this;
switch (_that) {
case _BookmarkRow() when $default != null:
return $default(_that.surahNumber,_that.aayahNumber);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: .snake)
class _BookmarkRow implements BookmarkRow {
  const _BookmarkRow(this.surahNumber, this.aayahNumber);
  factory _BookmarkRow.fromJson(Map<String, dynamic> json) => _$BookmarkRowFromJson(json);

@override final  SurahNumber surahNumber;
@override final  AayahNumber aayahNumber;

/// Create a copy of BookmarkRow
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BookmarkRowCopyWith<_BookmarkRow> get copyWith => __$BookmarkRowCopyWithImpl<_BookmarkRow>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BookmarkRowToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BookmarkRow&&(identical(other.surahNumber, surahNumber) || other.surahNumber == surahNumber)&&(identical(other.aayahNumber, aayahNumber) || other.aayahNumber == aayahNumber));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,surahNumber,aayahNumber);

@override
String toString() {
  return 'BookmarkRow(surahNumber: $surahNumber, aayahNumber: $aayahNumber)';
}


}

/// @nodoc
abstract mixin class _$BookmarkRowCopyWith<$Res> implements $BookmarkRowCopyWith<$Res> {
  factory _$BookmarkRowCopyWith(_BookmarkRow value, $Res Function(_BookmarkRow) _then) = __$BookmarkRowCopyWithImpl;
@override @useResult
$Res call({
 SurahNumber surahNumber, AayahNumber aayahNumber
});




}
/// @nodoc
class __$BookmarkRowCopyWithImpl<$Res>
    implements _$BookmarkRowCopyWith<$Res> {
  __$BookmarkRowCopyWithImpl(this._self, this._then);

  final _BookmarkRow _self;
  final $Res Function(_BookmarkRow) _then;

/// Create a copy of BookmarkRow
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? surahNumber = null,Object? aayahNumber = null,}) {
  return _then(_BookmarkRow(
null == surahNumber ? _self.surahNumber : surahNumber // ignore: cast_nullable_to_non_nullable
as SurahNumber,null == aayahNumber ? _self.aayahNumber : aayahNumber // ignore: cast_nullable_to_non_nullable
as AayahNumber,
  ));
}


}

// dart format on
