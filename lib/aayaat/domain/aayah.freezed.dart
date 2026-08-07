// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'aayah.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Aayah {

 AayahNumber get number; AayahArabic get arabic; AayahTafsir get tafsir; AayahTranslation get translation;
/// Create a copy of Aayah
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AayahCopyWith<Aayah> get copyWith => _$AayahCopyWithImpl<Aayah>(this as Aayah, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Aayah&&(identical(other.number, number) || other.number == number)&&(identical(other.arabic, arabic) || other.arabic == arabic)&&(identical(other.tafsir, tafsir) || other.tafsir == tafsir)&&(identical(other.translation, translation) || other.translation == translation));
}


@override
int get hashCode => Object.hash(runtimeType,number,arabic,tafsir,translation);

@override
String toString() {
  return 'Aayah(number: $number, arabic: $arabic, tafsir: $tafsir, translation: $translation)';
}


}

/// @nodoc
abstract mixin class $AayahCopyWith<$Res>  {
  factory $AayahCopyWith(Aayah value, $Res Function(Aayah) _then) = _$AayahCopyWithImpl;
@useResult
$Res call({
 AayahNumber number, AayahArabic arabic, AayahTafsir tafsir, AayahTranslation translation
});




}
/// @nodoc
class _$AayahCopyWithImpl<$Res>
    implements $AayahCopyWith<$Res> {
  _$AayahCopyWithImpl(this._self, this._then);

  final Aayah _self;
  final $Res Function(Aayah) _then;

/// Create a copy of Aayah
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? number = null,Object? arabic = null,Object? tafsir = null,Object? translation = null,}) {
  return _then(_self.copyWith(
number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as AayahNumber,arabic: null == arabic ? _self.arabic : arabic // ignore: cast_nullable_to_non_nullable
as AayahArabic,tafsir: null == tafsir ? _self.tafsir : tafsir // ignore: cast_nullable_to_non_nullable
as AayahTafsir,translation: null == translation ? _self.translation : translation // ignore: cast_nullable_to_non_nullable
as AayahTranslation,
  ));
}

}


/// Adds pattern-matching-related methods to [Aayah].
extension AayahPatterns on Aayah {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Aayah value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Aayah() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Aayah value)  $default,){
final _that = this;
switch (_that) {
case _Aayah():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Aayah value)?  $default,){
final _that = this;
switch (_that) {
case _Aayah() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( AayahNumber number,  AayahArabic arabic,  AayahTafsir tafsir,  AayahTranslation translation)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Aayah() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( AayahNumber number,  AayahArabic arabic,  AayahTafsir tafsir,  AayahTranslation translation)  $default,) {final _that = this;
switch (_that) {
case _Aayah():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( AayahNumber number,  AayahArabic arabic,  AayahTafsir tafsir,  AayahTranslation translation)?  $default,) {final _that = this;
switch (_that) {
case _Aayah() when $default != null:
return $default(_that.number,_that.arabic,_that.tafsir,_that.translation);case _:
  return null;

}
}

}

/// @nodoc


class _Aayah implements Aayah {
  const _Aayah(this.number, this.arabic, this.tafsir, this.translation);
  

@override final  AayahNumber number;
@override final  AayahArabic arabic;
@override final  AayahTafsir tafsir;
@override final  AayahTranslation translation;

/// Create a copy of Aayah
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AayahCopyWith<_Aayah> get copyWith => __$AayahCopyWithImpl<_Aayah>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Aayah&&(identical(other.number, number) || other.number == number)&&(identical(other.arabic, arabic) || other.arabic == arabic)&&(identical(other.tafsir, tafsir) || other.tafsir == tafsir)&&(identical(other.translation, translation) || other.translation == translation));
}


@override
int get hashCode => Object.hash(runtimeType,number,arabic,tafsir,translation);

@override
String toString() {
  return 'Aayah(number: $number, arabic: $arabic, tafsir: $tafsir, translation: $translation)';
}


}

/// @nodoc
abstract mixin class _$AayahCopyWith<$Res> implements $AayahCopyWith<$Res> {
  factory _$AayahCopyWith(_Aayah value, $Res Function(_Aayah) _then) = __$AayahCopyWithImpl;
@override @useResult
$Res call({
 AayahNumber number, AayahArabic arabic, AayahTafsir tafsir, AayahTranslation translation
});




}
/// @nodoc
class __$AayahCopyWithImpl<$Res>
    implements _$AayahCopyWith<$Res> {
  __$AayahCopyWithImpl(this._self, this._then);

  final _Aayah _self;
  final $Res Function(_Aayah) _then;

/// Create a copy of Aayah
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? number = null,Object? arabic = null,Object? tafsir = null,Object? translation = null,}) {
  return _then(_Aayah(
null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as AayahNumber,null == arabic ? _self.arabic : arabic // ignore: cast_nullable_to_non_nullable
as AayahArabic,null == tafsir ? _self.tafsir : tafsir // ignore: cast_nullable_to_non_nullable
as AayahTafsir,null == translation ? _self.translation : translation // ignore: cast_nullable_to_non_nullable
as AayahTranslation,
  ));
}


}

// dart format on
