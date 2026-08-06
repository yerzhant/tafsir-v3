import 'package:freezed_annotation/freezed_annotation.dart';

part 'error.freezed.dart';

@freezed
sealed class AppError with _$AppError {
  const factory AppError.general(String message) = GeneralError;
  const factory AppError.exception(
    Object error,
    StackTrace trace,
  ) = ExceptionError;

  const AppError._();

  String get title => switch (this) {
    GeneralError() => 'Ошибка',
    ExceptionError() => 'Системная ошибка',
  };

  String get message => switch (this) {
    GeneralError(:final message) => message,
    ExceptionError(:final error, :final trace) => '$error\n$trace',
  };
}
