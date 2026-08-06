// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'surah_row.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SurahRow {

 SurahNumber get number; SurahName get name; SurahInfo get info; SurahDjuz get djuz; SurahPlace get place; SurahTranslation get translation; AayahQuantity get quantity;
/// Create a copy of SurahRow
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SurahRowCopyWith<SurahRow> get copyWith => _$SurahRowCopyWithImpl<SurahRow>(this as SurahRow, _$identity);

  /// Serializes this SurahRow to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SurahRow&&(identical(other.number, number) || other.number == number)&&(identical(other.name, name) || other.name == name)&&(identical(other.info, info) || other.info == info)&&(identical(other.djuz, djuz) || other.djuz == djuz)&&(identical(other.place, place) || other.place == place)&&(identical(other.translation, translation) || other.translation == translation)&&(identical(other.quantity, quantity) || other.quantity == quantity));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,number,name,info,djuz,place,translation,quantity);

@override
String toString() {
  return 'SurahRow(number: $number, name: $name, info: $info, djuz: $djuz, place: $place, translation: $translation, quantity: $quantity)';
}


}

/// @nodoc
abstract mixin class $SurahRowCopyWith<$Res>  {
  factory $SurahRowCopyWith(SurahRow value, $Res Function(SurahRow) _then) = _$SurahRowCopyWithImpl;
@useResult
$Res call({
 SurahNumber number, SurahName name, SurahInfo info, SurahDjuz djuz, SurahPlace place, SurahTranslation translation, AayahQuantity quantity
});




}
/// @nodoc
class _$SurahRowCopyWithImpl<$Res>
    implements $SurahRowCopyWith<$Res> {
  _$SurahRowCopyWithImpl(this._self, this._then);

  final SurahRow _self;
  final $Res Function(SurahRow) _then;

/// Create a copy of SurahRow
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? number = null,Object? name = null,Object? info = null,Object? djuz = null,Object? place = null,Object? translation = null,Object? quantity = null,}) {
  return _then(_self.copyWith(
number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as SurahNumber,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as SurahName,info: null == info ? _self.info : info // ignore: cast_nullable_to_non_nullable
as SurahInfo,djuz: null == djuz ? _self.djuz : djuz // ignore: cast_nullable_to_non_nullable
as SurahDjuz,place: null == place ? _self.place : place // ignore: cast_nullable_to_non_nullable
as SurahPlace,translation: null == translation ? _self.translation : translation // ignore: cast_nullable_to_non_nullable
as SurahTranslation,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as AayahQuantity,
  ));
}

}


/// Adds pattern-matching-related methods to [SurahRow].
extension SurahRowPatterns on SurahRow {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SurahRow value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SurahRow() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SurahRow value)  $default,){
final _that = this;
switch (_that) {
case _SurahRow():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SurahRow value)?  $default,){
final _that = this;
switch (_that) {
case _SurahRow() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( SurahNumber number,  SurahName name,  SurahInfo info,  SurahDjuz djuz,  SurahPlace place,  SurahTranslation translation,  AayahQuantity quantity)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SurahRow() when $default != null:
return $default(_that.number,_that.name,_that.info,_that.djuz,_that.place,_that.translation,_that.quantity);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( SurahNumber number,  SurahName name,  SurahInfo info,  SurahDjuz djuz,  SurahPlace place,  SurahTranslation translation,  AayahQuantity quantity)  $default,) {final _that = this;
switch (_that) {
case _SurahRow():
return $default(_that.number,_that.name,_that.info,_that.djuz,_that.place,_that.translation,_that.quantity);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( SurahNumber number,  SurahName name,  SurahInfo info,  SurahDjuz djuz,  SurahPlace place,  SurahTranslation translation,  AayahQuantity quantity)?  $default,) {final _that = this;
switch (_that) {
case _SurahRow() when $default != null:
return $default(_that.number,_that.name,_that.info,_that.djuz,_that.place,_that.translation,_that.quantity);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SurahRow extends SurahRow {
  const _SurahRow(this.number, this.name, this.info, this.djuz, this.place, this.translation, this.quantity): super._();
  factory _SurahRow.fromJson(Map<String, dynamic> json) => _$SurahRowFromJson(json);

@override final  SurahNumber number;
@override final  SurahName name;
@override final  SurahInfo info;
@override final  SurahDjuz djuz;
@override final  SurahPlace place;
@override final  SurahTranslation translation;
@override final  AayahQuantity quantity;

/// Create a copy of SurahRow
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SurahRowCopyWith<_SurahRow> get copyWith => __$SurahRowCopyWithImpl<_SurahRow>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SurahRowToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SurahRow&&(identical(other.number, number) || other.number == number)&&(identical(other.name, name) || other.name == name)&&(identical(other.info, info) || other.info == info)&&(identical(other.djuz, djuz) || other.djuz == djuz)&&(identical(other.place, place) || other.place == place)&&(identical(other.translation, translation) || other.translation == translation)&&(identical(other.quantity, quantity) || other.quantity == quantity));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,number,name,info,djuz,place,translation,quantity);

@override
String toString() {
  return 'SurahRow(number: $number, name: $name, info: $info, djuz: $djuz, place: $place, translation: $translation, quantity: $quantity)';
}


}

/// @nodoc
abstract mixin class _$SurahRowCopyWith<$Res> implements $SurahRowCopyWith<$Res> {
  factory _$SurahRowCopyWith(_SurahRow value, $Res Function(_SurahRow) _then) = __$SurahRowCopyWithImpl;
@override @useResult
$Res call({
 SurahNumber number, SurahName name, SurahInfo info, SurahDjuz djuz, SurahPlace place, SurahTranslation translation, AayahQuantity quantity
});




}
/// @nodoc
class __$SurahRowCopyWithImpl<$Res>
    implements _$SurahRowCopyWith<$Res> {
  __$SurahRowCopyWithImpl(this._self, this._then);

  final _SurahRow _self;
  final $Res Function(_SurahRow) _then;

/// Create a copy of SurahRow
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? number = null,Object? name = null,Object? info = null,Object? djuz = null,Object? place = null,Object? translation = null,Object? quantity = null,}) {
  return _then(_SurahRow(
null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as SurahNumber,null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as SurahName,null == info ? _self.info : info // ignore: cast_nullable_to_non_nullable
as SurahInfo,null == djuz ? _self.djuz : djuz // ignore: cast_nullable_to_non_nullable
as SurahDjuz,null == place ? _self.place : place // ignore: cast_nullable_to_non_nullable
as SurahPlace,null == translation ? _self.translation : translation // ignore: cast_nullable_to_non_nullable
as SurahTranslation,null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as AayahQuantity,
  ));
}


}

// dart format on
