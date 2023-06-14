import 'package:flutter/material.dart';

import 'my_popup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PopupMenuButton',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('PopupMenuButton'),
          elevation: 0,
          foregroundColor: Colors.white,
          backgroundColor: Colors.teal,
          centerTitle: true,
        ),
        body: const MyPopup(),
      ),
    );
  }
}
