

class NetworkException implements Exception {

  // ignore: prefer_typing_uninitialized_variables
  final _message;
  // ignore: prefer_typing_uninitialized_variables
  // final _prefix;

  NetworkException([this._message ]);

  @override
  String toString(){
    return '$_message' ;
  }

}


class FetchDataException extends NetworkException {

  FetchDataException([String? message]) : super(message);
}


class BadRequestException extends NetworkException {

  BadRequestException([String? message]) : super(message);
}


class UnauthorisedException extends NetworkException {

  UnauthorisedException([String? message]) : super(message);
}


class InvalidInputException extends NetworkException {

  InvalidInputException([String? message]) : super(message);
}


class NoInternetException extends NetworkException {

  NoInternetException([String? message]) : super(message);
}

class TimeOutException extends NetworkException {

  TimeOutException([String? message]) : super(message);
}