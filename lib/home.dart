import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sg_bank_ui/componant/mycard.dart';
import 'package:sg_bank_ui/componant/mytxt.dart';

import 'componant/status_view.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _prix = 12122;
  final stars = " ****";
  late bool _passwordVisible;

  @override
  void initState() {
    _passwordVisible = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        titleSpacing: 0.00,
        backgroundColor: Colors.redAccent,
        title: Text(
          "ACCUEIL",
          style: TextStyle(fontSize: 14),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: IconButton(
              icon: const Icon(Icons.notifications),
              onPressed: () {},
            ),
          ), //IconButton
        ], //<Widget>[]

        leading: IconButton(
          icon: const Icon(Icons.segment),
          onPressed: () {},
        ),
      ),
      body: Stack(
        children: [
          Container(
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.redAccent,
                    alignment: Alignment.topCenter,
                    child: Column(
                      children: [
                        Row(children: [
                          const Status(),
                          const SizedBox(width: 2),
                          const Status(),
                        ]),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 17, vertical: 1),
                          child: Row(
                            children: [
                              MyText(
                                txt: "COMPTE",
                                fm: "l",
                                size: 16,
                                color: Colors.white,
                                FontWeight: null,
                              ),
                              MyText(
                                  txt: " CHÉQUE DIRHAMS",
                                  size: 16,
                                  fm: "b",
                                  color: Colors.white,
                                  FontWeight: FontWeight.bold),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 17,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  _passwordVisible == false
                                      ? Text(
                                          "${_prix}",
                                          style: const TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontFamily: "b",
                                              fontSize: 35),
                                        )
                                      : Text(
                                          "${stars}",
                                          style: const TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontFamily: "b",
                                              fontSize: 35),
                                        ),
                                  MyText(
                                      txt: " DH",
                                      size: 33,
                                      FontWeight: FontWeight.bold,
                                      fm: "b",
                                      color: Colors.white),
                                ],
                              ),
                              IconButton(
                                  color: Colors.white,
                                  icon: Icon(
                                    _passwordVisible
                                        ? Icons.visibility
                                        : Icons.visibility_off,
                                    size: 19,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      _passwordVisible = !_passwordVisible;
                                    });
                                  }),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 17, vertical: 1),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  const Icon(
                                    Icons.transit_enterexit,
                                    color: Colors.white70,
                                    size: 18.0,
                                  ),
                                  MyText(
                                      txt: "EN TRAITMENT",
                                      fm: "l",
                                      size: 13,
                                      color: Colors.white),
                                ],
                              ),
                              MyText(
                                  txt: "+999,00 DH",
                                  size: 13,
                                  FontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 17, vertical: 2),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  const Icon(
                                    Icons.replay,
                                    color: Colors.white70,
                                    size: 18.0,
                                  ),
                                  MyText(
                                      txt: "MISE A JOUR",
                                      fm: "l",
                                      size: 13,
                                      color: Colors.white),
                                ],
                              ),
                              MyText(
                                  txt: "01/03/2023",
                                  size: 13,
                                  FontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.white70,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Row(
                                children: [
                                  PhysicalModel(
                                    color: Colors.grey,
                                    elevation: 4,
                                    shape: BoxShape.circle,
                                    child: CircleAvatar(
                                      radius: 20,
                                      backgroundColor: Colors.white,
                                      child: IconButton(
                                          color: Colors.black,
                                          padding: const EdgeInsets.all(10),
                                          iconSize: 22,
                                          icon: const Icon(
                                              Icons.card_membership_rounded,
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
                                      txt: "CARDES",
                                      size: 13,
                                      FontWeight: FontWeight.bold,
                                      color: Colors.redAccent),
                                ],
                              ),
                              Row(
                                children: [
                                  PhysicalModel(
                                    color: Colors.grey,
                                    elevation: 4,
                                    shape: BoxShape.circle,
                                    child: CircleAvatar(
                                      radius: 20,
                                      backgroundColor: Colors.white,
                                      child: IconButton(
                                          color: Colors.black,
                                          padding: const EdgeInsets.all(10),
                                          iconSize: 22,
                                          icon: const Icon(
                                              Icons.card_membership_rounded,
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
                                      txt: "CARDES",
                                      size: 13,
                                      FontWeight: FontWeight.bold,
                                      color: Colors.redAccent),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Row(
                                children: [
                                  PhysicalModel(
                                    color: Colors.grey,
                                    elevation: 4,
                                    shape: BoxShape.circle,
                                    child: CircleAvatar(
                                      radius: 20,
                                      backgroundColor: Colors.white,
                                      child: IconButton(
                                          color: Colors.black,
                                          padding: const EdgeInsets.all(10),
                                          iconSize: 22,
                                          icon: const Icon(
                                              Icons.card_membership_rounded,
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
                                      txt: "CARTES",
                                      size: 13,
                                      FontWeight: FontWeight.bold,
                                      color: Colors.redAccent),
                                ],
                              ),
                              Row(
                                children: [
                                  PhysicalModel(
                                    color: Colors.grey,
                                    elevation: 4,
                                    shape: BoxShape.circle,
                                    child: CircleAvatar(
                                      radius: 20,
                                      backgroundColor: Colors.white,
                                      child: IconButton(
                                          color: Colors.black,
                                          padding: const EdgeInsets.all(10),
                                          iconSize: 22,
                                          icon: const Icon(
                                              Icons.card_membership_rounded,
                                              color: Colors.red),
                                          onPressed: () {
                                            // do something
                                          }),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      MyText(
                                          txt: "MISE A",
                                          size: 13,
                                          FontWeight: FontWeight.bold,
                                          color: Colors.redAccent),
                                      MyText(
                                          txt: "DI",
                                          size: 13,
                                          FontWeight: FontWeight.bold,
                                          color: Colors.redAccent),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          MyCard(),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              height: 80,
              width: 300,
              color: Colors.redAccent,
              child: Padding(
                padding: const EdgeInsets.only(left: 50),
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
                      padding: const EdgeInsets.only(left: 70.0),
                      child: MyText(
                          txt: "VOTRE BOUTIQUE ONLINE",
                          size: 11,
                          fm: "l",
                          color: Colors.white),
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
                                iconSize: 7,
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
          )
        ],
      ),
    );
  }
}
