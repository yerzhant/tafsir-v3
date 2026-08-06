// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'last_read_row.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LastReadRow {

 int get timestamp; SurahNumber get surahNumber; AayahNumber get aayahNumber; double get alignment;
/// Create a copy of LastReadRow
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LastReadRowCopyWith<LastReadRow> get copyWith => _$LastReadRowCopyWithImpl<LastReadRow>(this as LastReadRow, _$identity);

  /// Serializes this LastReadRow to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LastReadRow&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.surahNumber, surahNumber) || other.surahNumber == surahNumber)&&(identical(other.aayahNumber, aayahNumber) || other.aayahNumber == aayahNumber)&&(identical(other.alignment, alignment) || other.alignment == alignment));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,timestamp,surahNumber,aayahNumber,alignment);

@override
String toString() {
  return 'LastReadRow(timestamp: $timestamp, surahNumber: $surahNumber, aayahNumber: $aayahNumber, alignment: $alignment)';
}


}

/// @nodoc
abstract mixin class $LastReadRowCopyWith<$Res>  {
  factory $LastReadRowCopyWith(LastReadRow value, $Res Function(LastReadRow) _then) = _$LastReadRowCopyWithImpl;
@useResult
$Res call({
 int timestamp, SurahNumber surahNumber, AayahNumber aayahNumber, double alignment
});




}
/// @nodoc
class _$LastReadRowCopyWithImpl<$Res>
    implements $LastReadRowCopyWith<$Res> {
  _$LastReadRowCopyWithImpl(this._self, this._then);

  final LastReadRow _self;
  final $Res Function(LastReadRow) _then;

/// Create a copy of LastReadRow
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? timestamp = null,Object? surahNumber = null,Object? aayahNumber = null,Object? alignment = null,}) {
  return _then(_self.copyWith(
timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as int,surahNumber: null == surahNumber ? _self.surahNumber : surahNumber // ignore: cast_nullable_to_non_nullable
as SurahNumber,aayahNumber: null == aayahNumber ? _self.aayahNumber : aayahNumber // ignore: cast_nullable_to_non_nullable
as AayahNumber,alignment: null == alignment ? _self.alignment : alignment // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [LastReadRow].
extension LastReadRowPatterns on LastReadRow {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LastReadRow value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LastReadRow() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LastReadRow value)  $default,){
final _that = this;
switch (_that) {
case _LastReadRow():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LastReadRow value)?  $default,){
final _that = this;
switch (_that) {
case _LastReadRow() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int timestamp,  SurahNumber surahNumber,  AayahNumber aayahNumber,  double alignment)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LastReadRow() when $default != null:
return $default(_that.timestamp,_that.surahNumber,_that.aayahNumber,_that.alignment);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int timestamp,  SurahNumber surahNumber,  AayahNumber aayahNumber,  double alignment)  $default,) {final _that = this;
switch (_that) {
case _LastReadRow():
return $default(_that.timestamp,_that.surahNumber,_that.aayahNumber,_that.alignment);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int timestamp,  SurahNumber surahNumber,  AayahNumber aayahNumber,  double alignment)?  $default,) {final _that = this;
switch (_that) {
case _LastReadRow() when $default != null:
return $default(_that.timestamp,_that.surahNumber,_that.aayahNumber,_that.alignment);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: .snake)
class _LastReadRow extends LastReadRow {
  const _LastReadRow(this.timestamp, this.surahNumber, this.aayahNumber, this.alignment): super._();
  factory _LastReadRow.fromJson(Map<String, dynamic> json) => _$LastReadRowFromJson(json);

@override final  int timestamp;
@override final  SurahNumber surahNumber;
@override final  AayahNumber aayahNumber;
@override final  double alignment;

/// Create a copy of LastReadRow
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LastReadRowCopyWith<_LastReadRow> get copyWith => __$LastReadRowCopyWithImpl<_LastReadRow>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LastReadRowToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LastReadRow&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.surahNumber, surahNumber) || other.surahNumber == surahNumber)&&(identical(other.aayahNumber, aayahNumber) || other.aayahNumber == aayahNumber)&&(identical(other.alignment, alignment) || other.alignment == alignment));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,timestamp,surahNumber,aayahNumber,alignment);

@override
String toString() {
  return 'LastReadRow(timestamp: $timestamp, surahNumber: $surahNumber, aayahNumber: $aayahNumber, alignment: $alignment)';
}


}

/// @nodoc
abstract mixin class _$LastReadRowCopyWith<$Res> implements $LastReadRowCopyWith<$Res> {
  factory _$LastReadRowCopyWith(_LastReadRow value, $Res Function(_LastReadRow) _then) = __$LastReadRowCopyWithImpl;
@override @useResult
$Res call({
 int timestamp, SurahNumber surahNumber, AayahNumber aayahNumber, double alignment
});




}
/// @nodoc
class __$LastReadRowCopyWithImpl<$Res>
    implements _$LastReadRowCopyWith<$Res> {
  __$LastReadRowCopyWithImpl(this._self, this._then);

  final _LastReadRow _self;
  final $Res Function(_LastReadRow) _then;

/// Create a copy of LastReadRow
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? timestamp = null,Object? surahNumber = null,Object? aayahNumber = null,Object? alignment = null,}) {
  return _then(_LastReadRow(
null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as int,null == surahNumber ? _self.surahNumber : surahNumber // ignore: cast_nullable_to_non_nullable
as SurahNumber,null == aayahNumber ? _self.aayahNumber : aayahNumber // ignore: cast_nullable_to_non_nullable
as AayahNumber,null == alignment ? _self.alignment : alignment // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
