
import 'package:flutter/material.dart';

class Native extends StatelessWidget {
  const Native ({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text('Native Bible'),
          centerTitle: true),

    );

  }
}