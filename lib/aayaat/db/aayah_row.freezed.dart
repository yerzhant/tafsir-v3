// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'aayah_row.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AayahRow {

 SurahNumber get surahNumber; AayahNumber get aayahNumber; AayahArabic get arabic; AayahTafsir get tafsir; AayahTranslation get translation;
/// Create a copy of AayahRow
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AayahRowCopyWith<AayahRow> get copyWith => _$AayahRowCopyWithImpl<AayahRow>(this as AayahRow, _$identity);

  /// Serializes this AayahRow to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AayahRow&&(identical(other.surahNumber, surahNumber) || other.surahNumber == surahNumber)&&(identical(other.aayahNumber, aayahNumber) || other.aayahNumber == aayahNumber)&&(identical(other.arabic, arabic) || other.arabic == arabic)&&(identical(other.tafsir, tafsir) || other.tafsir == tafsir)&&(identical(other.translation, translation) || other.translation == translation));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,surahNumber,aayahNumber,arabic,tafsir,translation);

@override
String toString() {
  return 'AayahRow(surahNumber: $surahNumber, aayahNumber: $aayahNumber, arabic: $arabic, tafsir: $tafsir, translation: $translation)';
}


}

/// @nodoc
abstract mixin class $AayahRowCopyWith<$Res>  {
  factory $AayahRowCopyWith(AayahRow value, $Res Function(AayahRow) _then) = _$AayahRowCopyWithImpl;
@useResult
$Res call({
 SurahNumber surahNumber, AayahNumber aayahNumber, AayahArabic arabic, AayahTafsir tafsir, AayahTranslation translation
});




}
/// @nodoc
class _$AayahRowCopyWithImpl<$Res>
    implements $AayahRowCopyWith<$Res> {
  _$AayahRowCopyWithImpl(this._self, this._then);

  final AayahRow _self;
  final $Res Function(AayahRow) _then;

/// Create a copy of AayahRow
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? surahNumber = null,Object? aayahNumber = null,Object? arabic = null,Object? tafsir = null,Object? translation = null,}) {
  return _then(_self.copyWith(
surahNumber: null == surahNumber ? _self.surahNumber : surahNumber // ignore: cast_nullable_to_non_nullable
as SurahNumber,aayahNumber: null == aayahNumber ? _self.aayahNumber : aayahNumber // ignore: cast_nullable_to_non_nullable
as AayahNumber,arabic: null == arabic ? _self.arabic : arabic // ignore: cast_nullable_to_non_nullable
as AayahArabic,tafsir: null == tafsir ? _self.tafsir : tafsir // ignore: cast_nullable_to_non_nullable
as AayahTafsir,translation: null == translation ? _self.translation : translation // ignore: cast_nullable_to_non_nullable
as AayahTranslation,
  ));
}

}


/// Adds pattern-matching-related methods to [AayahRow].
extension AayahRowPatterns on AayahRow {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AayahRow value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AayahRow() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AayahRow value)  $default,){
final _that = this;
switch (_that) {
case _AayahRow():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AayahRow value)?  $default,){
final _that = this;
switch (_that) {
case _AayahRow() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( SurahNumber surahNumber,  AayahNumber aayahNumber,  AayahArabic arabic,  AayahTafsir tafsir,  AayahTranslation translation)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AayahRow() when $default != null:
return $default(_that.surahNumber,_that.aayahNumber,_that.arabic,_that.tafsir,_that.translation);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( SurahNumber surahNumber,  AayahNumber aayahNumber,  AayahArabic arabic,  AayahTafsir tafsir,  AayahTranslation translation)  $default,) {final _that = this;
switch (_that) {
case _AayahRow():
return $default(_that.surahNumber,_that.aayahNumber,_that.arabic,_that.tafsir,_that.translation);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( SurahNumber surahNumber,  AayahNumber aayahNumber,  AayahArabic arabic,  AayahTafsir tafsir,  AayahTranslation translation)?  $default,) {final _that = this;
switch (_that) {
case _AayahRow() when $default != null:
return $default(_that.surahNumber,_that.aayahNumber,_that.arabic,_that.tafsir,_that.translation);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: .snake)
class _AayahRow extends AayahRow {
  const _AayahRow(this.surahNumber, this.aayahNumber, this.arabic, this.tafsir, this.translation): super._();
  factory _AayahRow.fromJson(Map<String, dynamic> json) => _$AayahRowFromJson(json);

@override final  SurahNumber surahNumber;
@override final  AayahNumber aayahNumber;
@override final  AayahArabic arabic;
@override final  AayahTafsir tafsir;
@override final  AayahTranslation translation;

/// Create a copy of AayahRow
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AayahRowCopyWith<_AayahRow> get copyWith => __$AayahRowCopyWithImpl<_AayahRow>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AayahRowToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AayahRow&&(identical(other.surahNumber, surahNumber) || other.surahNumber == surahNumber)&&(identical(other.aayahNumber, aayahNumber) || other.aayahNumber == aayahNumber)&&(identical(other.arabic, arabic) || other.arabic == arabic)&&(identical(other.tafsir, tafsir) || other.tafsir == tafsir)&&(identical(other.translation, translation) || other.translation == translation));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,surahNumber,aayahNumber,arabic,tafsir,translation);

@override
String toString() {
  return 'AayahRow(surahNumber: $surahNumber, aayahNumber: $aayahNumber, arabic: $arabic, tafsir: $tafsir, translation: $translation)';
}


}

/// @nodoc
abstract mixin class _$AayahRowCopyWith<$Res> implements $AayahRowCopyWith<$Res> {
  factory _$AayahRowCopyWith(_AayahRow value, $Res Function(_AayahRow) _then) = __$AayahRowCopyWithImpl;
@override @useResult
$Res call({
 SurahNumber surahNumber, AayahNumber aayahNumber, AayahArabic arabic, AayahTafsir tafsir, AayahTranslation translation
});




}
/// @nodoc
class __$AayahRowCopyWithImpl<$Res>
    implements _$AayahRowCopyWith<$Res> {
  __$AayahRowCopyWithImpl(this._self, this._then);

  final _AayahRow _self;
  final $Res Function(_AayahRow) _then;

/// Create a copy of AayahRow
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? surahNumber = null,Object? aayahNumber = null,Object? arabic = null,Object? tafsir = null,Object? translation = null,}) {
  return _then(_AayahRow(
null == surahNumber ? _self.surahNumber : surahNumber // ignore: cast_nullable_to_non_nullable
as SurahNumber,null == aayahNumber ? _self.aayahNumber : aayahNumber // ignore: cast_nullable_to_non_nullable
as AayahNumber,null == arabic ? _self.arabic : arabic // ignore: cast_nullable_to_non_nullable
as AayahArabic,null == tafsir ? _self.tafsir : tafsir // ignore: cast_nullable_to_non_nullable
as AayahTafsir,null == translation ? _self.translation : translation // ignore: cast_nullable_to_non_nullable
as AayahTranslation,
  ));
}


}

// dart format on
