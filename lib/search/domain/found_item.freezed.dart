// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'found_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FoundItem {

 SurahName get surahName; SurahNumber get surahNumber; AayahNumber get aayahNumber; FoundText get text; FoundText get prefix; FoundText get suffix;
/// Create a copy of FoundItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FoundItemCopyWith<FoundItem> get copyWith => _$FoundItemCopyWithImpl<FoundItem>(this as FoundItem, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FoundItem&&(identical(other.surahName, surahName) || other.surahName == surahName)&&(identical(other.surahNumber, surahNumber) || other.surahNumber == surahNumber)&&(identical(other.aayahNumber, aayahNumber) || other.aayahNumber == aayahNumber)&&(identical(other.text, text) || other.text == text)&&(identical(other.prefix, prefix) || other.prefix == prefix)&&(identical(other.suffix, suffix) || other.suffix == suffix));
}


@override
int get hashCode => Object.hash(runtimeType,surahName,surahNumber,aayahNumber,text,prefix,suffix);

@override
String toString() {
  return 'FoundItem(surahName: $surahName, surahNumber: $surahNumber, aayahNumber: $aayahNumber, text: $text, prefix: $prefix, suffix: $suffix)';
}


}

/// @nodoc
abstract mixin class $FoundItemCopyWith<$Res>  {
  factory $FoundItemCopyWith(FoundItem value, $Res Function(FoundItem) _then) = _$FoundItemCopyWithImpl;
@useResult
$Res call({
 SurahName surahName, SurahNumber surahNumber, AayahNumber aayahNumber, FoundText text, FoundText prefix, FoundText suffix
});




}
/// @nodoc
class _$FoundItemCopyWithImpl<$Res>
    implements $FoundItemCopyWith<$Res> {
  _$FoundItemCopyWithImpl(this._self, this._then);

  final FoundItem _self;
  final $Res Function(FoundItem) _then;

/// Create a copy of FoundItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? surahName = null,Object? surahNumber = null,Object? aayahNumber = null,Object? text = null,Object? prefix = null,Object? suffix = null,}) {
  return _then(_self.copyWith(
surahName: null == surahName ? _self.surahName : surahName // ignore: cast_nullable_to_non_nullable
as SurahName,surahNumber: null == surahNumber ? _self.surahNumber : surahNumber // ignore: cast_nullable_to_non_nullable
as SurahNumber,aayahNumber: null == aayahNumber ? _self.aayahNumber : aayahNumber // ignore: cast_nullable_to_non_nullable
as AayahNumber,text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as FoundText,prefix: null == prefix ? _self.prefix : prefix // ignore: cast_nullable_to_non_nullable
as FoundText,suffix: null == suffix ? _self.suffix : suffix // ignore: cast_nullable_to_non_nullable
as FoundText,
  ));
}

}


/// Adds pattern-matching-related methods to [FoundItem].
extension FoundItemPatterns on FoundItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FoundItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FoundItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FoundItem value)  $default,){
final _that = this;
switch (_that) {
case _FoundItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FoundItem value)?  $default,){
final _that = this;
switch (_that) {
case _FoundItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( SurahName surahName,  SurahNumber surahNumber,  AayahNumber aayahNumber,  FoundText text,  FoundText prefix,  FoundText suffix)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FoundItem() when $default != null:
return $default(_that.surahName,_that.surahNumber,_that.aayahNumber,_that.text,_that.prefix,_that.suffix);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( SurahName surahName,  SurahNumber surahNumber,  AayahNumber aayahNumber,  FoundText text,  FoundText prefix,  FoundText suffix)  $default,) {final _that = this;
switch (_that) {
case _FoundItem():
return $default(_that.surahName,_that.surahNumber,_that.aayahNumber,_that.text,_that.prefix,_that.suffix);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( SurahName surahName,  SurahNumber surahNumber,  AayahNumber aayahNumber,  FoundText text,  FoundText prefix,  FoundText suffix)?  $default,) {final _that = this;
switch (_that) {
case _FoundItem() when $default != null:
return $default(_that.surahName,_that.surahNumber,_that.aayahNumber,_that.text,_that.prefix,_that.suffix);case _:
  return null;

}
}

}

/// @nodoc


class _FoundItem implements FoundItem {
  const _FoundItem({required this.surahName, required this.surahNumber, required this.aayahNumber, required this.text, required this.prefix, required this.suffix});
  

@override final  SurahName surahName;
@override final  SurahNumber surahNumber;
@override final  AayahNumber aayahNumber;
@override final  FoundText text;
@override final  FoundText prefix;
@override final  FoundText suffix;

/// Create a copy of FoundItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FoundItemCopyWith<_FoundItem> get copyWith => __$FoundItemCopyWithImpl<_FoundItem>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FoundItem&&(identical(other.surahName, surahName) || other.surahName == surahName)&&(identical(other.surahNumber, surahNumber) || other.surahNumber == surahNumber)&&(identical(other.aayahNumber, aayahNumber) || other.aayahNumber == aayahNumber)&&(identical(other.text, text) || other.text == text)&&(identical(other.prefix, prefix) || other.prefix == prefix)&&(identical(other.suffix, suffix) || other.suffix == suffix));
}


@override
int get hashCode => Object.hash(runtimeType,surahName,surahNumber,aayahNumber,text,prefix,suffix);

@override
String toString() {
  return 'FoundItem(surahName: $surahName, surahNumber: $surahNumber, aayahNumber: $aayahNumber, text: $text, prefix: $prefix, suffix: $suffix)';
}


}

/// @nodoc
abstract mixin class _$FoundItemCopyWith<$Res> implements $FoundItemCopyWith<$Res> {
  factory _$FoundItemCopyWith(_FoundItem value, $Res Function(_FoundItem) _then) = __$FoundItemCopyWithImpl;
@override @useResult
$Res call({
 SurahName surahName, SurahNumber surahNumber, AayahNumber aayahNumber, FoundText text, FoundText prefix, FoundText suffix
});




}
/// @nodoc
class __$FoundItemCopyWithImpl<$Res>
    implements _$FoundItemCopyWith<$Res> {
  __$FoundItemCopyWithImpl(this._self, this._then);

  final _FoundItem _self;
  final $Res Function(_FoundItem) _then;

/// Create a copy of FoundItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? surahName = null,Object? surahNumber = null,Object? aayahNumber = null,Object? text = null,Object? prefix = null,Object? suffix = null,}) {
  return _then(_FoundItem(
surahName: null == surahName ? _self.surahName : surahName // ignore: cast_nullable_to_non_nullable
as SurahName,surahNumber: null == surahNumber ? _self.surahNumber : surahNumber // ignore: cast_nullable_to_non_nullable
as SurahNumber,aayahNumber: null == aayahNumber ? _self.aayahNumber : aayahNumber // ignore: cast_nullable_to_non_nullable
as AayahNumber,text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as FoundText,prefix: null == prefix ? _self.prefix : prefix // ignore: cast_nullable_to_non_nullable
as FoundText,suffix: null == suffix ? _self.suffix : suffix // ignore: cast_nullable_to_non_nullable
as FoundText,
  ));
}


}

// dart format on
