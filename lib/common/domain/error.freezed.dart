// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'error.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AppError {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppError);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppError()';
}


}

/// @nodoc
class $AppErrorCopyWith<$Res>  {
$AppErrorCopyWith(AppError _, $Res Function(AppError) __);
}


/// Adds pattern-matching-related methods to [AppError].
extension AppErrorPatterns on AppError {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( GeneralError value)?  general,TResult Function( ExceptionError value)?  exception,required TResult orElse(),}){
final _that = this;
switch (_that) {
case GeneralError() when general != null:
return general(_that);case ExceptionError() when exception != null:
return exception(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( GeneralError value)  general,required TResult Function( ExceptionError value)  exception,}){
final _that = this;
switch (_that) {
case GeneralError():
return general(_that);case ExceptionError():
return exception(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( GeneralError value)?  general,TResult? Function( ExceptionError value)?  exception,}){
final _that = this;
switch (_that) {
case GeneralError() when general != null:
return general(_that);case ExceptionError() when exception != null:
return exception(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String message)?  general,TResult Function( Object error,  StackTrace trace)?  exception,required TResult orElse(),}) {final _that = this;
switch (_that) {
case GeneralError() when general != null:
return general(_that.message);case ExceptionError() when exception != null:
return exception(_that.error,_that.trace);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String message)  general,required TResult Function( Object error,  StackTrace trace)  exception,}) {final _that = this;
switch (_that) {
case GeneralError():
return general(_that.message);case ExceptionError():
return exception(_that.error,_that.trace);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String message)?  general,TResult? Function( Object error,  StackTrace trace)?  exception,}) {final _that = this;
switch (_that) {
case GeneralError() when general != null:
return general(_that.message);case ExceptionError() when exception != null:
return exception(_that.error,_that.trace);case _:
  return null;

}
}

}

/// @nodoc


class GeneralError extends AppError {
  const GeneralError(this.message): super._();
  

 final  String message;

/// Create a copy of AppError
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GeneralErrorCopyWith<GeneralError> get copyWith => _$GeneralErrorCopyWithImpl<GeneralError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GeneralError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'AppError.general(message: $message)';
}


}

/// @nodoc
abstract mixin class $GeneralErrorCopyWith<$Res> implements $AppErrorCopyWith<$Res> {
  factory $GeneralErrorCopyWith(GeneralError value, $Res Function(GeneralError) _then) = _$GeneralErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$GeneralErrorCopyWithImpl<$Res>
    implements $GeneralErrorCopyWith<$Res> {
  _$GeneralErrorCopyWithImpl(this._self, this._then);

  final GeneralError _self;
  final $Res Function(GeneralError) _then;

/// Create a copy of AppError
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(GeneralError(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class ExceptionError extends AppError {
  const ExceptionError(this.error, this.trace): super._();
  

 final  Object error;
 final  StackTrace trace;

/// Create a copy of AppError
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExceptionErrorCopyWith<ExceptionError> get copyWith => _$ExceptionErrorCopyWithImpl<ExceptionError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExceptionError&&const DeepCollectionEquality().equals(other.error, error)&&(identical(other.trace, trace) || other.trace == trace));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(error),trace);

@override
String toString() {
  return 'AppError.exception(error: $error, trace: $trace)';
}


}

/// @nodoc
abstract mixin class $ExceptionErrorCopyWith<$Res> implements $AppErrorCopyWith<$Res> {
  factory $ExceptionErrorCopyWith(ExceptionError value, $Res Function(ExceptionError) _then) = _$ExceptionErrorCopyWithImpl;
@useResult
$Res call({
 Object error, StackTrace trace
});




}
/// @nodoc
class _$ExceptionErrorCopyWithImpl<$Res>
    implements $ExceptionErrorCopyWith<$Res> {
  _$ExceptionErrorCopyWithImpl(this._self, this._then);

  final ExceptionError _self;
  final $Res Function(ExceptionError) _then;

/// Create a copy of AppError
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,Object? trace = null,}) {
  return _then(ExceptionError(
null == error ? _self.error : error ,null == trace ? _self.trace : trace // ignore: cast_nullable_to_non_nullable
as StackTrace,
  ));
}


}

// dart format on
