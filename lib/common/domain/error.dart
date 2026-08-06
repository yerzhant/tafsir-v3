import 'package:freezed_annotation/freezed_annotation.dart';

part 'error.freezed.dart';

@freezed
sealed class AppError with _$AppError {
  const factory AppError.general(String message) = GeneralError;
}
