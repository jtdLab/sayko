import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:sayko/logging.dart';

export 'dart:io' show HttpHeaders;
export 'package:dio/dio.dart';

Dio createDio({BaseOptions? baseOptions}) {
  final dio = Dio(baseOptions);
  dio.interceptors.add(_prettyDioLogger);
  return dio;
}

final _prettyDioLogger = PrettyDioLogger(
  requestBody: true,
  responseBody: false,
  logPrint: (object) => Logging.logger.info(object.toString()),
);
