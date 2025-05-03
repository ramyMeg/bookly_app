import 'package:dio/dio.dart';

abstract class Failure {
  final String errMessage;

  const Failure(this.errMessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errMessage);

  factory ServerFailure.fromDioError(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection timeout with ApiServer');

      case DioExceptionType.sendTimeout:
        return ServerFailure('Send timeout with ApiServer');

      case DioExceptionType.receiveTimeout:
        return ServerFailure('Receive timeout with ApiServer');

      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
          dioError.response?.statusCode ?? 0,
          dioError.response?.data,
        );

      case DioExceptionType.cancel:
        return ServerFailure('Request to Api canceld ');

      case DioExceptionType.connectionError:
        return ServerFailure('connection Error');

      case DioExceptionType.unknown:
        return ServerFailure('unknown Error, Please try again');
        default:
        return ServerFailure('Opps ,Please try again!');

    }
  }

  factory ServerFailure.fromResponse(int statusCode, dynamic badResponse) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(badResponse['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure('Your request not Found, Please try again Later!');
    } else if (statusCode == 500) {
      return ServerFailure('Internal Server error, Please try later');
    } else {
      return ServerFailure('Opps ,Please try again!');
    }
  }
}
