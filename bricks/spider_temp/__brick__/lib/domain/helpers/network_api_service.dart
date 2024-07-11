import 'dart:async';
import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;

import 'base_api_abstract.dart';
import 'network_exception.dart';

class NetworkApiService implements BaseApiAbstract {
  @override
  Future delete(String url, String token) async {
    if (kDebugMode) {
      log('DELETE: $url', name: 'NetworkApiService');
    }
    dynamic responseJson;
    try {
      Response response = await http.delete(Uri.parse(url), headers: {
        'Content-Type': 'application/json',
        'Authorization': token
      }).timeout(const Duration(seconds: 30));
      responseJson = response;
      if (kDebugMode) {
        log('DELETE: ${response.statusCode}', name: 'ApiServiceResponse');
      }
    } on SocketException {
      throw NoInternetException('No Internet Connection');
    } on TimeoutException {
      throw TimeOutException('Connection Time Out');
    } on Error catch (e) {
      throw FetchDataException(e.toString());
    } on UnauthorisedException catch (e) {
      throw UnauthorisedException(e.toString());
    }
    return responseJson;
  }

  @override
  Future get(String url, String token) async {
    if (kDebugMode) {
      log('GET: $url', name: 'NetworkApiService');
    }
    dynamic responseJson;
    try {
      final response = await http.get(Uri.parse(url), headers: {
        'Content-Type': 'application/json',
        'Authorization': token
      }).timeout(const Duration(seconds: 10));
      responseJson = response;
      if (kDebugMode) {
        log('GET: ${response.statusCode}', name: 'ApiServiceResponse');
      }
    } on SocketException {
      throw NoInternetException('No Internet Connection');
    } on TimeoutException {
      throw TimeOutException('Connection Time Out');
    } on Error catch (e) {
      throw FetchDataException(e.toString());
    } on InvalidInputException catch (e) {
      throw InvalidInputException(e.toString());
    }

    return responseJson;
  }

  @override
  Future post(String url, data, String token) async {
    if (kDebugMode) {
      log('POST: $url', name: 'NetworkApiService');
    }
    dynamic responseJson;
    try {
      Response response = await http
          .post(Uri.parse(url),
          headers: {
            'Content-Type': 'application/json',
            'Authorization': token
          },
          body: jsonEncode(data))
          .timeout(const Duration(seconds: 10));
      responseJson = response;
      if (kDebugMode) {
        log('POST: ${response.statusCode}', name: 'ApiServiceResponse');
      }
    } on SocketException {
      throw NoInternetException('No Internet Connection');
    } on TimeoutException {
      throw TimeOutException('Connection Time Out');
    } on Error catch (e) {
      throw FetchDataException(e.toString());
    }
    return responseJson;
  }

  @override
  Future put(String url, data, String token) async {
    if (kDebugMode) {
      log('PUT: $url', name: 'NetworkApiService');
    }
    dynamic responseJson;
    try {
      Response response = await http
          .put(Uri.parse(url),
          headers: {
            'Content-Type': 'application/json',
            'Authorization': token
          },
          body: jsonEncode(data))
          .timeout(const Duration(seconds: 10));
      responseJson = response;
      if (kDebugMode) {
        log('PUT: ${response.statusCode}', name: 'ApiServiceResponse');
      }
    } on SocketException {
      throw NoInternetException('No Internet Connection');
    } on TimeoutException {
      throw TimeOutException('Connection Time Out');
    } on Error catch (e) {
      throw FetchDataException(e.toString());
    }
    return responseJson;
  }
}
