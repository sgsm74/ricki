import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

Future<Either<Exception, Type>> requestToServer<Type>(
  Future<Type> Function() requestFunction, {
  Function(Type result)? extraOperation,
}) async {
  try {
    final result = await requestFunction();
    extraOperation != null ? extraOperation(result) : () {}();
    return Right(result);
  } on DioError catch (e) {
    return Left(Exception(e.message));
  }
}
