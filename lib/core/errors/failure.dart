import 'package:dio/dio.dart';

abstract class Failure {
final String message;
Failure({required this.message});
}

class ServerFailure extends Failure {
  ServerFailure( {required super.message});


  factory ServerFailure.fromDioException(DioException error) {
switch(error.type) {
  
  case DioExceptionType.connectionTimeout:
   return ServerFailure(message: 'Connection timeout with API server');
  case DioExceptionType.sendTimeout:
    return ServerFailure(message: 'Send timeout with API server');
  case DioExceptionType.receiveTimeout:
  return ServerFailure(message: 'Receive timeout with API server');
  case DioExceptionType.badCertificate:
    return ServerFailure(message: 'Bad certificate with API server');
  case DioExceptionType.badResponse:
    return ServerFailure.fromResponse(error.response!.statusCode!, error.response!.data);
  case DioExceptionType.cancel:
    return ServerFailure(message: 'Request to API server was canceled');
  case DioExceptionType.connectionError:
    return ServerFailure(message: 'No Internet connection');
  case DioExceptionType.unknown:
    if (error.message!.contains('SocketException')) {
      return ServerFailure(message: 'No Internet connection');
    } else {
      return ServerFailure(message: 'Unexpected error,try again');
    }default:
    return ServerFailure(message: 'Opps there was an error,try again');
}
  }



  factory ServerFailure.fromResponse(int statusCode, dynamic error) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(message: error['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure(message: 'Not found');
    } else if (statusCode == 500) {
      return ServerFailure(message: 'Internal server error');
    } else {
      return ServerFailure(message: 'Opps there was an error,try again');
    }
  }
}