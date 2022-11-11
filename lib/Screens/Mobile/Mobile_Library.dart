import 'package:flutter/material.dart';

class Mobile_library extends StatefulWidget {
  const Mobile_library({Key? key}) : super(key: key);

  @override
  State<Mobile_library> createState() => _Mobile_libraryState();
}

class _Mobile_libraryState extends State<Mobile_library> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("Library"),),
    );
  }
}