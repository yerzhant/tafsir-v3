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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( AayaatStateInProgress value)?  inProgress,TResult Function( AayaatStateFailure value)?  failure,TResult Function( AayaatStateSuccess value)?  success,required TResult orElse(),}){
final _that = this;
switch (_that) {
case AayaatStateInProgress() when inProgress != null:
return inProgress(_that);case AayaatStateFailure() when failure != null:
return failure(_that);case AayaatStateSuccess() when success != null:
return success(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( AayaatStateInProgress value)  inProgress,required TResult Function( AayaatStateFailure value)  failure,required TResult Function( AayaatStateSuccess value)  success,}){
final _that = this;
switch (_that) {
case AayaatStateInProgress():
return inProgress(_that);case AayaatStateFailure():
return failure(_that);case AayaatStateSuccess():
return success(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( AayaatStateInProgress value)?  inProgress,TResult? Function( AayaatStateFailure value)?  failure,TResult? Function( AayaatStateSuccess value)?  success,}){
final _that = this;
switch (_that) {
case AayaatStateInProgress() when inProgress != null:
return inProgress(_that);case AayaatStateFailure() when failure != null:
return failure(_that);case AayaatStateSuccess() when success != null:
return success(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  inProgress,TResult Function( AppError error)?  failure,TResult Function( Surah surah,  List<Aayah> aayaat,  Set<AayahNumber> bookmarks,  AyahPosition scrollToPosition,  ScrollPositionMax scrollProgressMax,  bool scrollToNewPosition,  bool inProgerss)?  success,required TResult orElse(),}) {final _that = this;
switch (_that) {
case AayaatStateInProgress() when inProgress != null:
return inProgress();case AayaatStateFailure() when failure != null:
return failure(_that.error);case AayaatStateSuccess() when success != null:
return success(_that.surah,_that.aayaat,_that.bookmarks,_that.scrollToPosition,_that.scrollProgressMax,_that.scrollToNewPosition,_that.inProgerss);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  inProgress,required TResult Function( AppError error)  failure,required TResult Function( Surah surah,  List<Aayah> aayaat,  Set<AayahNumber> bookmarks,  AyahPosition scrollToPosition,  ScrollPositionMax scrollProgressMax,  bool scrollToNewPosition,  bool inProgerss)  success,}) {final _that = this;
switch (_that) {
case AayaatStateInProgress():
return inProgress();case AayaatStateFailure():
return failure(_that.error);case AayaatStateSuccess():
return success(_that.surah,_that.aayaat,_that.bookmarks,_that.scrollToPosition,_that.scrollProgressMax,_that.scrollToNewPosition,_that.inProgerss);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  inProgress,TResult? Function( AppError error)?  failure,TResult? Function( Surah surah,  List<Aayah> aayaat,  Set<AayahNumber> bookmarks,  AyahPosition scrollToPosition,  ScrollPositionMax scrollProgressMax,  bool scrollToNewPosition,  bool inProgerss)?  success,}) {final _that = this;
switch (_that) {
case AayaatStateInProgress() when inProgress != null:
return inProgress();case AayaatStateFailure() when failure != null:
return failure(_that.error);case AayaatStateSuccess() when success != null:
return success(_that.surah,_that.aayaat,_that.bookmarks,_that.scrollToPosition,_that.scrollProgressMax,_that.scrollToNewPosition,_that.inProgerss);case _:
  return null;

}
}

}

/// @nodoc


class AayaatStateInProgress implements AayaatState {
  const AayaatStateInProgress();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AayaatStateInProgress);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AayaatState.inProgress()';
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

/// @nodoc


class AayaatStateSuccess implements AayaatState {
  const AayaatStateSuccess(this.surah, final  List<Aayah> aayaat, final  Set<AayahNumber> bookmarks, this.scrollToPosition, this.scrollProgressMax, this.scrollToNewPosition, this.inProgerss): _aayaat = aayaat,_bookmarks = bookmarks;
  

 final  Surah surah;
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

 final  AyahPosition scrollToPosition;
 final  ScrollPositionMax scrollProgressMax;
 final  bool scrollToNewPosition;
 final  bool inProgerss;

/// Create a copy of AayaatState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AayaatStateSuccessCopyWith<AayaatStateSuccess> get copyWith => _$AayaatStateSuccessCopyWithImpl<AayaatStateSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AayaatStateSuccess&&(identical(other.surah, surah) || other.surah == surah)&&const DeepCollectionEquality().equals(other._aayaat, _aayaat)&&const DeepCollectionEquality().equals(other._bookmarks, _bookmarks)&&(identical(other.scrollToPosition, scrollToPosition) || other.scrollToPosition == scrollToPosition)&&(identical(other.scrollProgressMax, scrollProgressMax) || other.scrollProgressMax == scrollProgressMax)&&(identical(other.scrollToNewPosition, scrollToNewPosition) || other.scrollToNewPosition == scrollToNewPosition)&&(identical(other.inProgerss, inProgerss) || other.inProgerss == inProgerss));
}


@override
int get hashCode => Object.hash(runtimeType,surah,const DeepCollectionEquality().hash(_aayaat),const DeepCollectionEquality().hash(_bookmarks),scrollToPosition,scrollProgressMax,scrollToNewPosition,inProgerss);

@override
String toString() {
  return 'AayaatState.success(surah: $surah, aayaat: $aayaat, bookmarks: $bookmarks, scrollToPosition: $scrollToPosition, scrollProgressMax: $scrollProgressMax, scrollToNewPosition: $scrollToNewPosition, inProgerss: $inProgerss)';
}


}

/// @nodoc
abstract mixin class $AayaatStateSuccessCopyWith<$Res> implements $AayaatStateCopyWith<$Res> {
  factory $AayaatStateSuccessCopyWith(AayaatStateSuccess value, $Res Function(AayaatStateSuccess) _then) = _$AayaatStateSuccessCopyWithImpl;
@useResult
$Res call({
 Surah surah, List<Aayah> aayaat, Set<AayahNumber> bookmarks, AyahPosition scrollToPosition, ScrollPositionMax scrollProgressMax, bool scrollToNewPosition, bool inProgerss
});


$SurahCopyWith<$Res> get surah;$AyahPositionCopyWith<$Res> get scrollToPosition;

}
/// @nodoc
class _$AayaatStateSuccessCopyWithImpl<$Res>
    implements $AayaatStateSuccessCopyWith<$Res> {
  _$AayaatStateSuccessCopyWithImpl(this._self, this._then);

  final AayaatStateSuccess _self;
  final $Res Function(AayaatStateSuccess) _then;

/// Create a copy of AayaatState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? surah = null,Object? aayaat = null,Object? bookmarks = null,Object? scrollToPosition = null,Object? scrollProgressMax = null,Object? scrollToNewPosition = null,Object? inProgerss = null,}) {
  return _then(AayaatStateSuccess(
null == surah ? _self.surah : surah // ignore: cast_nullable_to_non_nullable
as Surah,null == aayaat ? _self._aayaat : aayaat // ignore: cast_nullable_to_non_nullable
as List<Aayah>,null == bookmarks ? _self._bookmarks : bookmarks // ignore: cast_nullable_to_non_nullable
as Set<AayahNumber>,null == scrollToPosition ? _self.scrollToPosition : scrollToPosition // ignore: cast_nullable_to_non_nullable
as AyahPosition,null == scrollProgressMax ? _self.scrollProgressMax : scrollProgressMax // ignore: cast_nullable_to_non_nullable
as ScrollPositionMax,null == scrollToNewPosition ? _self.scrollToNewPosition : scrollToNewPosition // ignore: cast_nullable_to_non_nullable
as bool,null == inProgerss ? _self.inProgerss : inProgerss // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of AayaatState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SurahCopyWith<$Res> get surah {
  
  return $SurahCopyWith<$Res>(_self.surah, (value) {
    return _then(_self.copyWith(surah: value));
  });
}/// Create a copy of AayaatState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AyahPositionCopyWith<$Res> get scrollToPosition {
  
  return $AyahPositionCopyWith<$Res>(_self.scrollToPosition, (value) {
    return _then(_self.copyWith(scrollToPosition: value));
  });
}
}

// dart format on
