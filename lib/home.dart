import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0.00,
        backgroundColor: Colors.redAccent,
        title: Text(
          "ACUEIL",
          style: TextStyle(fontSize: 14),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: IconButton(
              icon: const Icon(Icons.notifications),
              tooltip: 'Comment Icon',
              onPressed: () {},
            ),
          ), //IconButton
        ], //<Widget>[]

        leading: IconButton(
          icon: const Icon(Icons.segment),
          tooltip: 'Menu Icon',
          onPressed: () {},
        ),
      ),
      body: Column(),
    );
  }
}
