// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_result_row.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SearchResultRow {

 SurahName get surahName; SurahNumber get surahNumber; AayahNumber get aayahNumber; AayahContent get content;
/// Create a copy of SearchResultRow
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchResultRowCopyWith<SearchResultRow> get copyWith => _$SearchResultRowCopyWithImpl<SearchResultRow>(this as SearchResultRow, _$identity);

  /// Serializes this SearchResultRow to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchResultRow&&(identical(other.surahName, surahName) || other.surahName == surahName)&&(identical(other.surahNumber, surahNumber) || other.surahNumber == surahNumber)&&(identical(other.aayahNumber, aayahNumber) || other.aayahNumber == aayahNumber)&&(identical(other.content, content) || other.content == content));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,surahName,surahNumber,aayahNumber,content);

@override
String toString() {
  return 'SearchResultRow(surahName: $surahName, surahNumber: $surahNumber, aayahNumber: $aayahNumber, content: $content)';
}


}

/// @nodoc
abstract mixin class $SearchResultRowCopyWith<$Res>  {
  factory $SearchResultRowCopyWith(SearchResultRow value, $Res Function(SearchResultRow) _then) = _$SearchResultRowCopyWithImpl;
@useResult
$Res call({
 SurahName surahName, SurahNumber surahNumber, AayahNumber aayahNumber, AayahContent content
});




}
/// @nodoc
class _$SearchResultRowCopyWithImpl<$Res>
    implements $SearchResultRowCopyWith<$Res> {
  _$SearchResultRowCopyWithImpl(this._self, this._then);

  final SearchResultRow _self;
  final $Res Function(SearchResultRow) _then;

/// Create a copy of SearchResultRow
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


/// Adds pattern-matching-related methods to [SearchResultRow].
extension SearchResultRowPatterns on SearchResultRow {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SearchResultRow value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SearchResultRow() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SearchResultRow value)  $default,){
final _that = this;
switch (_that) {
case _SearchResultRow():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SearchResultRow value)?  $default,){
final _that = this;
switch (_that) {
case _SearchResultRow() when $default != null:
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
case _SearchResultRow() when $default != null:
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
case _SearchResultRow():
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
case _SearchResultRow() when $default != null:
return $default(_that.surahName,_that.surahNumber,_that.aayahNumber,_that.content);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: .snake)
class _SearchResultRow extends SearchResultRow {
  const _SearchResultRow(this.surahName, this.surahNumber, this.aayahNumber, this.content): super._();
  factory _SearchResultRow.fromJson(Map<String, dynamic> json) => _$SearchResultRowFromJson(json);

@override final  SurahName surahName;
@override final  SurahNumber surahNumber;
@override final  AayahNumber aayahNumber;
@override final  AayahContent content;

/// Create a copy of SearchResultRow
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchResultRowCopyWith<_SearchResultRow> get copyWith => __$SearchResultRowCopyWithImpl<_SearchResultRow>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SearchResultRowToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchResultRow&&(identical(other.surahName, surahName) || other.surahName == surahName)&&(identical(other.surahNumber, surahNumber) || other.surahNumber == surahNumber)&&(identical(other.aayahNumber, aayahNumber) || other.aayahNumber == aayahNumber)&&(identical(other.content, content) || other.content == content));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,surahName,surahNumber,aayahNumber,content);

@override
String toString() {
  return 'SearchResultRow(surahName: $surahName, surahNumber: $surahNumber, aayahNumber: $aayahNumber, content: $content)';
}


}

/// @nodoc
abstract mixin class _$SearchResultRowCopyWith<$Res> implements $SearchResultRowCopyWith<$Res> {
  factory _$SearchResultRowCopyWith(_SearchResultRow value, $Res Function(_SearchResultRow) _then) = __$SearchResultRowCopyWithImpl;
@override @useResult
$Res call({
 SurahName surahName, SurahNumber surahNumber, AayahNumber aayahNumber, AayahContent content
});




}
/// @nodoc
class __$SearchResultRowCopyWithImpl<$Res>
    implements _$SearchResultRowCopyWith<$Res> {
  __$SearchResultRowCopyWithImpl(this._self, this._then);

  final _SearchResultRow _self;
  final $Res Function(_SearchResultRow) _then;

/// Create a copy of SearchResultRow
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? surahName = null,Object? surahNumber = null,Object? aayahNumber = null,Object? content = null,}) {
  return _then(_SearchResultRow(
null == surahName ? _self.surahName : surahName // ignore: cast_nullable_to_non_nullable
as SurahName,null == surahNumber ? _self.surahNumber : surahNumber // ignore: cast_nullable_to_non_nullable
as SurahNumber,null == aayahNumber ? _self.aayahNumber : aayahNumber // ignore: cast_nullable_to_non_nullable
as AayahNumber,null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as AayahContent,
  ));
}


}

// dart format on
