import 'dart:io';
import 'package:mason/mason.dart';

void run(HookContext context) {
  // Read vars.
  final name = context.vars['appName'];

  // Use the `Logger` instance.
  context.logger.info('Hello $name!');

}