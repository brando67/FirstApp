import 'package:flutter/material.dart';

import 'index.dart';

class English extends StatelessWidget {
  const English({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
            onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
              return const Index();
            }
            ),
            );
            },
            icon: const Icon(Icons.menu_sharp),
          ),
          backgroundColor: Colors.blue,
          title: const Text('Bible'),
          centerTitle: true),
    );
  }
}
