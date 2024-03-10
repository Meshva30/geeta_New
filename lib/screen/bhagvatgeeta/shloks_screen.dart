import 'package:flutter/material.dart';

import '../../utils/mahabharatlist.dart';

class shloks extends StatefulWidget {
  const shloks({super.key});

  @override
  State<shloks> createState() => _shloksState();
}
int Index=0;
class _shloksState extends State<shloks> {
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
                    width: width,
                    decoration: BoxDecoration(
                      color: Color(0xFFFEF2DA),
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                    ),
                    child: Column(
                      children: [
                        ...List.generate(
                            geetadata[0]['Bhaags'][0]['shloks'].length,
                            (index) => bulidcontainer(index))
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

  Widget bulidcontainer(int index) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 0),
      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 8),
      decoration: const BoxDecoration(
        color: Color(0xFFFDB316),
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          if (index == 0)
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
              child: Text(
                geetadata[0]['Bhaags'][Index]['id'],
                style: TextStyle(
                  //fontSize: height / 65,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xFF2E2E2E),
                ),
              ),
            ),
          if (index == 0)
            Text(
              geetadata[0]['Bhaags'][Index]['name'],
              style: TextStyle(
                fontSize: height / 45,
                fontWeight: FontWeight.w400,
                color: const Color(0xFF2E2E2E),
              ),
            ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Text(
              geetadata[0]['Bhaags'][Index]['shloks'][index]['shlok'],
              style: TextStyle(
                fontSize: height / 45,
                fontWeight: FontWeight.w400,
                color: const Color(0xFF2E2E2E),
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              geetadata[0]['Bhaags'][Index]['shloks'][index]['meaning'],
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: height / 45,
                fontWeight: FontWeight.w400,
                color: const Color(0xFF2E2E2E),
              ),
            ),
          ),
          Container(
            height: height * 0.05,
            width: width,
            decoration: const BoxDecoration(
                color: Color(0xFF2F2D32),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(5),
                    bottomRight: Radius.circular(5))),
            child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Copy',
                    style: TextStyle(
                        color: Color(0xFFFDB316),
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    'Share',
                    style: TextStyle(
                        color: Color(0xFFFDB316),
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                ]),
          ),
        ],
      ),
    );
  }
}
