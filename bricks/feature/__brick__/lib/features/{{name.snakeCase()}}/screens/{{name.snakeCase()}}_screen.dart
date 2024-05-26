import 'package:flutter/material.dart';
class {{name.pascalCase()}}Screen extends StatefulWidget {
  const {{name.pascalCase()}}Screen({super.key});

  @override
  State<{{name.pascalCase()}}Screen> createState() => _{{name.pascalCase()}}ScreenState();
}

class _{{name.pascalCase()}}ScreenState extends State<{{name.pascalCase()}}Screen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('{{name.pascalCase(}} Screen'),
      ),
    );
  }
}