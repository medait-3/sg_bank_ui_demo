import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sg_bank_ui/componant/mytxt.dart';

class BottomCard extends StatelessWidget {
  const BottomCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,
      child: Container(
        height: 90,
        width: 300,
        color: Colors.redAccent,
        child: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MyText(
                txt: "SG STORE",
                size: 13,
                fm: "b",
                color: Colors.white,
                FontWeight: FontWeight.bold,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 80.0),
                child: MyText(
                    txt: "VOTRE BOUTIQUE ONLINE",
                    size: 12,
                    fm: "l",
                    color: Colors.white),
              ),
              SizedBox(
                height: 3,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 18.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    MyText(
                        txt: "DÉCOUVRIR",
                        size: 11,
                        fm: "l",
                        color: Colors.white),
                    SizedBox(
                      width: 5,
                    ),
                    CircleAvatar(
                      radius: 10,
                      backgroundColor: Colors.white,
                      child: IconButton(
                          color: Colors.black,
                          iconSize: 4,
                          icon: const Icon(Icons.navigate_next_outlined,
                              color: Colors.black),
                          onPressed: () {
                            // do something
                          }),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
