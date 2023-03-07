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
            height: 100,
            child: DrawerHeader(
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(0, 1.0), //(x,y)
                      blurRadius: 6.0,
                    ),
                  ],
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
                              size: 14,
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
                    backgroundColor: Colors.redAccent,
                    child: IconButton(
                        color: Colors.black,
                        iconSize: 22,
                        icon: const Icon(Icons.settings, color: Colors.white),
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
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 22,
                  ),
                  child: Container(
                    alignment: Alignment.topLeft,
                    height: 14,
                    child: MyText(
                        txt: "BANQUE OF QUOTIDIEN",
                        size: 12,
                        FontWeight: FontWeight.bold,
                        color: Colors.red),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 2,
                  ),
                  child: ListTile(
                    leading: Icon(
                      Icons.money,
                      color: Colors.redAccent,
                    ),
                    title: Text('COMPTES'),
                    minLeadingWidth: 10,
                  ),
                ),
                Stack(
                  children: [
                    Divider(
                      thickness: 0.5,
                      color: Colors.grey[400],
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 14, vertical: 7),
                        child: Container(
                          color: Colors.redAccent,
                          height: 1,
                          width: 30,
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 2,
                  ),
                  child: ListTile(
                    leading: Icon(
                      Icons.money,
                      color: Colors.redAccent,
                    ),
                    title: Text('COMPTES'),
                    minLeadingWidth: 10,
                  ),
                ),
                Stack(
                  children: [
                    Divider(
                      thickness: 0.5,
                      color: Colors.grey[400],
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 14, vertical: 7),
                        child: Container(
                          color: Colors.redAccent,
                          height: 1,
                          width: 30,
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 2,
                  ),
                  child: ListTile(
                    leading: Icon(
                      Icons.money,
                      color: Colors.redAccent,
                    ),
                    title: Text('COMPTES'),
                    minLeadingWidth: 10,
                  ),
                ),
                Stack(
                  children: [
                    Divider(
                      thickness: 0.5,
                      color: Colors.grey[400],
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 14, vertical: 7),
                        child: Container(
                          color: Colors.redAccent,
                          height: 1,
                          width: 30,
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 21,
                  ),
                  child: Container(
                    alignment: Alignment.topLeft,
                    height: 14,
                    child: MyText(
                        txt: "CRÉDITS",
                        size: 12,
                        FontWeight: FontWeight.bold,
                        color: Colors.red),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 2,
                  ),
                  child: ListTile(
                    leading: Icon(
                      Icons.money,
                      color: Colors.redAccent,
                    ),
                    title: Text('CRÉDITS'),
                    minLeadingWidth: 10,
                  ),
                ),
                Stack(
                  children: [
                    Divider(
                      thickness: 0.5,
                      color: Colors.grey[400],
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 14, vertical: 7),
                        child: Container(
                          color: Colors.redAccent,
                          height: 1,
                          width: 30,
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 21,
                  ),
                  child: Container(
                    alignment: Alignment.topLeft,
                    height: 14,
                    child: MyText(
                        txt: "DÉCOUVRIR NOS PRODUITS",
                        size: 12,
                        FontWeight: FontWeight.bold,
                        color: Colors.red),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 2,
                  ),
                  child: ListTile(
                    leading: Icon(
                      Icons.money,
                      color: Colors.redAccent,
                    ),
                    title: Text('COMPTES'),
                    minLeadingWidth: 10,
                  ),
                ),
                Stack(
                  children: [
                    Divider(
                      thickness: 0.5,
                      color: Colors.grey[400],
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 14, vertical: 7),
                        child: Container(
                          color: Colors.redAccent,
                          height: 1,
                          width: 30,
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 21,
                  ),
                  child: Container(
                    alignment: Alignment.topLeft,
                    height: 14,
                    child: MyText(
                        txt: "DOTATIONS & RECHARGES",
                        size: 12,
                        FontWeight: FontWeight.bold,
                        color: Colors.red),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 2,
                  ),
                  child: ListTile(
                    leading: Icon(
                      Icons.money,
                      color: Colors.redAccent,
                    ),
                    title: Text('COMPTES'),
                    trailing: ElevatedButton(
                        child: Text("NOVEAU".toUpperCase(),
                            style: TextStyle(fontSize: 10)),
                        style: ButtonStyle(
                            foregroundColor:
                                MaterialStateProperty.all<Color>(Colors.white),
                            backgroundColor:
                                MaterialStateProperty.all<Color>(Colors.red),
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(55.0),
                                    side: BorderSide(color: Colors.red)))),
                        onPressed: () => null),
                    minLeadingWidth: 10,
                  ),
                ),
                Stack(
                  children: [
                    Divider(
                      thickness: 0.5,
                      color: Colors.grey[400],
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 14, vertical: 7),
                        child: Container(
                          color: Colors.redAccent,
                          height: 1,
                          width: 30,
                        ),
                      ),
                    ),
                  ],
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
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(0, 1.0), //(x,y)
                      blurRadius: 6.0,
                    ),
                  ],
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.centerRight,
                    colors: [
                      Colors.white,
                      Colors.red,
                    ],
                  )),
              height: 90,
              child: Align(
                  alignment: FractionalOffset.bottomCenter,
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(9.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset(
                              "assets/sg.png",
                              height: 70,
                            ),
                            ElevatedButton(
                                child: Text("DÉCONNIXON".toUpperCase(),
                                    style: TextStyle(
                                        fontSize: 10, fontFamily: "b")),
                                style: ButtonStyle(
                                    foregroundColor:
                                        MaterialStateProperty.all<Color>(
                                            Colors.white),
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                            Colors.red),
                                    shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(55.0),
                                            side: BorderSide(
                                                color: Colors.red)))),
                                onPressed: () => null),
                          ],
                        ),
                      ),
                    ],
                  ))),
        ],
      ),
    ));
  }
}
