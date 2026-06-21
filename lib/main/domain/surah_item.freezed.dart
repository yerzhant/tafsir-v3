// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'surah_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SurahItem {

 SurahNumber get number; SurahName get name; SurahTranslation get translation; SurahPlace get place; AayahQuantity get quantity; SurahDjuz get djuz;
/// Create a copy of SurahItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SurahItemCopyWith<SurahItem> get copyWith => _$SurahItemCopyWithImpl<SurahItem>(this as SurahItem, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SurahItem&&(identical(other.number, number) || other.number == number)&&(identical(other.name, name) || other.name == name)&&(identical(other.translation, translation) || other.translation == translation)&&(identical(other.place, place) || other.place == place)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.djuz, djuz) || other.djuz == djuz));
}


@override
int get hashCode => Object.hash(runtimeType,number,name,translation,place,quantity,djuz);

@override
String toString() {
  return 'SurahItem(number: $number, name: $name, translation: $translation, place: $place, quantity: $quantity, djuz: $djuz)';
}


}

/// @nodoc
abstract mixin class $SurahItemCopyWith<$Res>  {
  factory $SurahItemCopyWith(SurahItem value, $Res Function(SurahItem) _then) = _$SurahItemCopyWithImpl;
@useResult
$Res call({
 SurahNumber number, SurahName name, SurahTranslation translation, SurahPlace place, AayahQuantity quantity, SurahDjuz djuz
});




}
/// @nodoc
class _$SurahItemCopyWithImpl<$Res>
    implements $SurahItemCopyWith<$Res> {
  _$SurahItemCopyWithImpl(this._self, this._then);

  final SurahItem _self;
  final $Res Function(SurahItem) _then;

/// Create a copy of SurahItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? number = null,Object? name = null,Object? translation = null,Object? place = null,Object? quantity = null,Object? djuz = null,}) {
  return _then(_self.copyWith(
number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as SurahNumber,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as SurahName,translation: null == translation ? _self.translation : translation // ignore: cast_nullable_to_non_nullable
as SurahTranslation,place: null == place ? _self.place : place // ignore: cast_nullable_to_non_nullable
as SurahPlace,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as AayahQuantity,djuz: null == djuz ? _self.djuz : djuz // ignore: cast_nullable_to_non_nullable
as SurahDjuz,
  ));
}

}


/// Adds pattern-matching-related methods to [SurahItem].
extension SurahItemPatterns on SurahItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SurahItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SurahItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SurahItem value)  $default,){
final _that = this;
switch (_that) {
case _SurahItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SurahItem value)?  $default,){
final _that = this;
switch (_that) {
case _SurahItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( SurahNumber number,  SurahName name,  SurahTranslation translation,  SurahPlace place,  AayahQuantity quantity,  SurahDjuz djuz)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SurahItem() when $default != null:
return $default(_that.number,_that.name,_that.translation,_that.place,_that.quantity,_that.djuz);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( SurahNumber number,  SurahName name,  SurahTranslation translation,  SurahPlace place,  AayahQuantity quantity,  SurahDjuz djuz)  $default,) {final _that = this;
switch (_that) {
case _SurahItem():
return $default(_that.number,_that.name,_that.translation,_that.place,_that.quantity,_that.djuz);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( SurahNumber number,  SurahName name,  SurahTranslation translation,  SurahPlace place,  AayahQuantity quantity,  SurahDjuz djuz)?  $default,) {final _that = this;
switch (_that) {
case _SurahItem() when $default != null:
return $default(_that.number,_that.name,_that.translation,_that.place,_that.quantity,_that.djuz);case _:
  return null;

}
}

}

/// @nodoc


class _SurahItem implements SurahItem {
  const _SurahItem(this.number, this.name, this.translation, this.place, this.quantity, this.djuz);
  

@override final  SurahNumber number;
@override final  SurahName name;
@override final  SurahTranslation translation;
@override final  SurahPlace place;
@override final  AayahQuantity quantity;
@override final  SurahDjuz djuz;

/// Create a copy of SurahItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SurahItemCopyWith<_SurahItem> get copyWith => __$SurahItemCopyWithImpl<_SurahItem>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SurahItem&&(identical(other.number, number) || other.number == number)&&(identical(other.name, name) || other.name == name)&&(identical(other.translation, translation) || other.translation == translation)&&(identical(other.place, place) || other.place == place)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.djuz, djuz) || other.djuz == djuz));
}


@override
int get hashCode => Object.hash(runtimeType,number,name,translation,place,quantity,djuz);

@override
String toString() {
  return 'SurahItem(number: $number, name: $name, translation: $translation, place: $place, quantity: $quantity, djuz: $djuz)';
}


}

/// @nodoc
abstract mixin class _$SurahItemCopyWith<$Res> implements $SurahItemCopyWith<$Res> {
  factory _$SurahItemCopyWith(_SurahItem value, $Res Function(_SurahItem) _then) = __$SurahItemCopyWithImpl;
@override @useResult
$Res call({
 SurahNumber number, SurahName name, SurahTranslation translation, SurahPlace place, AayahQuantity quantity, SurahDjuz djuz
});




}
/// @nodoc
class __$SurahItemCopyWithImpl<$Res>
    implements _$SurahItemCopyWith<$Res> {
  __$SurahItemCopyWithImpl(this._self, this._then);

  final _SurahItem _self;
  final $Res Function(_SurahItem) _then;

/// Create a copy of SurahItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? number = null,Object? name = null,Object? translation = null,Object? place = null,Object? quantity = null,Object? djuz = null,}) {
  return _then(_SurahItem(
null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as SurahNumber,null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as SurahName,null == translation ? _self.translation : translation // ignore: cast_nullable_to_non_nullable
as SurahTranslation,null == place ? _self.place : place // ignore: cast_nullable_to_non_nullable
as SurahPlace,null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as AayahQuantity,null == djuz ? _self.djuz : djuz // ignore: cast_nullable_to_non_nullable
as SurahDjuz,
  ));
}


}

// dart format on
