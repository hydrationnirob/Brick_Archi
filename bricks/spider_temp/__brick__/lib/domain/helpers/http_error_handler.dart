import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


void httpErrorHandler({
  required http.Response response,
  required BuildContext context,
  required VoidCallback onSuccess,
  required bool showSnackBar,
}) {
  late String message;
  late Duration duration;

  switch (response.statusCode) {
    case 200:
      onSuccess();
      if (showSnackBar) {
        showSnackBarWithMessage(context, jsonDecode(response.body)['message'],Colors.green);
        if (kDebugMode) {
          print(jsonDecode(response.body)["message"]);
        }
      }
      break;
    case 400:
      message = jsonDecode(response.body)['message'];
      if (showSnackBar) {
        showSnackBarWithMessage(context, message,Colors.redAccent);
      } else {

          // TODO show error message notification here with pop up or dialog box
      }
      break;
    case 401:
      message = json.decode(response.body)['message'];
      showSnackBarWithMessage(context, message,Colors.redAccent);


      break;
    case 403:
      message = json.decode(response.body)['message'];
      showSnackBarWithMessage(context, message,Colors.redAccent);
      break;
    default:
      message = 'An unexpected error occurred';
      showSnackBarWithMessage(context, message,Colors.redAccent);
      if (kDebugMode) {
        print('default: ${response.body}');
      }
  }
}

void showSnackBarWithMessage(BuildContext context, String message, Color color) {




  ScaffoldMessenger.of(context).showSnackBar(

    SnackBar(
      content: Text(message),
      backgroundColor: color,
      duration: const Duration(milliseconds: 3000),
    ),
  );
}

class ExceptionHandler {
  static void handleException(
      {
        required BuildContext context,
        required dynamic e,
        required VoidCallback onSuccess,
        required bool showSnackBar,
      }) {
    if (e is http.Response) {
      httpErrorHandler(
        response: e,
        context: context,
        onSuccess: onSuccess,
        showSnackBar: true,
      );
    } else {
      if (showSnackBar) {
        showSnackBarWithMessage(context, e.toString(),Colors.redAccent);
      }
    }
  }
}
