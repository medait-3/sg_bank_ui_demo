import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'mytxt.dart';

class MyCirculbutton extends StatelessWidget {
  const MyCirculbutton({super.key, required this.title, required this.color1});
  final String title;

  final Color color1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        PhysicalModel(
          color: Colors.black,
          elevation: 10,
          shape: BoxShape.circle,
          child: CircleAvatar(
            radius: 25,
            backgroundColor: Colors.white,
            child: IconButton(
                color: Colors.black,
                padding: const EdgeInsets.all(10),
                iconSize: 30,
                icon: const Icon(Icons.card_membership_rounded,
                    color: Colors.red),
                onPressed: () {
                  // do something
                }),
          ),
        ),
        SizedBox(
          width: 5,
        ),
        MyText(
            txt: title, size: 13, FontWeight: FontWeight.bold, color: color1),
      ],
    );
  }
}
