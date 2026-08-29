// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'init_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$InitState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InitState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'InitState()';
}


}

/// @nodoc
class $InitStateCopyWith<$Res>  {
$InitStateCopyWith(InitState _, $Res Function(InitState) __);
}


/// Adds pattern-matching-related methods to [InitState].
extension InitStatePatterns on InitState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( InitStateInitialized value)?  initialized,TResult Function( InitStateFailure value)?  failure,TResult Function( InitStateInitializing value)?  initializing,required TResult orElse(),}){
final _that = this;
switch (_that) {
case InitStateInitialized() when initialized != null:
return initialized(_that);case InitStateFailure() when failure != null:
return failure(_that);case InitStateInitializing() when initializing != null:
return initializing(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( InitStateInitialized value)  initialized,required TResult Function( InitStateFailure value)  failure,required TResult Function( InitStateInitializing value)  initializing,}){
final _that = this;
switch (_that) {
case InitStateInitialized():
return initialized(_that);case InitStateFailure():
return failure(_that);case InitStateInitializing():
return initializing(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( InitStateInitialized value)?  initialized,TResult? Function( InitStateFailure value)?  failure,TResult? Function( InitStateInitializing value)?  initializing,}){
final _that = this;
switch (_that) {
case InitStateInitialized() when initialized != null:
return initialized(_that);case InitStateFailure() when failure != null:
return failure(_that);case InitStateInitializing() when initializing != null:
return initializing(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initialized,TResult Function( AppError error)?  failure,TResult Function( double? progress)?  initializing,required TResult orElse(),}) {final _that = this;
switch (_that) {
case InitStateInitialized() when initialized != null:
return initialized();case InitStateFailure() when failure != null:
return failure(_that.error);case InitStateInitializing() when initializing != null:
return initializing(_that.progress);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initialized,required TResult Function( AppError error)  failure,required TResult Function( double? progress)  initializing,}) {final _that = this;
switch (_that) {
case InitStateInitialized():
return initialized();case InitStateFailure():
return failure(_that.error);case InitStateInitializing():
return initializing(_that.progress);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initialized,TResult? Function( AppError error)?  failure,TResult? Function( double? progress)?  initializing,}) {final _that = this;
switch (_that) {
case InitStateInitialized() when initialized != null:
return initialized();case InitStateFailure() when failure != null:
return failure(_that.error);case InitStateInitializing() when initializing != null:
return initializing(_that.progress);case _:
  return null;

}
}

}

/// @nodoc


class InitStateInitialized implements InitState {
  const InitStateInitialized();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InitStateInitialized);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'InitState.initialized()';
}


}




/// @nodoc


class InitStateFailure implements InitState {
  const InitStateFailure(this.error);
  

 final  AppError error;

/// Create a copy of InitState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InitStateFailureCopyWith<InitStateFailure> get copyWith => _$InitStateFailureCopyWithImpl<InitStateFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InitStateFailure&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'InitState.failure(error: $error)';
}


}

/// @nodoc
abstract mixin class $InitStateFailureCopyWith<$Res> implements $InitStateCopyWith<$Res> {
  factory $InitStateFailureCopyWith(InitStateFailure value, $Res Function(InitStateFailure) _then) = _$InitStateFailureCopyWithImpl;
@useResult
$Res call({
 AppError error
});


$AppErrorCopyWith<$Res> get error;

}
/// @nodoc
class _$InitStateFailureCopyWithImpl<$Res>
    implements $InitStateFailureCopyWith<$Res> {
  _$InitStateFailureCopyWithImpl(this._self, this._then);

  final InitStateFailure _self;
  final $Res Function(InitStateFailure) _then;

/// Create a copy of InitState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(InitStateFailure(
null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as AppError,
  ));
}

/// Create a copy of InitState
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


class InitStateInitializing implements InitState {
  const InitStateInitializing(this.progress);
  

 final  double? progress;

/// Create a copy of InitState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InitStateInitializingCopyWith<InitStateInitializing> get copyWith => _$InitStateInitializingCopyWithImpl<InitStateInitializing>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InitStateInitializing&&(identical(other.progress, progress) || other.progress == progress));
}


@override
int get hashCode => Object.hash(runtimeType,progress);

@override
String toString() {
  return 'InitState.initializing(progress: $progress)';
}


}

/// @nodoc
abstract mixin class $InitStateInitializingCopyWith<$Res> implements $InitStateCopyWith<$Res> {
  factory $InitStateInitializingCopyWith(InitStateInitializing value, $Res Function(InitStateInitializing) _then) = _$InitStateInitializingCopyWithImpl;
@useResult
$Res call({
 double? progress
});




}
/// @nodoc
class _$InitStateInitializingCopyWithImpl<$Res>
    implements $InitStateInitializingCopyWith<$Res> {
  _$InitStateInitializingCopyWithImpl(this._self, this._then);

  final InitStateInitializing _self;
  final $Res Function(InitStateInitializing) _then;

/// Create a copy of InitState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? progress = freezed,}) {
  return _then(InitStateInitializing(
freezed == progress ? _self.progress : progress // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}

// dart format on
