import 'package:equatable/equatable.dart';

abstract class GenericError extends Equatable implements Exception {}

class DefaultError extends GenericError {
  final int? code;
  final String? message;
  final Exception? exception;

  DefaultError({this.code, this.message, this.exception});

  @override
  List<Object?> get props => [
        code,
        message,
        exception,
      ];
}

class NetworkError extends GenericError {
  final Exception? exception;

  NetworkError({this.exception});

  @override
  List<Object?> get props => [
        exception,
      ];
}

class UnknownError extends GenericError {
  final dynamic exception;

  UnknownError({this.exception});

  @override
  List<Object?> get props => [
        exception,
      ];
}
