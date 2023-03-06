import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sg_bank_ui/componant/mytxt.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Card(
        elevation: 2,
        shadowColor: Colors.black,

        child: Container(
          color: Colors.white70,
          child: SizedBox(
            width: 300,
            height: 220,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 11),
                  child: MyText(
                    txt: "HISTORIQUE",
                    size: 15,
                    FontWeight: FontWeight.bold,
                    color: Colors.red,
                    fm: "b",
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 11),
                  child: Row(
                    children: [
                      Container(
                        color: Colors.greenAccent,
                        height: 20,
                        width: 2,
                      ),
                      const SizedBox(
                        width: 7,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          MyText(
                            txt: "DATE A VENIR",
                            size: 13,
                            color: Colors.black,
                            fm: "l",
                          ),
                          const SizedBox(
                            height: 2,
                          ),
                          Row(
                            children: [
                              MyText(
                                txt: "VERSET ESPECES DEPL N",
                                size: 13,
                                color: Colors.black,
                                fm: "b",
                              ),
                              const SizedBox(width: 50),
                              MyText(
                                txt: "+919,00 DH",
                                size: 13,
                                color: Colors.greenAccent,
                                FontWeight: FontWeight.bold,
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
                        height: 20,
                        width: 2,
                      ),
                      const SizedBox(
                        width: 7,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          MyText(
                            txt: "DATE A VENIR",
                            size: 13,
                            color: Colors.black,
                            fm: "l",
                          ),
                          const SizedBox(
                            height: 2,
                          ),
                          Row(
                            children: [
                              MyText(
                                txt: "VERSET ESPECES DEPL N",
                                size: 13,
                                color: Colors.black,
                                fm: "b",
                              ),
                              const SizedBox(width: 50),
                              MyText(
                                txt: "+919,00 DH",
                                size: 13,
                                color: Colors.redAccent,
                                FontWeight: FontWeight.bold,
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
                        height: 20,
                        width: 2,
                      ),
                      const SizedBox(
                        width: 7,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          MyText(
                            txt: "DATE A VENIR",
                            size: 13,
                            color: Colors.black,
                            fm: "l",
                          ),
                          const SizedBox(
                            height: 2,
                          ),
                          Row(
                            children: [
                              MyText(
                                txt: "VERSET ESPECES DEPL N",
                                size: 13,
                                color: Colors.black,
                                fm: "b",
                              ),
                              const SizedBox(width: 50),
                              MyText(
                                txt: "+919,00 DH",
                                size: 13,
                                color: Colors.greenAccent,
                                FontWeight: FontWeight.bold,
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Expanded(
                  child: Container(
                    width: double.infinity,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          elevation: 20, // Elevation
                          shadowColor: Colors.black, // Shadow Color
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
            ), //Padding
          ),
        ), //SizedBox
      ),
    );
  }
}
