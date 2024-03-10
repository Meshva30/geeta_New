import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../utils/mahatmay.dart';

class gita_mahatmay extends StatelessWidget {
  const gita_mahatmay({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: InkWell(
          onTap: () {
            Navigator.of(context).pop();
          },
            child: Icon(
          Icons.arrow_back,
          color: Colors.white,
        )),
        title: Text(
          'श्रीमद भगवत गीता',
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Color(0xfffae0af),
          child: Stack(
            children: [
              Expanded(
                child: Column(
                  children: [
                    Container(
                      height: 410,
                      width: 410,
                      child: Image.asset(
                        "assets/bg1.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  SizedBox(
                      height: 190,
                      width: 410,
                      child: Image.asset('assets/logo.png')),
                  Container(
                      height: 3600,
                      width: 410,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Container(
                              height: 3545,
                              width: 380,
                              decoration: BoxDecoration(
                                color: Color(0xfffbb010),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15)),
                              ),
                              child: Column(children: [
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Text("गीता माहात्म्य",
                                      style: TextStyle(fontSize: 25)),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                ...List.generate(
                                  mahatmay.length,
                                  (index) => Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10),
                                    child: Text(mahatmay[index],
                                        style: TextStyle(fontSize: 20)),
                                  ),
                                ),
                                SizedBox(
                                  height: 130,
                                ),
                                Divider(
                                  color: Colors.black,
                                  thickness: 10,
                                ),
                              ]),
                            ),
                          ),
                        ],
                      )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
