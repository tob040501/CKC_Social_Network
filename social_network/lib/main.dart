import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Package Fonts',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // The AppBar uses the app-default font.
      appBar: AppBar(title: const Text('Package Fonts')),
      body: const Center(
        // This Text widget uses the Raleway font.
        child: Text(
          'Welcome CKC',
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'Poppins',
            fontSize: 35,
            fontWeight: FontWeight.w600,
            package: 'awesome_package',
          ),
        ),
      ),
    );
  }
}
