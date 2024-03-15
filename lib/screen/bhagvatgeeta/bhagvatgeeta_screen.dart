import 'package:flutter/material.dart';
import 'package:geeta/screen/bhagvatgeeta/shloks_screen.dart';

import '../../utils/mahabharatlist.dart';

class BhagavadGeeta extends StatefulWidget {
  const BhagavadGeeta({super.key});

  @override
  State<BhagavadGeeta> createState() => _BhagavadGeetaState();
}

class _BhagavadGeetaState extends State<BhagavadGeeta> {

  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFADFAA),
      appBar: AppBar(
        backgroundColor: Colors.black,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          'श्रीमद भगवद गीता',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Expanded(
              child: Column(
                children: [
                  SizedBox(
                    height: 400,
                    width: 450,
                    child: Image.asset('assets/bg1.png',fit: BoxFit.cover,),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                children: [
                  SizedBox(
                    height: 190,
                    child: Image.asset(
                      'assets/logo.png',
                    ),
                  ),
                  Container(
                    height: 1766,
                    width: 420,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: InkWell(
                              onTap: () {
                                Index = 0;
                                Navigator.pushNamed(context, '/shloks');
                              },
                              child: Container(
                                height: 85,
                                width: 370,
                                decoration: BoxDecoration(
                                  gradient: const LinearGradient(
                                    colors: [
                                      Color(0xffFDB013),
                                      Color(0xffFDB013),
                                      Color(0xffFCBD3A),
                                      Color(0xffFCBD3A),
                                    ],
                                  ),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Row(
                                  children: [
                                    Image.asset(
                                      'assets/img1.png',
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 30),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            geetadata[index]['Bhaags'][0]['id'],
                                            style: const TextStyle(
                                              fontSize: 15,
                                              color: Colors.black,
                                            ),
                                          ),
                                          Text(
                                            geetadata[index]['Bhaags'][0]['name'],
                                            style: const TextStyle(
                                              fontSize: 25,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Index = 1;
                              Navigator.pushNamed(context, '/shloks');
                            },
                            child: Container(
                              height: 85,
                              width: 370,
                              decoration: BoxDecoration(
                                gradient: const LinearGradient(
                                  colors: [
                                    Color(0xffFDB013),
                                    Color(0xffFDB013),
                                    Color(0xffFCBD3A),
                                    Color(0xffFCBD3A),
                                  ],
                                ),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Row(
                                children: [
                                  Image.asset(
                                    'assets/img2.png',height: 73,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 70),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          geetadata[index]['Bhaags'][1]['id'],
                                          style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.black,
                                          ),
                                        ),
                                        Text(
                                          geetadata[index]['Bhaags'][1]['name'],
                                          style: TextStyle(
                                            fontSize: 25,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: InkWell(
                              onTap: () {
                                Index = 2;
                                Navigator.pushNamed(context, '/shloks');
                              },
                              child: Container(
                                height: 85,
                                width: 370,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [
                                      Color(0xffFDB013),
                                      Color(0xffFDB013),
                                      Color(0xffFCBD3A),
                                      Color(0xffFCBD3A),
                                    ],
                                  ),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Row(
                                  children: [
                                    Image.asset(
                                      'assets/img3.png',
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 70),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            geetadata[index]['Bhaags'][2]['id'],
                                            style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.black,
                                            ),
                                          ),
                                          Text(
                                            geetadata[index]['Bhaags'][2]['name'],
                                            style: TextStyle(
                                              fontSize: 25,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Index = 3;
                              Navigator.pushNamed(context, '/shloks');
                            },
                            child: Container(
                              height: 85,
                              width: 370,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Color(0xffFDB013),
                                    Color(0xffFDB013),
                                    Color(0xffFCBD3A),
                                    Color(0xffFCBD3A),
                                  ],
                                ),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Row(
                                children: [
                                  Image.asset(
                                    'assets/img4.png',height: 85,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 30),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          geetadata[index]['Bhaags'][3]['id'],
                                          style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.black,
                                          ),
                                        ),
                                        Text(
                                          geetadata[index]['Bhaags'][3]['name'],
                                          style: TextStyle(
                                            fontSize: 25,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: InkWell(
                              onTap: () {
                                Index = 4;
                                Navigator.pushNamed(context, '/shloks');
                              },
                              child: Container(
                                height: 85,
                                width: 370,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [
                                      Color(0xffFDB013),
                                      Color(0xffFDB013),
                                      Color(0xffFCBD3A),
                                      Color(0xffFCBD3A),
                                    ],
                                  ),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Row(
                                  children: [
                                    Image.asset(
                                      'assets/img1.png',
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 30),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            geetadata[index]['Bhaags'][4]['id'],
                                            style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.black,
                                            ),
                                          ),
                                          Text(
                                            geetadata[index]['Bhaags'][4]['name'],
                                            style: TextStyle(
                                              fontSize: 25,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Index = 5;
                              Navigator.pushNamed(context, '/shloks');
                            },
                            child: Container(
                              height: 85,
                              width: 370,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Color(0xffFDB013),
                                    Color(0xffFDB013),
                                    Color(0xffFCBD3A),
                                    Color(0xffFCBD3A),
                                  ],
                                ),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Row(
                                children: [
                                  Image.asset(
                                    'assets/img2.png',height: 72,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 50),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          geetadata[index]['Bhaags'][5]['id'],
                                          style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.black,
                                          ),
                                        ),
                                        Text(
                                          geetadata[index]['Bhaags'][5]['name'],
                                          style: TextStyle(
                                            fontSize: 25,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: InkWell(
                              onTap: () {
                                Index = 6;
                                Navigator.pushNamed(context, '/shloks');
                              },
                              child: Container(
                                height: 85,
                                width: 370,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [
                                      Color(0xffFDB013),
                                      Color(0xffFDB013),
                                      Color(0xffFCBD3A),
                                      Color(0xffFCBD3A),
                                    ],
                                  ),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Row(
                                  children: [
                                    Image.asset(
                                      'assets/img3.png',
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 50),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            geetadata[index]['Bhaags'][6]['id'],
                                            style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.black,
                                            ),
                                          ),
                                          Text(
                                            geetadata[index]['Bhaags'][6]['name'],
                                            style: TextStyle(
                                              fontSize: 25,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Index = 7;
                              Navigator.pushNamed(context, '/shloks');
                            },
                            child: Container(
                              height: 85,
                              width: 370,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Color(0xffFDB013),
                                    Color(0xffFDB013),
                                    Color(0xffFCBD3A),
                                    Color(0xffFCBD3A),
                                  ],
                                ),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Row(
                                children: [
                                  Image.asset(
                                    'assets/img4.png',height: 85,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 40),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          geetadata[index]['Bhaags'][7]['id'],
                                          style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.black,
                                          ),
                                        ),
                                        Text(
                                          geetadata[index]['Bhaags'][7]['name'],
                                          style: TextStyle(
                                            fontSize: 25,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: InkWell(
                              onTap: () {
                                Index = 8;
                                Navigator.pushNamed(context, '/shloks');
                              },
                              child: Container(
                                height: 85,
                                width: 370,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [
                                      Color(0xffFDB013),
                                      Color(0xffFDB013),
                                      Color(0xffFCBD3A),
                                      Color(0xffFCBD3A),
                                    ],
                                  ),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Row(
                                  children: [
                                    Image.asset(
                                      'assets/img1.png',
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 10),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            geetadata[index]['Bhaags'][8]['id'],
                                            style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.black,
                                            ),
                                          ),
                                          Text(
                                            geetadata[index]['Bhaags'][8]['name'],
                                            style: TextStyle(
                                              fontSize: 25,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Index = 9;
                              Navigator.pushNamed(context, '/shloks');
                            },
                            child: Container(
                              height: 85,
                              width: 370,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Color(0xffFDB013),
                                    Color(0xffFDB013),
                                    Color(0xffFCBD3A),
                                    Color(0xffFCBD3A),
                                  ],
                                ),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Row(
                                children: [
                                  Image.asset(
                                    'assets/img2.png',height: 85,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 50),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          geetadata[index]['Bhaags'][9]['id'],
                                          style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.black,
                                          ),
                                        ),
                                        Text(
                                          geetadata[index]['Bhaags'][9]['name'],
                                          style: TextStyle(
                                            fontSize: 25,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: InkWell(
                              onTap: () {
                                Index = 10;
                                Navigator.pushNamed(context, '/shloks');
                              },
                              child: Container(
                                height: 85,
                                width: 370,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [
                                      Color(0xffFDB013),
                                      Color(0xffFDB013),
                                      Color(0xffFCBD3A),
                                      Color(0xffFCBD3A),
                                    ],
                                  ),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Row(
                                  children: [
                                    Image.asset(
                                      'assets/img3.png',
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 40),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            geetadata[index]['Bhaags'][10]['id'],
                                            style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.black,
                                            ),
                                          ),
                                          Text(
                                            geetadata[index]['Bhaags'][10]['name'],
                                            style: TextStyle(
                                              fontSize: 25,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Index = 11;
                              Navigator.pushNamed(context, '/shloks');
                            },
                            child: Container(
                              height: 85,
                              width: 370,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Color(0xffFDB013),
                                    Color(0xffFDB013),
                                    Color(0xffFCBD3A),
                                    Color(0xffFCBD3A),
                                  ],
                                ),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Row(
                                children: [
                                  Image.asset(
                                    'assets/img4.png',height: 85,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 60),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          geetadata[index]['Bhaags'][11]['id'],
                                          style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.black,
                                          ),
                                        ),
                                        Text(
                                          geetadata[index]['Bhaags'][11]['name'],
                                          style: TextStyle(
                                            fontSize: 25,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: InkWell(
                              onTap: () {
                                Index = 12;
                                Navigator.pushNamed(context, '/shloks');
                              },
                              child: Container(
                                height: 85,
                                width: 370,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [
                                      Color(0xffFDB013),
                                      Color(0xffFDB013),
                                      Color(0xffFCBD3A),
                                      Color(0xffFCBD3A),
                                    ],
                                  ),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Row(
                                  children: [
                                    Image.asset(
                                      'assets/img3.png',
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 30),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            geetadata[index]['Bhaags'][12]['id'],
                                            style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.black,
                                            ),
                                          ),
                                          Text(
                                            geetadata[index]['Bhaags'][12]['name'],
                                            style: TextStyle(
                                              fontSize: 25,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Index = 13;
                              Navigator.pushNamed(context, '/shloks');
                            },
                            child: Container(
                              height: 85,
                              width: 370,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Color(0xffFDB013),
                                    Color(0xffFDB013),
                                    Color(0xffFCBD3A),
                                    Color(0xffFCBD3A),
                                  ],
                                ),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Row(
                                children: [
                                  Image.asset(
                                    'assets/img2.png',height: 85,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 30),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          geetadata[index]['Bhaags'][13]['id'],
                                          style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.black,
                                          ),
                                        ),
                                        Text(
                                          geetadata[index]['Bhaags'][13]['name'],
                                          style: TextStyle(
                                            fontSize: 25,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: InkWell(
                              onTap: () {
                                Index = 14;
                                Navigator.pushNamed(context, '/shloks');
                              },
                              child: Container(
                                height: 85,
                                width: 370,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [
                                      Color(0xffFDB013),
                                      Color(0xffFDB013),
                                      Color(0xffFCBD3A),
                                      Color(0xffFCBD3A),
                                    ],
                                  ),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Row(
                                  children: [
                                    Image.asset(
                                      'assets/img3.png',
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 50),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            geetadata[index]['Bhaags'][14]['id'],
                                            style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.black,
                                            ),
                                          ),
                                          Text(
                                            geetadata[index]['Bhaags'][14]['name'],
                                            style: TextStyle(
                                              fontSize: 25,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Index = 15;
                              Navigator.pushNamed(context, '/shloks');
                            },
                            child: Container(
                              height: 85,
                              width: 370,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Color(0xffFDB013),
                                    Color(0xffFDB013),
                                    Color(0xffFCBD3A),
                                    Color(0xffFCBD3A),
                                  ],
                                ),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Row(
                                children: [
                                  Image.asset(
                                    'assets/img4.png',height: 85,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 10),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          geetadata[index]['Bhaags'][15]['id'],
                                          style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.black,
                                          ),
                                        ),
                                        Text(
                                          geetadata[index]['Bhaags'][15]['name'],
                                          style: TextStyle(
                                            fontSize: 25,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: InkWell(
                              onTap: () {
                                Index = 16;
                                Navigator.pushNamed(context, '/shloks');
                              },
                              child: Container(
                                height: 85,
                                width: 370,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [
                                      Color(0xffFDB013),
                                      Color(0xffFDB013),
                                      Color(0xffFCBD3A),
                                      Color(0xffFCBD3A),
                                    ],
                                  ),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Row(
                                  children: [
                                    Image.asset(
                                      'assets/img3.png',
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 30),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            geetadata[index]['Bhaags'][16]['id'],
                                            style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.black,
                                            ),
                                          ),
                                          Text(
                                            geetadata[index]['Bhaags'][16]['name'],
                                            style: TextStyle(
                                              fontSize: 25,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Index = 17;
                              Navigator.pushNamed(context, '/shloks');
                            },
                            child: Container(
                              height: 85,
                              width: 370,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Color(0xffFDB013),
                                    Color(0xffFDB013),
                                    Color(0xffFCBD3A),
                                    Color(0xffFCBD3A),
                                  ],
                                ),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Row(
                                children: [
                                  Image.asset(
                                    'assets/img2.png',height: 85,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 40),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          geetadata[index]['Bhaags'][17]['id'],
                                          style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.black,
                                          ),
                                        ),
                                        Text(
                                          geetadata[index]['Bhaags'][17]['name'],
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}