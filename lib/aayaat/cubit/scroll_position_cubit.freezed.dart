// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'scroll_position_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ScrollPositionState {

 ScrollPositionProgress get progress; AayahNumber get minVisible;
/// Create a copy of ScrollPositionState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ScrollPositionStateCopyWith<ScrollPositionState> get copyWith => _$ScrollPositionStateCopyWithImpl<ScrollPositionState>(this as ScrollPositionState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ScrollPositionState&&(identical(other.progress, progress) || other.progress == progress)&&(identical(other.minVisible, minVisible) || other.minVisible == minVisible));
}


@override
int get hashCode => Object.hash(runtimeType,progress,minVisible);

@override
String toString() {
  return 'ScrollPositionState(progress: $progress, minVisible: $minVisible)';
}


}

/// @nodoc
abstract mixin class $ScrollPositionStateCopyWith<$Res>  {
  factory $ScrollPositionStateCopyWith(ScrollPositionState value, $Res Function(ScrollPositionState) _then) = _$ScrollPositionStateCopyWithImpl;
@useResult
$Res call({
 ScrollPositionProgress progress, AayahNumber minVisible
});




}
/// @nodoc
class _$ScrollPositionStateCopyWithImpl<$Res>
    implements $ScrollPositionStateCopyWith<$Res> {
  _$ScrollPositionStateCopyWithImpl(this._self, this._then);

  final ScrollPositionState _self;
  final $Res Function(ScrollPositionState) _then;

/// Create a copy of ScrollPositionState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? progress = null,Object? minVisible = null,}) {
  return _then(_self.copyWith(
progress: null == progress ? _self.progress : progress // ignore: cast_nullable_to_non_nullable
as ScrollPositionProgress,minVisible: null == minVisible ? _self.minVisible : minVisible // ignore: cast_nullable_to_non_nullable
as AayahNumber,
  ));
}

}


/// Adds pattern-matching-related methods to [ScrollPositionState].
extension ScrollPositionStatePatterns on ScrollPositionState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Current value)?  current,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Current() when current != null:
return current(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Current value)  current,}){
final _that = this;
switch (_that) {
case _Current():
return current(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Current value)?  current,}){
final _that = this;
switch (_that) {
case _Current() when current != null:
return current(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( ScrollPositionProgress progress,  AayahNumber minVisible)?  current,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Current() when current != null:
return current(_that.progress,_that.minVisible);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( ScrollPositionProgress progress,  AayahNumber minVisible)  current,}) {final _that = this;
switch (_that) {
case _Current():
return current(_that.progress,_that.minVisible);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( ScrollPositionProgress progress,  AayahNumber minVisible)?  current,}) {final _that = this;
switch (_that) {
case _Current() when current != null:
return current(_that.progress,_that.minVisible);case _:
  return null;

}
}

}

/// @nodoc


class _Current implements ScrollPositionState {
  const _Current(this.progress, this.minVisible);
  

@override final  ScrollPositionProgress progress;
@override final  AayahNumber minVisible;

/// Create a copy of ScrollPositionState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CurrentCopyWith<_Current> get copyWith => __$CurrentCopyWithImpl<_Current>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Current&&(identical(other.progress, progress) || other.progress == progress)&&(identical(other.minVisible, minVisible) || other.minVisible == minVisible));
}


@override
int get hashCode => Object.hash(runtimeType,progress,minVisible);

@override
String toString() {
  return 'ScrollPositionState.current(progress: $progress, minVisible: $minVisible)';
}


}

/// @nodoc
abstract mixin class _$CurrentCopyWith<$Res> implements $ScrollPositionStateCopyWith<$Res> {
  factory _$CurrentCopyWith(_Current value, $Res Function(_Current) _then) = __$CurrentCopyWithImpl;
@override @useResult
$Res call({
 ScrollPositionProgress progress, AayahNumber minVisible
});




}
/// @nodoc
class __$CurrentCopyWithImpl<$Res>
    implements _$CurrentCopyWith<$Res> {
  __$CurrentCopyWithImpl(this._self, this._then);

  final _Current _self;
  final $Res Function(_Current) _then;

/// Create a copy of ScrollPositionState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? progress = null,Object? minVisible = null,}) {
  return _then(_Current(
null == progress ? _self.progress : progress // ignore: cast_nullable_to_non_nullable
as ScrollPositionProgress,null == minVisible ? _self.minVisible : minVisible // ignore: cast_nullable_to_non_nullable
as AayahNumber,
  ));
}


}

// dart format on
