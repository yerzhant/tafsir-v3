// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ayah.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Ayah {

 int get number; Arabic get arabic; Tafsir get tafsir; Translation get translation;
/// Create a copy of Ayah
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AyahCopyWith<Ayah> get copyWith => _$AyahCopyWithImpl<Ayah>(this as Ayah, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Ayah&&(identical(other.number, number) || other.number == number)&&(identical(other.arabic, arabic) || other.arabic == arabic)&&(identical(other.tafsir, tafsir) || other.tafsir == tafsir)&&(identical(other.translation, translation) || other.translation == translation));
}


@override
int get hashCode => Object.hash(runtimeType,number,arabic,tafsir,translation);

@override
String toString() {
  return 'Ayah(number: $number, arabic: $arabic, tafsir: $tafsir, translation: $translation)';
}


}

/// @nodoc
abstract mixin class $AyahCopyWith<$Res>  {
  factory $AyahCopyWith(Ayah value, $Res Function(Ayah) _then) = _$AyahCopyWithImpl;
@useResult
$Res call({
 int number, Arabic arabic, Tafsir tafsir, Translation translation
});




}
/// @nodoc
class _$AyahCopyWithImpl<$Res>
    implements $AyahCopyWith<$Res> {
  _$AyahCopyWithImpl(this._self, this._then);

  final Ayah _self;
  final $Res Function(Ayah) _then;

/// Create a copy of Ayah
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? number = null,Object? arabic = null,Object? tafsir = null,Object? translation = null,}) {
  return _then(_self.copyWith(
number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as int,arabic: null == arabic ? _self.arabic : arabic // ignore: cast_nullable_to_non_nullable
as Arabic,tafsir: null == tafsir ? _self.tafsir : tafsir // ignore: cast_nullable_to_non_nullable
as Tafsir,translation: null == translation ? _self.translation : translation // ignore: cast_nullable_to_non_nullable
as Translation,
  ));
}

}


/// Adds pattern-matching-related methods to [Ayah].
extension AyahPatterns on Ayah {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Ayah value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Ayah() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Ayah value)  $default,){
final _that = this;
switch (_that) {
case _Ayah():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Ayah value)?  $default,){
final _that = this;
switch (_that) {
case _Ayah() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int number,  Arabic arabic,  Tafsir tafsir,  Translation translation)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Ayah() when $default != null:
return $default(_that.number,_that.arabic,_that.tafsir,_that.translation);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int number,  Arabic arabic,  Tafsir tafsir,  Translation translation)  $default,) {final _that = this;
switch (_that) {
case _Ayah():
return $default(_that.number,_that.arabic,_that.tafsir,_that.translation);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int number,  Arabic arabic,  Tafsir tafsir,  Translation translation)?  $default,) {final _that = this;
switch (_that) {
case _Ayah() when $default != null:
return $default(_that.number,_that.arabic,_that.tafsir,_that.translation);case _:
  return null;

}
}

}

/// @nodoc


class _Ayah implements Ayah {
  const _Ayah(this.number, this.arabic, this.tafsir, this.translation);
  

@override final  int number;
@override final  Arabic arabic;
@override final  Tafsir tafsir;
@override final  Translation translation;

/// Create a copy of Ayah
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AyahCopyWith<_Ayah> get copyWith => __$AyahCopyWithImpl<_Ayah>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Ayah&&(identical(other.number, number) || other.number == number)&&(identical(other.arabic, arabic) || other.arabic == arabic)&&(identical(other.tafsir, tafsir) || other.tafsir == tafsir)&&(identical(other.translation, translation) || other.translation == translation));
}


@override
int get hashCode => Object.hash(runtimeType,number,arabic,tafsir,translation);

@override
String toString() {
  return 'Ayah(number: $number, arabic: $arabic, tafsir: $tafsir, translation: $translation)';
}


}

/// @nodoc
abstract mixin class _$AyahCopyWith<$Res> implements $AyahCopyWith<$Res> {
  factory _$AyahCopyWith(_Ayah value, $Res Function(_Ayah) _then) = __$AyahCopyWithImpl;
@override @useResult
$Res call({
 int number, Arabic arabic, Tafsir tafsir, Translation translation
});




}
/// @nodoc
class __$AyahCopyWithImpl<$Res>
    implements _$AyahCopyWith<$Res> {
  __$AyahCopyWithImpl(this._self, this._then);

  final _Ayah _self;
  final $Res Function(_Ayah) _then;

/// Create a copy of Ayah
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? number = null,Object? arabic = null,Object? tafsir = null,Object? translation = null,}) {
  return _then(_Ayah(
null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as int,null == arabic ? _self.arabic : arabic // ignore: cast_nullable_to_non_nullable
as Arabic,null == tafsir ? _self.tafsir : tafsir // ignore: cast_nullable_to_non_nullable
as Tafsir,null == translation ? _self.translation : translation // ignore: cast_nullable_to_non_nullable
as Translation,
  ));
}


}

// dart format on
