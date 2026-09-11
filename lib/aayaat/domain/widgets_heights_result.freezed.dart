// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'widgets_heights_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$WidgetsHeightsResult {

 ScrollPositionMax get maxOffset; List<double> get offsets;
/// Create a copy of WidgetsHeightsResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WidgetsHeightsResultCopyWith<WidgetsHeightsResult> get copyWith => _$WidgetsHeightsResultCopyWithImpl<WidgetsHeightsResult>(this as WidgetsHeightsResult, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WidgetsHeightsResult&&(identical(other.maxOffset, maxOffset) || other.maxOffset == maxOffset)&&const DeepCollectionEquality().equals(other.offsets, offsets));
}


@override
int get hashCode => Object.hash(runtimeType,maxOffset,const DeepCollectionEquality().hash(offsets));

@override
String toString() {
  return 'WidgetsHeightsResult(maxOffset: $maxOffset, offsets: $offsets)';
}


}

/// @nodoc
abstract mixin class $WidgetsHeightsResultCopyWith<$Res>  {
  factory $WidgetsHeightsResultCopyWith(WidgetsHeightsResult value, $Res Function(WidgetsHeightsResult) _then) = _$WidgetsHeightsResultCopyWithImpl;
@useResult
$Res call({
 ScrollPositionMax maxOffset, List<double> offsets
});




}
/// @nodoc
class _$WidgetsHeightsResultCopyWithImpl<$Res>
    implements $WidgetsHeightsResultCopyWith<$Res> {
  _$WidgetsHeightsResultCopyWithImpl(this._self, this._then);

  final WidgetsHeightsResult _self;
  final $Res Function(WidgetsHeightsResult) _then;

/// Create a copy of WidgetsHeightsResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? maxOffset = null,Object? offsets = null,}) {
  return _then(_self.copyWith(
maxOffset: null == maxOffset ? _self.maxOffset : maxOffset // ignore: cast_nullable_to_non_nullable
as ScrollPositionMax,offsets: null == offsets ? _self.offsets : offsets // ignore: cast_nullable_to_non_nullable
as List<double>,
  ));
}

}


/// Adds pattern-matching-related methods to [WidgetsHeightsResult].
extension WidgetsHeightsResultPatterns on WidgetsHeightsResult {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WidgetsHeightsResult value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WidgetsHeightsResult() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WidgetsHeightsResult value)  $default,){
final _that = this;
switch (_that) {
case _WidgetsHeightsResult():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WidgetsHeightsResult value)?  $default,){
final _that = this;
switch (_that) {
case _WidgetsHeightsResult() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ScrollPositionMax maxOffset,  List<double> offsets)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WidgetsHeightsResult() when $default != null:
return $default(_that.maxOffset,_that.offsets);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ScrollPositionMax maxOffset,  List<double> offsets)  $default,) {final _that = this;
switch (_that) {
case _WidgetsHeightsResult():
return $default(_that.maxOffset,_that.offsets);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ScrollPositionMax maxOffset,  List<double> offsets)?  $default,) {final _that = this;
switch (_that) {
case _WidgetsHeightsResult() when $default != null:
return $default(_that.maxOffset,_that.offsets);case _:
  return null;

}
}

}

/// @nodoc


class _WidgetsHeightsResult implements WidgetsHeightsResult {
  const _WidgetsHeightsResult(this.maxOffset, final  List<double> offsets): _offsets = offsets;
  

@override final  ScrollPositionMax maxOffset;
 final  List<double> _offsets;
@override List<double> get offsets {
  if (_offsets is EqualUnmodifiableListView) return _offsets;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_offsets);
}


/// Create a copy of WidgetsHeightsResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WidgetsHeightsResultCopyWith<_WidgetsHeightsResult> get copyWith => __$WidgetsHeightsResultCopyWithImpl<_WidgetsHeightsResult>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WidgetsHeightsResult&&(identical(other.maxOffset, maxOffset) || other.maxOffset == maxOffset)&&const DeepCollectionEquality().equals(other._offsets, _offsets));
}


@override
int get hashCode => Object.hash(runtimeType,maxOffset,const DeepCollectionEquality().hash(_offsets));

@override
String toString() {
  return 'WidgetsHeightsResult(maxOffset: $maxOffset, offsets: $offsets)';
}


}

/// @nodoc
abstract mixin class _$WidgetsHeightsResultCopyWith<$Res> implements $WidgetsHeightsResultCopyWith<$Res> {
  factory _$WidgetsHeightsResultCopyWith(_WidgetsHeightsResult value, $Res Function(_WidgetsHeightsResult) _then) = __$WidgetsHeightsResultCopyWithImpl;
@override @useResult
$Res call({
 ScrollPositionMax maxOffset, List<double> offsets
});




}
/// @nodoc
class __$WidgetsHeightsResultCopyWithImpl<$Res>
    implements _$WidgetsHeightsResultCopyWith<$Res> {
  __$WidgetsHeightsResultCopyWithImpl(this._self, this._then);

  final _WidgetsHeightsResult _self;
  final $Res Function(_WidgetsHeightsResult) _then;

/// Create a copy of WidgetsHeightsResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? maxOffset = null,Object? offsets = null,}) {
  return _then(_WidgetsHeightsResult(
null == maxOffset ? _self.maxOffset : maxOffset // ignore: cast_nullable_to_non_nullable
as ScrollPositionMax,null == offsets ? _self._offsets : offsets // ignore: cast_nullable_to_non_nullable
as List<double>,
  ));
}


}

// dart format on
