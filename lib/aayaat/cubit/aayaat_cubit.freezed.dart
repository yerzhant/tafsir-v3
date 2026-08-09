// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'aayaat_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AayaatState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AayaatState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AayaatState()';
}


}

/// @nodoc
class $AayaatStateCopyWith<$Res>  {
$AayaatStateCopyWith(AayaatState _, $Res Function(AayaatState) __);
}


/// Adds pattern-matching-related methods to [AayaatState].
extension AayaatStatePatterns on AayaatState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( AayaatStateSuccess value)?  success,TResult Function( AayaatStateFailure value)?  failure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case AayaatStateSuccess() when success != null:
return success(_that);case AayaatStateFailure() when failure != null:
return failure(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( AayaatStateSuccess value)  success,required TResult Function( AayaatStateFailure value)  failure,}){
final _that = this;
switch (_that) {
case AayaatStateSuccess():
return success(_that);case AayaatStateFailure():
return failure(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( AayaatStateSuccess value)?  success,TResult? Function( AayaatStateFailure value)?  failure,}){
final _that = this;
switch (_that) {
case AayaatStateSuccess() when success != null:
return success(_that);case AayaatStateFailure() when failure != null:
return failure(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( AyahPosition position,  List<Aayah> aayaat,  Set<AayahNumber> bookmarks)?  success,TResult Function( AppError error)?  failure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case AayaatStateSuccess() when success != null:
return success(_that.position,_that.aayaat,_that.bookmarks);case AayaatStateFailure() when failure != null:
return failure(_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( AyahPosition position,  List<Aayah> aayaat,  Set<AayahNumber> bookmarks)  success,required TResult Function( AppError error)  failure,}) {final _that = this;
switch (_that) {
case AayaatStateSuccess():
return success(_that.position,_that.aayaat,_that.bookmarks);case AayaatStateFailure():
return failure(_that.error);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( AyahPosition position,  List<Aayah> aayaat,  Set<AayahNumber> bookmarks)?  success,TResult? Function( AppError error)?  failure,}) {final _that = this;
switch (_that) {
case AayaatStateSuccess() when success != null:
return success(_that.position,_that.aayaat,_that.bookmarks);case AayaatStateFailure() when failure != null:
return failure(_that.error);case _:
  return null;

}
}

}

/// @nodoc


class AayaatStateSuccess implements AayaatState {
  const AayaatStateSuccess(this.position, final  List<Aayah> aayaat, final  Set<AayahNumber> bookmarks): _aayaat = aayaat,_bookmarks = bookmarks;
  

 final  AyahPosition position;
 final  List<Aayah> _aayaat;
 List<Aayah> get aayaat {
  if (_aayaat is EqualUnmodifiableListView) return _aayaat;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_aayaat);
}

 final  Set<AayahNumber> _bookmarks;
 Set<AayahNumber> get bookmarks {
  if (_bookmarks is EqualUnmodifiableSetView) return _bookmarks;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableSetView(_bookmarks);
}


/// Create a copy of AayaatState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AayaatStateSuccessCopyWith<AayaatStateSuccess> get copyWith => _$AayaatStateSuccessCopyWithImpl<AayaatStateSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AayaatStateSuccess&&(identical(other.position, position) || other.position == position)&&const DeepCollectionEquality().equals(other._aayaat, _aayaat)&&const DeepCollectionEquality().equals(other._bookmarks, _bookmarks));
}


@override
int get hashCode => Object.hash(runtimeType,position,const DeepCollectionEquality().hash(_aayaat),const DeepCollectionEquality().hash(_bookmarks));

@override
String toString() {
  return 'AayaatState.success(position: $position, aayaat: $aayaat, bookmarks: $bookmarks)';
}


}

/// @nodoc
abstract mixin class $AayaatStateSuccessCopyWith<$Res> implements $AayaatStateCopyWith<$Res> {
  factory $AayaatStateSuccessCopyWith(AayaatStateSuccess value, $Res Function(AayaatStateSuccess) _then) = _$AayaatStateSuccessCopyWithImpl;
@useResult
$Res call({
 AyahPosition position, List<Aayah> aayaat, Set<AayahNumber> bookmarks
});


$AyahPositionCopyWith<$Res> get position;

}
/// @nodoc
class _$AayaatStateSuccessCopyWithImpl<$Res>
    implements $AayaatStateSuccessCopyWith<$Res> {
  _$AayaatStateSuccessCopyWithImpl(this._self, this._then);

  final AayaatStateSuccess _self;
  final $Res Function(AayaatStateSuccess) _then;

/// Create a copy of AayaatState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? position = null,Object? aayaat = null,Object? bookmarks = null,}) {
  return _then(AayaatStateSuccess(
null == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as AyahPosition,null == aayaat ? _self._aayaat : aayaat // ignore: cast_nullable_to_non_nullable
as List<Aayah>,null == bookmarks ? _self._bookmarks : bookmarks // ignore: cast_nullable_to_non_nullable
as Set<AayahNumber>,
  ));
}

/// Create a copy of AayaatState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AyahPositionCopyWith<$Res> get position {
  
  return $AyahPositionCopyWith<$Res>(_self.position, (value) {
    return _then(_self.copyWith(position: value));
  });
}
}

/// @nodoc


class AayaatStateFailure implements AayaatState {
  const AayaatStateFailure(this.error);
  

 final  AppError error;

/// Create a copy of AayaatState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AayaatStateFailureCopyWith<AayaatStateFailure> get copyWith => _$AayaatStateFailureCopyWithImpl<AayaatStateFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AayaatStateFailure&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'AayaatState.failure(error: $error)';
}


}

/// @nodoc
abstract mixin class $AayaatStateFailureCopyWith<$Res> implements $AayaatStateCopyWith<$Res> {
  factory $AayaatStateFailureCopyWith(AayaatStateFailure value, $Res Function(AayaatStateFailure) _then) = _$AayaatStateFailureCopyWithImpl;
@useResult
$Res call({
 AppError error
});


$AppErrorCopyWith<$Res> get error;

}
/// @nodoc
class _$AayaatStateFailureCopyWithImpl<$Res>
    implements $AayaatStateFailureCopyWith<$Res> {
  _$AayaatStateFailureCopyWithImpl(this._self, this._then);

  final AayaatStateFailure _self;
  final $Res Function(AayaatStateFailure) _then;

/// Create a copy of AayaatState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(AayaatStateFailure(
null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as AppError,
  ));
}

/// Create a copy of AayaatState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AppErrorCopyWith<$Res> get error {
  
  return $AppErrorCopyWith<$Res>(_self.error, (value) {
    return _then(_self.copyWith(error: value));
  });
}
}

// dart format on
