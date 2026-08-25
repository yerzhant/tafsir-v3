// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'player_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PlayerState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PlayerState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PlayerState()';
}


}

/// @nodoc
class $PlayerStateCopyWith<$Res>  {
$PlayerStateCopyWith(PlayerState _, $Res Function(PlayerState) __);
}


/// Adds pattern-matching-related methods to [PlayerState].
extension PlayerStatePatterns on PlayerState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( PlayerStateInactive value)?  inactive,TResult Function( PlayerStateFailure value)?  failure,TResult Function( PlayerStatePlaying value)?  playing,required TResult orElse(),}){
final _that = this;
switch (_that) {
case PlayerStateInactive() when inactive != null:
return inactive(_that);case PlayerStateFailure() when failure != null:
return failure(_that);case PlayerStatePlaying() when playing != null:
return playing(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( PlayerStateInactive value)  inactive,required TResult Function( PlayerStateFailure value)  failure,required TResult Function( PlayerStatePlaying value)  playing,}){
final _that = this;
switch (_that) {
case PlayerStateInactive():
return inactive(_that);case PlayerStateFailure():
return failure(_that);case PlayerStatePlaying():
return playing(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( PlayerStateInactive value)?  inactive,TResult? Function( PlayerStateFailure value)?  failure,TResult? Function( PlayerStatePlaying value)?  playing,}){
final _that = this;
switch (_that) {
case PlayerStateInactive() when inactive != null:
return inactive(_that);case PlayerStateFailure() when failure != null:
return failure(_that);case PlayerStatePlaying() when playing != null:
return playing(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  inactive,TResult Function( AppError error)?  failure,TResult Function( bool isReady,  bool isPaused,  bool isLooping,  PlayerPosition position)?  playing,required TResult orElse(),}) {final _that = this;
switch (_that) {
case PlayerStateInactive() when inactive != null:
return inactive();case PlayerStateFailure() when failure != null:
return failure(_that.error);case PlayerStatePlaying() when playing != null:
return playing(_that.isReady,_that.isPaused,_that.isLooping,_that.position);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  inactive,required TResult Function( AppError error)  failure,required TResult Function( bool isReady,  bool isPaused,  bool isLooping,  PlayerPosition position)  playing,}) {final _that = this;
switch (_that) {
case PlayerStateInactive():
return inactive();case PlayerStateFailure():
return failure(_that.error);case PlayerStatePlaying():
return playing(_that.isReady,_that.isPaused,_that.isLooping,_that.position);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  inactive,TResult? Function( AppError error)?  failure,TResult? Function( bool isReady,  bool isPaused,  bool isLooping,  PlayerPosition position)?  playing,}) {final _that = this;
switch (_that) {
case PlayerStateInactive() when inactive != null:
return inactive();case PlayerStateFailure() when failure != null:
return failure(_that.error);case PlayerStatePlaying() when playing != null:
return playing(_that.isReady,_that.isPaused,_that.isLooping,_that.position);case _:
  return null;

}
}

}

/// @nodoc


class PlayerStateInactive implements PlayerState {
  const PlayerStateInactive();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PlayerStateInactive);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PlayerState.inactive()';
}


}




/// @nodoc


class PlayerStateFailure implements PlayerState {
  const PlayerStateFailure(this.error);
  

 final  AppError error;

/// Create a copy of PlayerState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PlayerStateFailureCopyWith<PlayerStateFailure> get copyWith => _$PlayerStateFailureCopyWithImpl<PlayerStateFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PlayerStateFailure&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'PlayerState.failure(error: $error)';
}


}

/// @nodoc
abstract mixin class $PlayerStateFailureCopyWith<$Res> implements $PlayerStateCopyWith<$Res> {
  factory $PlayerStateFailureCopyWith(PlayerStateFailure value, $Res Function(PlayerStateFailure) _then) = _$PlayerStateFailureCopyWithImpl;
@useResult
$Res call({
 AppError error
});


$AppErrorCopyWith<$Res> get error;

}
/// @nodoc
class _$PlayerStateFailureCopyWithImpl<$Res>
    implements $PlayerStateFailureCopyWith<$Res> {
  _$PlayerStateFailureCopyWithImpl(this._self, this._then);

  final PlayerStateFailure _self;
  final $Res Function(PlayerStateFailure) _then;

/// Create a copy of PlayerState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(PlayerStateFailure(
null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as AppError,
  ));
}

/// Create a copy of PlayerState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AppErrorCopyWith<$Res> get error {
  
  return $AppErrorCopyWith<$Res>(_self.error, (value) {
    return _then(_self.copyWith(error: value));
  });
}
}

/// @nodoc


class PlayerStatePlaying implements PlayerState {
  const PlayerStatePlaying(this.isReady, this.isPaused, this.isLooping, this.position);
  

 final  bool isReady;
 final  bool isPaused;
 final  bool isLooping;
 final  PlayerPosition position;

/// Create a copy of PlayerState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PlayerStatePlayingCopyWith<PlayerStatePlaying> get copyWith => _$PlayerStatePlayingCopyWithImpl<PlayerStatePlaying>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PlayerStatePlaying&&(identical(other.isReady, isReady) || other.isReady == isReady)&&(identical(other.isPaused, isPaused) || other.isPaused == isPaused)&&(identical(other.isLooping, isLooping) || other.isLooping == isLooping)&&(identical(other.position, position) || other.position == position));
}


@override
int get hashCode => Object.hash(runtimeType,isReady,isPaused,isLooping,position);

@override
String toString() {
  return 'PlayerState.playing(isReady: $isReady, isPaused: $isPaused, isLooping: $isLooping, position: $position)';
}


}

/// @nodoc
abstract mixin class $PlayerStatePlayingCopyWith<$Res> implements $PlayerStateCopyWith<$Res> {
  factory $PlayerStatePlayingCopyWith(PlayerStatePlaying value, $Res Function(PlayerStatePlaying) _then) = _$PlayerStatePlayingCopyWithImpl;
@useResult
$Res call({
 bool isReady, bool isPaused, bool isLooping, PlayerPosition position
});


$PlayerPositionCopyWith<$Res> get position;

}
/// @nodoc
class _$PlayerStatePlayingCopyWithImpl<$Res>
    implements $PlayerStatePlayingCopyWith<$Res> {
  _$PlayerStatePlayingCopyWithImpl(this._self, this._then);

  final PlayerStatePlaying _self;
  final $Res Function(PlayerStatePlaying) _then;

/// Create a copy of PlayerState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? isReady = null,Object? isPaused = null,Object? isLooping = null,Object? position = null,}) {
  return _then(PlayerStatePlaying(
null == isReady ? _self.isReady : isReady // ignore: cast_nullable_to_non_nullable
as bool,null == isPaused ? _self.isPaused : isPaused // ignore: cast_nullable_to_non_nullable
as bool,null == isLooping ? _self.isLooping : isLooping // ignore: cast_nullable_to_non_nullable
as bool,null == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as PlayerPosition,
  ));
}

/// Create a copy of PlayerState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PlayerPositionCopyWith<$Res> get position {
  
  return $PlayerPositionCopyWith<$Res>(_self.position, (value) {
    return _then(_self.copyWith(position: value));
  });
}
}

// dart format on
