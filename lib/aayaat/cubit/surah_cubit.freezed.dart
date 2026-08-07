// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'surah_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SurahState {

 AyahPosition get position;
/// Create a copy of SurahState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SurahStateCopyWith<SurahState> get copyWith => _$SurahStateCopyWithImpl<SurahState>(this as SurahState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SurahState&&(identical(other.position, position) || other.position == position));
}


@override
int get hashCode => Object.hash(runtimeType,position);

@override
String toString() {
  return 'SurahState(position: $position)';
}


}

/// @nodoc
abstract mixin class $SurahStateCopyWith<$Res>  {
  factory $SurahStateCopyWith(SurahState value, $Res Function(SurahState) _then) = _$SurahStateCopyWithImpl;
@useResult
$Res call({
 AyahPosition position
});


$AyahPositionCopyWith<$Res> get position;

}
/// @nodoc
class _$SurahStateCopyWithImpl<$Res>
    implements $SurahStateCopyWith<$Res> {
  _$SurahStateCopyWithImpl(this._self, this._then);

  final SurahState _self;
  final $Res Function(SurahState) _then;

/// Create a copy of SurahState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? position = null,}) {
  return _then(_self.copyWith(
position: null == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as AyahPosition,
  ));
}
/// Create a copy of SurahState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AyahPositionCopyWith<$Res> get position {
  
  return $AyahPositionCopyWith<$Res>(_self.position, (value) {
    return _then(_self.copyWith(position: value));
  });
}
}


/// Adds pattern-matching-related methods to [SurahState].
extension SurahStatePatterns on SurahState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Read value)?  read,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Read() when read != null:
return read(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Read value)  read,}){
final _that = this;
switch (_that) {
case _Read():
return read(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Read value)?  read,}){
final _that = this;
switch (_that) {
case _Read() when read != null:
return read(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( AyahPosition position)?  read,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Read() when read != null:
return read(_that.position);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( AyahPosition position)  read,}) {final _that = this;
switch (_that) {
case _Read():
return read(_that.position);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( AyahPosition position)?  read,}) {final _that = this;
switch (_that) {
case _Read() when read != null:
return read(_that.position);case _:
  return null;

}
}

}

/// @nodoc


class _Read implements SurahState {
  const _Read(this.position);
  

@override final  AyahPosition position;

/// Create a copy of SurahState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReadCopyWith<_Read> get copyWith => __$ReadCopyWithImpl<_Read>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Read&&(identical(other.position, position) || other.position == position));
}


@override
int get hashCode => Object.hash(runtimeType,position);

@override
String toString() {
  return 'SurahState.read(position: $position)';
}


}

/// @nodoc
abstract mixin class _$ReadCopyWith<$Res> implements $SurahStateCopyWith<$Res> {
  factory _$ReadCopyWith(_Read value, $Res Function(_Read) _then) = __$ReadCopyWithImpl;
@override @useResult
$Res call({
 AyahPosition position
});


@override $AyahPositionCopyWith<$Res> get position;

}
/// @nodoc
class __$ReadCopyWithImpl<$Res>
    implements _$ReadCopyWith<$Res> {
  __$ReadCopyWithImpl(this._self, this._then);

  final _Read _self;
  final $Res Function(_Read) _then;

/// Create a copy of SurahState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? position = null,}) {
  return _then(_Read(
null == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as AyahPosition,
  ));
}

/// Create a copy of SurahState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AyahPositionCopyWith<$Res> get position {
  
  return $AyahPositionCopyWith<$Res>(_self.position, (value) {
    return _then(_self.copyWith(position: value));
  });
}
}

// dart format on
