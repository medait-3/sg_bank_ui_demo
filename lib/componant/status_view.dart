import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:status_view/status_view.dart';

class Status extends StatelessWidget {
  const Status({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5.0, top: 2),
      child: Column(
        children: [
          StatusView(
            radius: 18,
            spacing: 19,
            strokeWidth: 2,
            indexOfSeenStatus: 3,
            numberOfStatus: 5,
            padding: 4,
            centerImageUrl: "https://picsum.photos/200/300",
            seenColor: Colors.white,
            unSeenColor: Colors.white,
          ),
          Text(
            "Nove",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
