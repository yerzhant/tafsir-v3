// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'go_to_aayah_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GoToAayahState {

 SurahNumber get surahNumber; AayahNumber get aayahNumber;
/// Create a copy of GoToAayahState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GoToAayahStateCopyWith<GoToAayahState> get copyWith => _$GoToAayahStateCopyWithImpl<GoToAayahState>(this as GoToAayahState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GoToAayahState&&(identical(other.surahNumber, surahNumber) || other.surahNumber == surahNumber)&&(identical(other.aayahNumber, aayahNumber) || other.aayahNumber == aayahNumber));
}


@override
int get hashCode => Object.hash(runtimeType,surahNumber,aayahNumber);

@override
String toString() {
  return 'GoToAayahState(surahNumber: $surahNumber, aayahNumber: $aayahNumber)';
}


}

/// @nodoc
abstract mixin class $GoToAayahStateCopyWith<$Res>  {
  factory $GoToAayahStateCopyWith(GoToAayahState value, $Res Function(GoToAayahState) _then) = _$GoToAayahStateCopyWithImpl;
@useResult
$Res call({
 SurahNumber surahNumber, AayahNumber aayahNumber
});




}
/// @nodoc
class _$GoToAayahStateCopyWithImpl<$Res>
    implements $GoToAayahStateCopyWith<$Res> {
  _$GoToAayahStateCopyWithImpl(this._self, this._then);

  final GoToAayahState _self;
  final $Res Function(GoToAayahState) _then;

/// Create a copy of GoToAayahState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? surahNumber = null,Object? aayahNumber = null,}) {
  return _then(_self.copyWith(
surahNumber: null == surahNumber ? _self.surahNumber : surahNumber // ignore: cast_nullable_to_non_nullable
as SurahNumber,aayahNumber: null == aayahNumber ? _self.aayahNumber : aayahNumber // ignore: cast_nullable_to_non_nullable
as AayahNumber,
  ));
}

}


/// Adds pattern-matching-related methods to [GoToAayahState].
extension GoToAayahStatePatterns on GoToAayahState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( SurahNumber surahNumber,  AayahNumber aayahNumber)?  initial,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that.surahNumber,_that.aayahNumber);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( SurahNumber surahNumber,  AayahNumber aayahNumber)  initial,}) {final _that = this;
switch (_that) {
case _Initial():
return initial(_that.surahNumber,_that.aayahNumber);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( SurahNumber surahNumber,  AayahNumber aayahNumber)?  initial,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that.surahNumber,_that.aayahNumber);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements GoToAayahState {
  const _Initial(this.surahNumber, this.aayahNumber);
  

@override final  SurahNumber surahNumber;
@override final  AayahNumber aayahNumber;

/// Create a copy of GoToAayahState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InitialCopyWith<_Initial> get copyWith => __$InitialCopyWithImpl<_Initial>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial&&(identical(other.surahNumber, surahNumber) || other.surahNumber == surahNumber)&&(identical(other.aayahNumber, aayahNumber) || other.aayahNumber == aayahNumber));
}


@override
int get hashCode => Object.hash(runtimeType,surahNumber,aayahNumber);

@override
String toString() {
  return 'GoToAayahState.initial(surahNumber: $surahNumber, aayahNumber: $aayahNumber)';
}


}

/// @nodoc
abstract mixin class _$InitialCopyWith<$Res> implements $GoToAayahStateCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) _then) = __$InitialCopyWithImpl;
@override @useResult
$Res call({
 SurahNumber surahNumber, AayahNumber aayahNumber
});




}
/// @nodoc
class __$InitialCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(this._self, this._then);

  final _Initial _self;
  final $Res Function(_Initial) _then;

/// Create a copy of GoToAayahState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? surahNumber = null,Object? aayahNumber = null,}) {
  return _then(_Initial(
null == surahNumber ? _self.surahNumber : surahNumber // ignore: cast_nullable_to_non_nullable
as SurahNumber,null == aayahNumber ? _self.aayahNumber : aayahNumber // ignore: cast_nullable_to_non_nullable
as AayahNumber,
  ));
}


}

// dart format on
