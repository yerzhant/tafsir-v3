// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MainState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MainState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MainState()';
}


}

/// @nodoc
class $MainStateCopyWith<$Res>  {
$MainStateCopyWith(MainState _, $Res Function(MainState) __);
}


/// Adds pattern-matching-related methods to [MainState].
extension MainStatePatterns on MainState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( MainStateSuccess value)?  success,TResult Function( MainStateFailure value)?  failure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case MainStateSuccess() when success != null:
return success(_that);case MainStateFailure() when failure != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( MainStateSuccess value)  success,required TResult Function( MainStateFailure value)  failure,}){
final _that = this;
switch (_that) {
case MainStateSuccess():
return success(_that);case MainStateFailure():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( MainStateSuccess value)?  success,TResult? Function( MainStateFailure value)?  failure,}){
final _that = this;
switch (_that) {
case MainStateSuccess() when success != null:
return success(_that);case MainStateFailure() when failure != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( MainTab tab,  List<Surah> suwar,  List<Djuz> adjzaa,  List<Bookmark> bookmarks,  List<LastRead> lastReads,  List<Muqaddimah> muqaddimat)?  success,TResult Function( AppError error)?  failure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case MainStateSuccess() when success != null:
return success(_that.tab,_that.suwar,_that.adjzaa,_that.bookmarks,_that.lastReads,_that.muqaddimat);case MainStateFailure() when failure != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( MainTab tab,  List<Surah> suwar,  List<Djuz> adjzaa,  List<Bookmark> bookmarks,  List<LastRead> lastReads,  List<Muqaddimah> muqaddimat)  success,required TResult Function( AppError error)  failure,}) {final _that = this;
switch (_that) {
case MainStateSuccess():
return success(_that.tab,_that.suwar,_that.adjzaa,_that.bookmarks,_that.lastReads,_that.muqaddimat);case MainStateFailure():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( MainTab tab,  List<Surah> suwar,  List<Djuz> adjzaa,  List<Bookmark> bookmarks,  List<LastRead> lastReads,  List<Muqaddimah> muqaddimat)?  success,TResult? Function( AppError error)?  failure,}) {final _that = this;
switch (_that) {
case MainStateSuccess() when success != null:
return success(_that.tab,_that.suwar,_that.adjzaa,_that.bookmarks,_that.lastReads,_that.muqaddimat);case MainStateFailure() when failure != null:
return failure(_that.error);case _:
  return null;

}
}

}

/// @nodoc


class MainStateSuccess implements MainState {
  const MainStateSuccess(this.tab, final  List<Surah> suwar, final  List<Djuz> adjzaa, final  List<Bookmark> bookmarks, final  List<LastRead> lastReads, final  List<Muqaddimah> muqaddimat): _suwar = suwar,_adjzaa = adjzaa,_bookmarks = bookmarks,_lastReads = lastReads,_muqaddimat = muqaddimat;
  

 final  MainTab tab;
 final  List<Surah> _suwar;
 List<Surah> get suwar {
  if (_suwar is EqualUnmodifiableListView) return _suwar;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_suwar);
}

 final  List<Djuz> _adjzaa;
 List<Djuz> get adjzaa {
  if (_adjzaa is EqualUnmodifiableListView) return _adjzaa;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_adjzaa);
}

 final  List<Bookmark> _bookmarks;
 List<Bookmark> get bookmarks {
  if (_bookmarks is EqualUnmodifiableListView) return _bookmarks;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_bookmarks);
}

 final  List<LastRead> _lastReads;
 List<LastRead> get lastReads {
  if (_lastReads is EqualUnmodifiableListView) return _lastReads;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_lastReads);
}

 final  List<Muqaddimah> _muqaddimat;
 List<Muqaddimah> get muqaddimat {
  if (_muqaddimat is EqualUnmodifiableListView) return _muqaddimat;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_muqaddimat);
}


/// Create a copy of MainState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MainStateSuccessCopyWith<MainStateSuccess> get copyWith => _$MainStateSuccessCopyWithImpl<MainStateSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MainStateSuccess&&(identical(other.tab, tab) || other.tab == tab)&&const DeepCollectionEquality().equals(other._suwar, _suwar)&&const DeepCollectionEquality().equals(other._adjzaa, _adjzaa)&&const DeepCollectionEquality().equals(other._bookmarks, _bookmarks)&&const DeepCollectionEquality().equals(other._lastReads, _lastReads)&&const DeepCollectionEquality().equals(other._muqaddimat, _muqaddimat));
}


@override
int get hashCode => Object.hash(runtimeType,tab,const DeepCollectionEquality().hash(_suwar),const DeepCollectionEquality().hash(_adjzaa),const DeepCollectionEquality().hash(_bookmarks),const DeepCollectionEquality().hash(_lastReads),const DeepCollectionEquality().hash(_muqaddimat));

@override
String toString() {
  return 'MainState.success(tab: $tab, suwar: $suwar, adjzaa: $adjzaa, bookmarks: $bookmarks, lastReads: $lastReads, muqaddimat: $muqaddimat)';
}


}

/// @nodoc
abstract mixin class $MainStateSuccessCopyWith<$Res> implements $MainStateCopyWith<$Res> {
  factory $MainStateSuccessCopyWith(MainStateSuccess value, $Res Function(MainStateSuccess) _then) = _$MainStateSuccessCopyWithImpl;
@useResult
$Res call({
 MainTab tab, List<Surah> suwar, List<Djuz> adjzaa, List<Bookmark> bookmarks, List<LastRead> lastReads, List<Muqaddimah> muqaddimat
});




}
/// @nodoc
class _$MainStateSuccessCopyWithImpl<$Res>
    implements $MainStateSuccessCopyWith<$Res> {
  _$MainStateSuccessCopyWithImpl(this._self, this._then);

  final MainStateSuccess _self;
  final $Res Function(MainStateSuccess) _then;

/// Create a copy of MainState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? tab = null,Object? suwar = null,Object? adjzaa = null,Object? bookmarks = null,Object? lastReads = null,Object? muqaddimat = null,}) {
  return _then(MainStateSuccess(
null == tab ? _self.tab : tab // ignore: cast_nullable_to_non_nullable
as MainTab,null == suwar ? _self._suwar : suwar // ignore: cast_nullable_to_non_nullable
as List<Surah>,null == adjzaa ? _self._adjzaa : adjzaa // ignore: cast_nullable_to_non_nullable
as List<Djuz>,null == bookmarks ? _self._bookmarks : bookmarks // ignore: cast_nullable_to_non_nullable
as List<Bookmark>,null == lastReads ? _self._lastReads : lastReads // ignore: cast_nullable_to_non_nullable
as List<LastRead>,null == muqaddimat ? _self._muqaddimat : muqaddimat // ignore: cast_nullable_to_non_nullable
as List<Muqaddimah>,
  ));
}


}

/// @nodoc


class MainStateFailure implements MainState {
  const MainStateFailure(this.error);
  

 final  AppError error;

/// Create a copy of MainState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MainStateFailureCopyWith<MainStateFailure> get copyWith => _$MainStateFailureCopyWithImpl<MainStateFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MainStateFailure&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'MainState.failure(error: $error)';
}


}

/// @nodoc
abstract mixin class $MainStateFailureCopyWith<$Res> implements $MainStateCopyWith<$Res> {
  factory $MainStateFailureCopyWith(MainStateFailure value, $Res Function(MainStateFailure) _then) = _$MainStateFailureCopyWithImpl;
@useResult
$Res call({
 AppError error
});


$AppErrorCopyWith<$Res> get error;

}
/// @nodoc
class _$MainStateFailureCopyWithImpl<$Res>
    implements $MainStateFailureCopyWith<$Res> {
  _$MainStateFailureCopyWithImpl(this._self, this._then);

  final MainStateFailure _self;
  final $Res Function(MainStateFailure) _then;

/// Create a copy of MainState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(MainStateFailure(
null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as AppError,
  ));
}

/// Create a copy of MainState
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
