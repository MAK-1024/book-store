
import 'package:dio/dio.dart';


abstract class Failure {

   final String errorMsg;

  Failure(this.errorMsg);
}

class ServerFailure extends Failure {
  ServerFailure(super.errorMsg);



  factory ServerFailure.fromDioError(DioError dioError )
  {
    switch (dioError.type) {

      case DioErrorType.connectionTimeout:
      return ServerFailure('Connection timeout with ApiServer');

      case DioErrorType.sendTimeout:
        return ServerFailure('send timeout with ApiServer');

      case DioExceptionType.receiveTimeout:
        return ServerFailure('receive timeout with ApiServer');

      case DioErrorType.badResponse:
      return ServerFailure.fromResponse(dioError.response!.statusCode! , dioError.response!.data);

      case DioErrorType.cancel:
        return ServerFailure('Request was canceled');

      case DioErrorType.unknown:

        if(dioError.message!.contains('SocketException'))
          {
            return ServerFailure('No internet connection');
          }
        return ServerFailure('Unexpected Error ,  try again later');
         default:
           return ServerFailure('oops there was an error ,  try again later');
    }
  }


  factory ServerFailure.fromResponse(int? statusCode , dynamic response ){

    if (statusCode == 400 || statusCode == 401 || statusCode == 403)
      {
        return ServerFailure(response['error']['message']);
      } else if (statusCode == 404)
        {
          return ServerFailure('Your request not found , try again later');
        }else if (statusCode == 500)
          {
            return ServerFailure('Internet server Error , try again later ');
          }else
            {
              return ServerFailure('oops there was an error ,  try again later');
            }
  }
}