// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'djuz_row.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DjuzRow {

 DjuzNumber get number; DjuzPlace get place; SurahNumber get fromSuran; AayahNumber get fromAayah; SurahNumber get toSurah; AayahNumber get toAayah;
/// Create a copy of DjuzRow
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DjuzRowCopyWith<DjuzRow> get copyWith => _$DjuzRowCopyWithImpl<DjuzRow>(this as DjuzRow, _$identity);

  /// Serializes this DjuzRow to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DjuzRow&&(identical(other.number, number) || other.number == number)&&(identical(other.place, place) || other.place == place)&&(identical(other.fromSuran, fromSuran) || other.fromSuran == fromSuran)&&(identical(other.fromAayah, fromAayah) || other.fromAayah == fromAayah)&&(identical(other.toSurah, toSurah) || other.toSurah == toSurah)&&(identical(other.toAayah, toAayah) || other.toAayah == toAayah));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,number,place,fromSuran,fromAayah,toSurah,toAayah);

@override
String toString() {
  return 'DjuzRow(number: $number, place: $place, fromSuran: $fromSuran, fromAayah: $fromAayah, toSurah: $toSurah, toAayah: $toAayah)';
}


}

/// @nodoc
abstract mixin class $DjuzRowCopyWith<$Res>  {
  factory $DjuzRowCopyWith(DjuzRow value, $Res Function(DjuzRow) _then) = _$DjuzRowCopyWithImpl;
@useResult
$Res call({
 DjuzNumber number, DjuzPlace place, SurahNumber fromSuran, AayahNumber fromAayah, SurahNumber toSurah, AayahNumber toAayah
});




}
/// @nodoc
class _$DjuzRowCopyWithImpl<$Res>
    implements $DjuzRowCopyWith<$Res> {
  _$DjuzRowCopyWithImpl(this._self, this._then);

  final DjuzRow _self;
  final $Res Function(DjuzRow) _then;

/// Create a copy of DjuzRow
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? number = null,Object? place = null,Object? fromSuran = null,Object? fromAayah = null,Object? toSurah = null,Object? toAayah = null,}) {
  return _then(_self.copyWith(
number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as DjuzNumber,place: null == place ? _self.place : place // ignore: cast_nullable_to_non_nullable
as DjuzPlace,fromSuran: null == fromSuran ? _self.fromSuran : fromSuran // ignore: cast_nullable_to_non_nullable
as SurahNumber,fromAayah: null == fromAayah ? _self.fromAayah : fromAayah // ignore: cast_nullable_to_non_nullable
as AayahNumber,toSurah: null == toSurah ? _self.toSurah : toSurah // ignore: cast_nullable_to_non_nullable
as SurahNumber,toAayah: null == toAayah ? _self.toAayah : toAayah // ignore: cast_nullable_to_non_nullable
as AayahNumber,
  ));
}

}


/// Adds pattern-matching-related methods to [DjuzRow].
extension DjuzRowPatterns on DjuzRow {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DjuzRow value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DjuzRow() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DjuzRow value)  $default,){
final _that = this;
switch (_that) {
case _DjuzRow():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DjuzRow value)?  $default,){
final _that = this;
switch (_that) {
case _DjuzRow() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( DjuzNumber number,  DjuzPlace place,  SurahNumber fromSuran,  AayahNumber fromAayah,  SurahNumber toSurah,  AayahNumber toAayah)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DjuzRow() when $default != null:
return $default(_that.number,_that.place,_that.fromSuran,_that.fromAayah,_that.toSurah,_that.toAayah);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( DjuzNumber number,  DjuzPlace place,  SurahNumber fromSuran,  AayahNumber fromAayah,  SurahNumber toSurah,  AayahNumber toAayah)  $default,) {final _that = this;
switch (_that) {
case _DjuzRow():
return $default(_that.number,_that.place,_that.fromSuran,_that.fromAayah,_that.toSurah,_that.toAayah);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( DjuzNumber number,  DjuzPlace place,  SurahNumber fromSuran,  AayahNumber fromAayah,  SurahNumber toSurah,  AayahNumber toAayah)?  $default,) {final _that = this;
switch (_that) {
case _DjuzRow() when $default != null:
return $default(_that.number,_that.place,_that.fromSuran,_that.fromAayah,_that.toSurah,_that.toAayah);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: .snake)
class _DjuzRow extends DjuzRow {
  const _DjuzRow(this.number, this.place, this.fromSuran, this.fromAayah, this.toSurah, this.toAayah): super._();
  factory _DjuzRow.fromJson(Map<String, dynamic> json) => _$DjuzRowFromJson(json);

@override final  DjuzNumber number;
@override final  DjuzPlace place;
@override final  SurahNumber fromSuran;
@override final  AayahNumber fromAayah;
@override final  SurahNumber toSurah;
@override final  AayahNumber toAayah;

/// Create a copy of DjuzRow
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DjuzRowCopyWith<_DjuzRow> get copyWith => __$DjuzRowCopyWithImpl<_DjuzRow>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DjuzRowToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DjuzRow&&(identical(other.number, number) || other.number == number)&&(identical(other.place, place) || other.place == place)&&(identical(other.fromSuran, fromSuran) || other.fromSuran == fromSuran)&&(identical(other.fromAayah, fromAayah) || other.fromAayah == fromAayah)&&(identical(other.toSurah, toSurah) || other.toSurah == toSurah)&&(identical(other.toAayah, toAayah) || other.toAayah == toAayah));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,number,place,fromSuran,fromAayah,toSurah,toAayah);

@override
String toString() {
  return 'DjuzRow(number: $number, place: $place, fromSuran: $fromSuran, fromAayah: $fromAayah, toSurah: $toSurah, toAayah: $toAayah)';
}


}

/// @nodoc
abstract mixin class _$DjuzRowCopyWith<$Res> implements $DjuzRowCopyWith<$Res> {
  factory _$DjuzRowCopyWith(_DjuzRow value, $Res Function(_DjuzRow) _then) = __$DjuzRowCopyWithImpl;
@override @useResult
$Res call({
 DjuzNumber number, DjuzPlace place, SurahNumber fromSuran, AayahNumber fromAayah, SurahNumber toSurah, AayahNumber toAayah
});




}
/// @nodoc
class __$DjuzRowCopyWithImpl<$Res>
    implements _$DjuzRowCopyWith<$Res> {
  __$DjuzRowCopyWithImpl(this._self, this._then);

  final _DjuzRow _self;
  final $Res Function(_DjuzRow) _then;

/// Create a copy of DjuzRow
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? number = null,Object? place = null,Object? fromSuran = null,Object? fromAayah = null,Object? toSurah = null,Object? toAayah = null,}) {
  return _then(_DjuzRow(
null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as DjuzNumber,null == place ? _self.place : place // ignore: cast_nullable_to_non_nullable
as DjuzPlace,null == fromSuran ? _self.fromSuran : fromSuran // ignore: cast_nullable_to_non_nullable
as SurahNumber,null == fromAayah ? _self.fromAayah : fromAayah // ignore: cast_nullable_to_non_nullable
as AayahNumber,null == toSurah ? _self.toSurah : toSurah // ignore: cast_nullable_to_non_nullable
as SurahNumber,null == toAayah ? _self.toAayah : toAayah // ignore: cast_nullable_to_non_nullable
as AayahNumber,
  ));
}


}

// dart format on
