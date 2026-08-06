// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'djuz.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Djuz {

 DjuzNumber get number; DjuzPlace get place; SurahName get from; SurahName get to;
/// Create a copy of Djuz
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DjuzCopyWith<Djuz> get copyWith => _$DjuzCopyWithImpl<Djuz>(this as Djuz, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Djuz&&(identical(other.number, number) || other.number == number)&&(identical(other.place, place) || other.place == place)&&(identical(other.from, from) || other.from == from)&&(identical(other.to, to) || other.to == to));
}


@override
int get hashCode => Object.hash(runtimeType,number,place,from,to);

@override
String toString() {
  return 'Djuz(number: $number, place: $place, from: $from, to: $to)';
}


}

/// @nodoc
abstract mixin class $DjuzCopyWith<$Res>  {
  factory $DjuzCopyWith(Djuz value, $Res Function(Djuz) _then) = _$DjuzCopyWithImpl;
@useResult
$Res call({
 DjuzNumber number, DjuzPlace place, SurahName from, SurahName to
});




}
/// @nodoc
class _$DjuzCopyWithImpl<$Res>
    implements $DjuzCopyWith<$Res> {
  _$DjuzCopyWithImpl(this._self, this._then);

  final Djuz _self;
  final $Res Function(Djuz) _then;

/// Create a copy of Djuz
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? number = null,Object? place = null,Object? from = null,Object? to = null,}) {
  return _then(_self.copyWith(
number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as DjuzNumber,place: null == place ? _self.place : place // ignore: cast_nullable_to_non_nullable
as DjuzPlace,from: null == from ? _self.from : from // ignore: cast_nullable_to_non_nullable
as SurahName,to: null == to ? _self.to : to // ignore: cast_nullable_to_non_nullable
as SurahName,
  ));
}

}


/// Adds pattern-matching-related methods to [Djuz].
extension DjuzPatterns on Djuz {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Djuz value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Djuz() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Djuz value)  $default,){
final _that = this;
switch (_that) {
case _Djuz():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Djuz value)?  $default,){
final _that = this;
switch (_that) {
case _Djuz() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( DjuzNumber number,  DjuzPlace place,  SurahName from,  SurahName to)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Djuz() when $default != null:
return $default(_that.number,_that.place,_that.from,_that.to);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( DjuzNumber number,  DjuzPlace place,  SurahName from,  SurahName to)  $default,) {final _that = this;
switch (_that) {
case _Djuz():
return $default(_that.number,_that.place,_that.from,_that.to);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( DjuzNumber number,  DjuzPlace place,  SurahName from,  SurahName to)?  $default,) {final _that = this;
switch (_that) {
case _Djuz() when $default != null:
return $default(_that.number,_that.place,_that.from,_that.to);case _:
  return null;

}
}

}

/// @nodoc


class _Djuz implements Djuz {
  const _Djuz(this.number, this.place, this.from, this.to);
  

@override final  DjuzNumber number;
@override final  DjuzPlace place;
@override final  SurahName from;
@override final  SurahName to;

/// Create a copy of Djuz
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DjuzCopyWith<_Djuz> get copyWith => __$DjuzCopyWithImpl<_Djuz>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Djuz&&(identical(other.number, number) || other.number == number)&&(identical(other.place, place) || other.place == place)&&(identical(other.from, from) || other.from == from)&&(identical(other.to, to) || other.to == to));
}


@override
int get hashCode => Object.hash(runtimeType,number,place,from,to);

@override
String toString() {
  return 'Djuz(number: $number, place: $place, from: $from, to: $to)';
}


}

/// @nodoc
abstract mixin class _$DjuzCopyWith<$Res> implements $DjuzCopyWith<$Res> {
  factory _$DjuzCopyWith(_Djuz value, $Res Function(_Djuz) _then) = __$DjuzCopyWithImpl;
@override @useResult
$Res call({
 DjuzNumber number, DjuzPlace place, SurahName from, SurahName to
});




}
/// @nodoc
class __$DjuzCopyWithImpl<$Res>
    implements _$DjuzCopyWith<$Res> {
  __$DjuzCopyWithImpl(this._self, this._then);

  final _Djuz _self;
  final $Res Function(_Djuz) _then;

/// Create a copy of Djuz
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? number = null,Object? place = null,Object? from = null,Object? to = null,}) {
  return _then(_Djuz(
null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as DjuzNumber,null == place ? _self.place : place // ignore: cast_nullable_to_non_nullable
as DjuzPlace,null == from ? _self.from : from // ignore: cast_nullable_to_non_nullable
as SurahName,null == to ? _self.to : to // ignore: cast_nullable_to_non_nullable
as SurahName,
  ));
}


}

// dart format on
