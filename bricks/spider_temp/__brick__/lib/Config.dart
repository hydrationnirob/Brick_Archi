import 'dart:ui';

class Config {

  Config._();

  /// App Config ------------

  static String appName = "{{appName.pascalCase()}}";
  static String appVersion = "1.0.0";
  static Color primaryColor = const Color(0xff5272F2);
  static Color unSelectedTextColor = const Color(0xffF5F5F5);
  static Color seconderyTextColor = const Color(0xffF5F5F5);


  /// Network Config ------------

  static String googleMapKey = "";

  /// REMOTE SERVER

  static const String ApiBaseURL = "";
  static const String SocketBaseURL = "";


}
