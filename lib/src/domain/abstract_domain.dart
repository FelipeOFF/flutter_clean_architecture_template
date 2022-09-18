import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_clean_architecture_template/src/domain/error/dio_error_ext.dart';
import 'package:flutter_clean_architecture_template/src/domain/error/generic_error.dart';
import 'package:flutter_clean_architecture_template/src/util/log.dart';

abstract class AbstractUseCase<PARAM, RESPONSE> {
  Future<RESPONSE> execute(PARAM param);

  Future<Either<GenericError, RESPONSE>> call(PARAM params) async {
    try {
      final result = await execute(params);
      return Right(result);
    } on DioError catch (dioException) {
      logger.e(dioException);
      return Left(await dioException.asGenericError());
    } catch (exception) {
      logger.e(exception);
      return Left(UnknownError(exception: exception));
    }
  }
}
