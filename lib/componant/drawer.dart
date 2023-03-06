import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'mytxt.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Drawer(
      elevation: 20.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: 120,
            child: DrawerHeader(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.centerRight,
                colors: [
                  Colors.white,
                  Colors.red,
                ],
              )),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      PhysicalModel(
                        color: Colors.grey,
                        elevation: 0,
                        shape: BoxShape.circle,
                        child: CircleAvatar(
                          radius: 20,
                          backgroundColor: Colors.red,
                          child: IconButton(
                              color: Colors.black,
                              iconSize: 22,
                              icon:
                                  const Icon(Icons.person, color: Colors.white),
                              onPressed: () {
                                // do something
                              }),
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          MyText(
                              align: TextAlign.right,
                              txt: "BONJOUR",
                              size: 12,
                              fm: "l",
                              FontWeight: FontWeight.bold,
                              color: Colors.black),
                          Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: MyText(
                                txt: "MY NAME",
                                size: 18,
                                fm: "b",
                                FontWeight: FontWeight.bold,
                                color: Colors.red),
                          ),
                        ],
                      ),
                    ],
                  ),
                  CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.red,
                    child: IconButton(
                        color: Colors.black,
                        iconSize: 22,
                        icon: const Icon(Icons.person, color: Colors.white),
                        onPressed: () {
                          // do something
                        }),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
              child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  color: Colors.white70,
                  height: 15,
                  child: MyText(
                      txt: "BANQUE OF QUOTIDIEN",
                      size: 12,
                      FontWeight: FontWeight.bold,
                      color: Colors.red),
                ),
                ListTile(
                  title: Text("ITEM 6"),
                ),
                ListTile(
                  title: Text("ITEM 6"),
                ),
                ListTile(
                  title: Text("ITEM 6"),
                ),
                Container(
                  color: Colors.white70,
                  height: 15,
                  child: MyText(
                      txt: "BANQUE OF QUOTIDIEN",
                      size: 12,
                      FontWeight: FontWeight.bold,
                      color: Colors.red),
                ),
                ListTile(
                  title: Text("ITEM 6"),
                ),
                Container(
                  color: Colors.white70,
                  height: 15,
                  child: MyText(
                      txt: "BANQUE OF QUOTIDIEN",
                      size: 12,
                      FontWeight: FontWeight.bold,
                      color: Colors.red),
                ),
                ListTile(
                  title: Text("ITEM 6"),
                ),
                Container(
                  color: Colors.white70,
                  height: 15,
                  child: MyText(
                      txt: "BANQUE OF QUOTIDIEN",
                      size: 12,
                      FontWeight: FontWeight.bold,
                      color: Colors.red),
                ),
                ListTile(
                  title: Text("ITEM 6"),
                ),
                ListTile(
                  title: Text("ITEM 6"),
                ),
                ListTile(
                  title: Text("ITEM 6"),
                ),
                ListTile(
                  title: Text("ITEM 6"),
                ),
                ListTile(
                  title: Text("ITEM 6"),
                ),
                ListTile(
                  title: Text("ITEM 6"),
                ),
                ListTile(
                  title: Text("ITEM 6"),
                ),
                ListTile(
                  title: Text("ITEM 6"),
                ),
                ListTile(
                  title: Text("ITEM 6"),
                ),
                ListTile(
                  title: Text("ITEM 6"),
                ),
                ListTile(
                  title: Text("ITEM 6"),
                ),
                ListTile(
                  title: Text("ITEM 6"),
                ),
              ],
            ),
          )),
          Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.centerRight,
                colors: [
                  Colors.white,
                  Colors.red,
                ],
              )),
              height: 100,
              child: Align(
                  alignment: FractionalOffset.bottomCenter,
                  child: Column(
                    children: <Widget>[],
                  ))),
        ],
      ),
    ));
  }
}
