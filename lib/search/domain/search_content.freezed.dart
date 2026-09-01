// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_content.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SearchContent {

 SurahName get surahName; SurahNumber get surahNumber; AayahNumber get aayahNumber; AayahContent get content;
/// Create a copy of SearchContent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchContentCopyWith<SearchContent> get copyWith => _$SearchContentCopyWithImpl<SearchContent>(this as SearchContent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchContent&&(identical(other.surahName, surahName) || other.surahName == surahName)&&(identical(other.surahNumber, surahNumber) || other.surahNumber == surahNumber)&&(identical(other.aayahNumber, aayahNumber) || other.aayahNumber == aayahNumber)&&(identical(other.content, content) || other.content == content));
}


@override
int get hashCode => Object.hash(runtimeType,surahName,surahNumber,aayahNumber,content);

@override
String toString() {
  return 'SearchContent(surahName: $surahName, surahNumber: $surahNumber, aayahNumber: $aayahNumber, content: $content)';
}


}

/// @nodoc
abstract mixin class $SearchContentCopyWith<$Res>  {
  factory $SearchContentCopyWith(SearchContent value, $Res Function(SearchContent) _then) = _$SearchContentCopyWithImpl;
@useResult
$Res call({
 SurahName surahName, SurahNumber surahNumber, AayahNumber aayahNumber, AayahContent content
});




}
/// @nodoc
class _$SearchContentCopyWithImpl<$Res>
    implements $SearchContentCopyWith<$Res> {
  _$SearchContentCopyWithImpl(this._self, this._then);

  final SearchContent _self;
  final $Res Function(SearchContent) _then;

/// Create a copy of SearchContent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? surahName = null,Object? surahNumber = null,Object? aayahNumber = null,Object? content = null,}) {
  return _then(_self.copyWith(
surahName: null == surahName ? _self.surahName : surahName // ignore: cast_nullable_to_non_nullable
as SurahName,surahNumber: null == surahNumber ? _self.surahNumber : surahNumber // ignore: cast_nullable_to_non_nullable
as SurahNumber,aayahNumber: null == aayahNumber ? _self.aayahNumber : aayahNumber // ignore: cast_nullable_to_non_nullable
as AayahNumber,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as AayahContent,
  ));
}

}


/// Adds pattern-matching-related methods to [SearchContent].
extension SearchContentPatterns on SearchContent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SearchContent value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SearchContent() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SearchContent value)  $default,){
final _that = this;
switch (_that) {
case _SearchContent():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SearchContent value)?  $default,){
final _that = this;
switch (_that) {
case _SearchContent() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( SurahName surahName,  SurahNumber surahNumber,  AayahNumber aayahNumber,  AayahContent content)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SearchContent() when $default != null:
return $default(_that.surahName,_that.surahNumber,_that.aayahNumber,_that.content);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( SurahName surahName,  SurahNumber surahNumber,  AayahNumber aayahNumber,  AayahContent content)  $default,) {final _that = this;
switch (_that) {
case _SearchContent():
return $default(_that.surahName,_that.surahNumber,_that.aayahNumber,_that.content);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( SurahName surahName,  SurahNumber surahNumber,  AayahNumber aayahNumber,  AayahContent content)?  $default,) {final _that = this;
switch (_that) {
case _SearchContent() when $default != null:
return $default(_that.surahName,_that.surahNumber,_that.aayahNumber,_that.content);case _:
  return null;

}
}

}

/// @nodoc


class _SearchContent implements SearchContent {
  const _SearchContent(this.surahName, this.surahNumber, this.aayahNumber, this.content);
  

@override final  SurahName surahName;
@override final  SurahNumber surahNumber;
@override final  AayahNumber aayahNumber;
@override final  AayahContent content;

/// Create a copy of SearchContent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchContentCopyWith<_SearchContent> get copyWith => __$SearchContentCopyWithImpl<_SearchContent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchContent&&(identical(other.surahName, surahName) || other.surahName == surahName)&&(identical(other.surahNumber, surahNumber) || other.surahNumber == surahNumber)&&(identical(other.aayahNumber, aayahNumber) || other.aayahNumber == aayahNumber)&&(identical(other.content, content) || other.content == content));
}


@override
int get hashCode => Object.hash(runtimeType,surahName,surahNumber,aayahNumber,content);

@override
String toString() {
  return 'SearchContent(surahName: $surahName, surahNumber: $surahNumber, aayahNumber: $aayahNumber, content: $content)';
}


}

/// @nodoc
abstract mixin class _$SearchContentCopyWith<$Res> implements $SearchContentCopyWith<$Res> {
  factory _$SearchContentCopyWith(_SearchContent value, $Res Function(_SearchContent) _then) = __$SearchContentCopyWithImpl;
@override @useResult
$Res call({
 SurahName surahName, SurahNumber surahNumber, AayahNumber aayahNumber, AayahContent content
});




}
/// @nodoc
class __$SearchContentCopyWithImpl<$Res>
    implements _$SearchContentCopyWith<$Res> {
  __$SearchContentCopyWithImpl(this._self, this._then);

  final _SearchContent _self;
  final $Res Function(_SearchContent) _then;

/// Create a copy of SearchContent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? surahName = null,Object? surahNumber = null,Object? aayahNumber = null,Object? content = null,}) {
  return _then(_SearchContent(
null == surahName ? _self.surahName : surahName // ignore: cast_nullable_to_non_nullable
as SurahName,null == surahNumber ? _self.surahNumber : surahNumber // ignore: cast_nullable_to_non_nullable
as SurahNumber,null == aayahNumber ? _self.aayahNumber : aayahNumber // ignore: cast_nullable_to_non_nullable
as AayahNumber,null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as AayahContent,
  ));
}


}

// dart format on
