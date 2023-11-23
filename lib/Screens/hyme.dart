import 'package:flutter/material.dart';

class Hyme extends StatelessWidget {
  const Hyme ({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text('Native Hyme'),
          centerTitle: true),

    );

  }
}