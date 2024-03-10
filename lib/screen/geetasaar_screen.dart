import 'package:flutter/material.dart';

import '../utils/adhyaylist.dart';

class Saar extends StatefulWidget {
  const Saar({super.key});

  @override
  State<Saar> createState() => _SaarState();
}

class _SaarState extends State<Saar> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Color(0xFFFDE3B2),
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
      body: Stack(
        children: [
          Container(
            height: height * 0.6,
            width: width,
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage('assets/bg1.png'),
              fit: BoxFit.cover,
            )),
          ),
          Container(
            width: width,
            // color: Colors.blue,
            child: SingleChildScrollView(
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.s,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(0, height * 0.085, 0, 0),
                    height: height * 0.21,
                    width: width * 0.52,
                    // color: Colors.red,
                    child: Image.asset(
                      'assets/logo.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    // height: height * 0.6,
                    width: width,
                    decoration: BoxDecoration(
                      color: Color(0xFFFEF2DA),
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                    ),
                    child: Column(
                      children: [
                        ...List.generate(
                          saardata[0]['bhaags'].length,
                          (index) => buildContainer(index),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildContainer(int index) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
        padding: EdgeInsets.all(20),
        margin: EdgeInsets.all(20),
        // height: height * 0.5,
        width: double.infinity,
        decoration: BoxDecoration(
            color: Color(0xFFFDB316),
            borderRadius: BorderRadius.all(Radius.circular(8)),
            border: Border(bottom: BorderSide(width: 10))),
        child: Column(
          children: [
            Text(
              saardata[0]['bhaags'][index]['id'],
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: height / 55,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                saardata[0]['bhaags'][index]['name'],
                style: TextStyle(
                  fontSize: height / 40,
                  fontWeight: FontWeight.w300,
                  color: Colors.black,
                ),
              ),
            ),
            Text(
              saardata[0]['bhaags'][index]['meaning'],
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: height / 55,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
            ),
          ],
        ));
  }
}
