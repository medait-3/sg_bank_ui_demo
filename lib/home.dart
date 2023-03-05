import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sg_bank_ui/componant/mycard.dart';
import 'package:sg_bank_ui/componant/mycirculebutton.dart';
import 'package:sg_bank_ui/componant/mytxt.dart';

import 'componant/appbar.dart';
import 'componant/status_view.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _prix = 12122;
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
                                size: 16,
                                color: Colors.white,
                                FontWeight: null,
                              ),
                              MyText(
                                  txt: " CHÉQUE DIRHAMS",
                                  size: 16,
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
                                  Visibility(
                                    visible: _passwordVisible,
                                    child: Text(
                                      "${_prix}",
                                      style: const TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18),
                                    ),
                                  ),
                                  MyText(
                                      txt: " DH",
                                      size: 18,
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
                                    color: Colors.white,
                                    size: 18.0,
                                  ),
                                  MyText(
                                      txt: "EN TRAITMENT",
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
                                    color: Colors.white,
                                    size: 18.0,
                                  ),
                                  MyText(
                                      txt: "MISE A JOUR",
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
                    color: Colors.white12,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 32,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              MyCirculbutton(
                                title: "CARTES",
                                color1: Colors.red,
                              ),
                              SizedBox(
                                width: 52,
                              ),
                              MyCirculbutton(
                                title: " VIRMENTS",
                                color1: Colors.red,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 22, right: 8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              MyCirculbutton(
                                title: "CARTES",
                                color1: Colors.red,
                              ),
                              SizedBox(
                                width: 52,
                              ),
                              MyCirculbutton(
                                title: " VIRMENTS",
                                color1: Colors.red,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          MyCard(),
        ],
      ),
    );
  }
}
