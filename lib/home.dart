import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _prix = 1222;
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
      body: Column(
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.topCenter,
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                          padding: EdgeInsets.all(10),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(50.0),
                            child: Image.network(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSnOlm4eSbJJ3l_y78tKAD1ym4PjVnGbokEhkU3vHya&s",
                              height: 50.0,
                              width: 50.0,
                              fit: BoxFit.cover, //change image fill type
                            ),
                          )),
                      //Ci
                    ],
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 17, vertical: 5),
                    child: Row(
                      children: [
                        Text(
                          "COMPTE",
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                        Text(
                          " CHÉQUE DIRHAMS",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 17, vertical: 2),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Visibility(
                              visible: _passwordVisible,
                              child: Text(
                                "${_prix}",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              ),
                            ),
                            Text(
                              " DH",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                          ],
                        ),
                        IconButton(
                            iconSize: 25,
                            color: Colors.white,
                            icon: Icon(
                              _passwordVisible
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              size: 18,
                            ),
                            onPressed: () {
                              setState(() {
                                _passwordVisible = !_passwordVisible;
                              });
                            }),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.audiotrack,
                            color: Colors.green,
                            size: 30.0,
                          ),
                          Text(
                            "EN TRAITMENT",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                      Text(
                        "EN TRAITMENT",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  )
                ],
              ),
              color: Colors.redAccent,
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.white12,
            ),
          ),
        ],
      ),
    );
  }
}
