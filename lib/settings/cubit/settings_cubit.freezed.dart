// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'settings_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SettingsState {

 bool get showAyah; bool get showTafsir; bool get showTranslation; bool get showFootnotes; double get ayahFontSize; double get tafsirFontSize; double get translationFontSize; AyahFontType get ayahFontType; AppError? get error;
/// Create a copy of SettingsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SettingsStateCopyWith<SettingsState> get copyWith => _$SettingsStateCopyWithImpl<SettingsState>(this as SettingsState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SettingsState&&(identical(other.showAyah, showAyah) || other.showAyah == showAyah)&&(identical(other.showTafsir, showTafsir) || other.showTafsir == showTafsir)&&(identical(other.showTranslation, showTranslation) || other.showTranslation == showTranslation)&&(identical(other.showFootnotes, showFootnotes) || other.showFootnotes == showFootnotes)&&(identical(other.ayahFontSize, ayahFontSize) || other.ayahFontSize == ayahFontSize)&&(identical(other.tafsirFontSize, tafsirFontSize) || other.tafsirFontSize == tafsirFontSize)&&(identical(other.translationFontSize, translationFontSize) || other.translationFontSize == translationFontSize)&&(identical(other.ayahFontType, ayahFontType) || other.ayahFontType == ayahFontType)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,showAyah,showTafsir,showTranslation,showFootnotes,ayahFontSize,tafsirFontSize,translationFontSize,ayahFontType,error);

@override
String toString() {
  return 'SettingsState(showAyah: $showAyah, showTafsir: $showTafsir, showTranslation: $showTranslation, showFootnotes: $showFootnotes, ayahFontSize: $ayahFontSize, tafsirFontSize: $tafsirFontSize, translationFontSize: $translationFontSize, ayahFontType: $ayahFontType, error: $error)';
}


}

/// @nodoc
abstract mixin class $SettingsStateCopyWith<$Res>  {
  factory $SettingsStateCopyWith(SettingsState value, $Res Function(SettingsState) _then) = _$SettingsStateCopyWithImpl;
@useResult
$Res call({
 bool showAyah, bool showTafsir, bool showTranslation, bool showFootnotes, double ayahFontSize, double tafsirFontSize, double translationFontSize, AyahFontType ayahFontType, AppError? error
});


$AppErrorCopyWith<$Res>? get error;

}
/// @nodoc
class _$SettingsStateCopyWithImpl<$Res>
    implements $SettingsStateCopyWith<$Res> {
  _$SettingsStateCopyWithImpl(this._self, this._then);

  final SettingsState _self;
  final $Res Function(SettingsState) _then;

/// Create a copy of SettingsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? showAyah = null,Object? showTafsir = null,Object? showTranslation = null,Object? showFootnotes = null,Object? ayahFontSize = null,Object? tafsirFontSize = null,Object? translationFontSize = null,Object? ayahFontType = null,Object? error = freezed,}) {
  return _then(_self.copyWith(
showAyah: null == showAyah ? _self.showAyah : showAyah // ignore: cast_nullable_to_non_nullable
as bool,showTafsir: null == showTafsir ? _self.showTafsir : showTafsir // ignore: cast_nullable_to_non_nullable
as bool,showTranslation: null == showTranslation ? _self.showTranslation : showTranslation // ignore: cast_nullable_to_non_nullable
as bool,showFootnotes: null == showFootnotes ? _self.showFootnotes : showFootnotes // ignore: cast_nullable_to_non_nullable
as bool,ayahFontSize: null == ayahFontSize ? _self.ayahFontSize : ayahFontSize // ignore: cast_nullable_to_non_nullable
as double,tafsirFontSize: null == tafsirFontSize ? _self.tafsirFontSize : tafsirFontSize // ignore: cast_nullable_to_non_nullable
as double,translationFontSize: null == translationFontSize ? _self.translationFontSize : translationFontSize // ignore: cast_nullable_to_non_nullable
as double,ayahFontType: null == ayahFontType ? _self.ayahFontType : ayahFontType // ignore: cast_nullable_to_non_nullable
as AyahFontType,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as AppError?,
  ));
}
/// Create a copy of SettingsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AppErrorCopyWith<$Res>? get error {
    if (_self.error == null) {
    return null;
  }

  return $AppErrorCopyWith<$Res>(_self.error!, (value) {
    return _then(_self.copyWith(error: value));
  });
}
}


/// Adds pattern-matching-related methods to [SettingsState].
extension SettingsStatePatterns on SettingsState {
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( bool showAyah,  bool showTafsir,  bool showTranslation,  bool showFootnotes,  double ayahFontSize,  double tafsirFontSize,  double translationFontSize,  AyahFontType ayahFontType,  AppError? error)?  current,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Current() when current != null:
return current(_that.showAyah,_that.showTafsir,_that.showTranslation,_that.showFootnotes,_that.ayahFontSize,_that.tafsirFontSize,_that.translationFontSize,_that.ayahFontType,_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( bool showAyah,  bool showTafsir,  bool showTranslation,  bool showFootnotes,  double ayahFontSize,  double tafsirFontSize,  double translationFontSize,  AyahFontType ayahFontType,  AppError? error)  current,}) {final _that = this;
switch (_that) {
case _Current():
return current(_that.showAyah,_that.showTafsir,_that.showTranslation,_that.showFootnotes,_that.ayahFontSize,_that.tafsirFontSize,_that.translationFontSize,_that.ayahFontType,_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( bool showAyah,  bool showTafsir,  bool showTranslation,  bool showFootnotes,  double ayahFontSize,  double tafsirFontSize,  double translationFontSize,  AyahFontType ayahFontType,  AppError? error)?  current,}) {final _that = this;
switch (_that) {
case _Current() when current != null:
return current(_that.showAyah,_that.showTafsir,_that.showTranslation,_that.showFootnotes,_that.ayahFontSize,_that.tafsirFontSize,_that.translationFontSize,_that.ayahFontType,_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _Current implements SettingsState {
  const _Current(this.showAyah, this.showTafsir, this.showTranslation, this.showFootnotes, this.ayahFontSize, this.tafsirFontSize, this.translationFontSize, this.ayahFontType, this.error);
  

@override final  bool showAyah;
@override final  bool showTafsir;
@override final  bool showTranslation;
@override final  bool showFootnotes;
@override final  double ayahFontSize;
@override final  double tafsirFontSize;
@override final  double translationFontSize;
@override final  AyahFontType ayahFontType;
@override final  AppError? error;

/// Create a copy of SettingsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CurrentCopyWith<_Current> get copyWith => __$CurrentCopyWithImpl<_Current>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Current&&(identical(other.showAyah, showAyah) || other.showAyah == showAyah)&&(identical(other.showTafsir, showTafsir) || other.showTafsir == showTafsir)&&(identical(other.showTranslation, showTranslation) || other.showTranslation == showTranslation)&&(identical(other.showFootnotes, showFootnotes) || other.showFootnotes == showFootnotes)&&(identical(other.ayahFontSize, ayahFontSize) || other.ayahFontSize == ayahFontSize)&&(identical(other.tafsirFontSize, tafsirFontSize) || other.tafsirFontSize == tafsirFontSize)&&(identical(other.translationFontSize, translationFontSize) || other.translationFontSize == translationFontSize)&&(identical(other.ayahFontType, ayahFontType) || other.ayahFontType == ayahFontType)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,showAyah,showTafsir,showTranslation,showFootnotes,ayahFontSize,tafsirFontSize,translationFontSize,ayahFontType,error);

@override
String toString() {
  return 'SettingsState.current(showAyah: $showAyah, showTafsir: $showTafsir, showTranslation: $showTranslation, showFootnotes: $showFootnotes, ayahFontSize: $ayahFontSize, tafsirFontSize: $tafsirFontSize, translationFontSize: $translationFontSize, ayahFontType: $ayahFontType, error: $error)';
}


}

/// @nodoc
abstract mixin class _$CurrentCopyWith<$Res> implements $SettingsStateCopyWith<$Res> {
  factory _$CurrentCopyWith(_Current value, $Res Function(_Current) _then) = __$CurrentCopyWithImpl;
@override @useResult
$Res call({
 bool showAyah, bool showTafsir, bool showTranslation, bool showFootnotes, double ayahFontSize, double tafsirFontSize, double translationFontSize, AyahFontType ayahFontType, AppError? error
});


@override $AppErrorCopyWith<$Res>? get error;

}
/// @nodoc
class __$CurrentCopyWithImpl<$Res>
    implements _$CurrentCopyWith<$Res> {
  __$CurrentCopyWithImpl(this._self, this._then);

  final _Current _self;
  final $Res Function(_Current) _then;

/// Create a copy of SettingsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? showAyah = null,Object? showTafsir = null,Object? showTranslation = null,Object? showFootnotes = null,Object? ayahFontSize = null,Object? tafsirFontSize = null,Object? translationFontSize = null,Object? ayahFontType = null,Object? error = freezed,}) {
  return _then(_Current(
null == showAyah ? _self.showAyah : showAyah // ignore: cast_nullable_to_non_nullable
as bool,null == showTafsir ? _self.showTafsir : showTafsir // ignore: cast_nullable_to_non_nullable
as bool,null == showTranslation ? _self.showTranslation : showTranslation // ignore: cast_nullable_to_non_nullable
as bool,null == showFootnotes ? _self.showFootnotes : showFootnotes // ignore: cast_nullable_to_non_nullable
as bool,null == ayahFontSize ? _self.ayahFontSize : ayahFontSize // ignore: cast_nullable_to_non_nullable
as double,null == tafsirFontSize ? _self.tafsirFontSize : tafsirFontSize // ignore: cast_nullable_to_non_nullable
as double,null == translationFontSize ? _self.translationFontSize : translationFontSize // ignore: cast_nullable_to_non_nullable
as double,null == ayahFontType ? _self.ayahFontType : ayahFontType // ignore: cast_nullable_to_non_nullable
as AyahFontType,freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as AppError?,
  ));
}

/// Create a copy of SettingsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AppErrorCopyWith<$Res>? get error {
    if (_self.error == null) {
    return null;
  }

  return $AppErrorCopyWith<$Res>(_self.error!, (value) {
    return _then(_self.copyWith(error: value));
  });
}
}

// dart format on
