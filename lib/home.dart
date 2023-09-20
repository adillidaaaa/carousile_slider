import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'dart:ui';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<String> place = [
    "images/MANALI.jpg",
    "images/download (2).jpg",
    "images/cypress-hills.jpg",
    "images/download.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(8),
                  bottomRight: Radius.circular(8))),
          title: Center(
              child: const Text(
            " carousile slider",
            style: TextStyle(fontWeight: FontWeight.w900, fontSize: 20),
          )),
          titleTextStyle: TextStyle(color: Color.fromARGB(255, 255, 248, 248)),
          backgroundColor: Color.fromARGB(255, 73, 133, 82),
        ),
        backgroundColor: Color.fromARGB(255, 210, 229, 245),
        body: Column(
          children: [
            Center(child: Text("carousile slider")),
            Container(
              height: 500,
              child: CarouselSlider(
                  items: place
                      .map((e) => Container(
                            child: Center(
                              child: Image.asset(e),
                            ),
                          ))
                      .toList(),
                  options: CarouselOptions(
                      autoPlay: true, aspectRatio: 2, enlargeCenterPage: true)),
            ),
          ],
        ));
  }
}
