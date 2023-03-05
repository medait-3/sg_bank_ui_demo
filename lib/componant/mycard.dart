import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Card(
        elevation: 50,
        shadowColor: Colors.black,
        color: Colors.white,
        child: SizedBox(
          width: 300,
          height: 220,
          child: Padding(
            padding: const EdgeInsets.all(2.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 11),
                  child: Text(
                    "HISTORIQUE",
                    style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 11),
                  child: Row(
                    children: [
                      Container(
                        color: Colors.greenAccent,
                        height: 25,
                        width: 2,
                      ),
                      const SizedBox(
                        width: 7,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "DATE A VENIR",
                            textAlign: TextAlign.left,
                            style: TextStyle(fontSize: 13),
                          ),
                          const SizedBox(
                            height: 2,
                          ),
                          Row(
                            children: [
                              const Text(
                                "VERSET ESPECES DEPL N",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 13),
                              ),
                              const SizedBox(
                                width: 31,
                              ),
                              const Text(
                                "+919,00 DH",
                                style: TextStyle(
                                    color: Colors.greenAccent,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 13),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 11),
                  child: Row(
                    children: [
                      Container(
                        color: Colors.redAccent,
                        height: 25,
                        width: 2,
                      ),
                      const SizedBox(
                        width: 7,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "DATE A VENIR",
                            textAlign: TextAlign.left,
                            style: TextStyle(fontSize: 13),
                          ),
                          const SizedBox(
                            height: 2,
                          ),
                          Row(
                            children: [
                              const Text(
                                "VERSET ESPECES DEPL N",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 13),
                              ),
                              const SizedBox(
                                width: 31,
                              ),
                              const Text(
                                "-19,00 DH",
                                style: TextStyle(
                                    color: Colors.redAccent,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 13),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 11),
                  child: Row(
                    children: [
                      Container(
                        color: Colors.greenAccent,
                        height: 25,
                        width: 2,
                      ),
                      const SizedBox(
                        width: 7,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "DATE A VENIR",
                            textAlign: TextAlign.left,
                            style: TextStyle(fontSize: 13),
                          ),
                          const SizedBox(
                            height: 2,
                          ),
                          Row(
                            children: [
                              const Text(
                                "VERSET ESPECES DEPL N",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 13),
                              ),
                              const SizedBox(
                                width: 31,
                              ),
                              const Text(
                                "+919,00 DH",
                                style: TextStyle(
                                    color: Colors.greenAccent,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 13),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 21,
                ),
                Expanded(
                  child: Container(
                    width: double.infinity,
                    child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              const Color.fromARGB(255, 255, 255, 255)),
                        ),
                        onPressed: () {},
                        child: const Text(
                          'VOIR LE DÉTAIL',
                          style: TextStyle(
                              color: Colors.redAccent,
                              fontWeight: FontWeight.bold,
                              fontSize: 13),
                        )),
                  ),
                ),
              ],
            ), //Column
          ), //Padding
        ), //SizedBox
      ),
    );
  }
}
