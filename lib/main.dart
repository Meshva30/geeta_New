import 'package:flutter/material.dart';
import 'package:geeta/screen/bhagvatgeeta/bhagvatgeeta_screen.dart';
import 'package:geeta/screen/bhagvatgeeta/shloks_screen.dart';
import 'package:geeta/screen/geetaaarti_screen.dart';
import 'package:geeta/screen/geetamahatmay_screen.dart';
import 'package:geeta/screen/geetasaar_screen.dart';
import 'package:geeta/screen/home_screen.dart';
import 'package:geeta/screen/spalsh_screen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/': (context) => splashscreen(),
      '/home': (context) => homescreen(),
      '/Bhagavad': (context) => BhagavadGeeta(),
      '/shloks': (context) => shloks(),
      '/saar': (context) => Saar(),
      '/mahatmay': (context) => gita_mahatmay(),
      '/aarti': (context) => gitarti_screen(),
    },
  ));
}
