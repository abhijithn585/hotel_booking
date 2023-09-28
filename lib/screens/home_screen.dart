import 'package:flutter/material.dart';
import 'package:resto/screens/subscreens/hotel_coastal_details.dart';
import 'package:resto/screens/subscreens/hotel_lakeside_details.dart';
import 'package:resto/screens/subscreens/hotel_paradise_details.dart';
import 'package:resto/screens/subscreens/hotel_prestige.dart';
import 'package:resto/screens/subscreens/hotel_tropical_details.dart';
import 'package:resto/screens/subscreens/hotel_raviz_details.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final images = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        SizedBox(
          width: 500,
          child: Image.asset(
            "asset/images/homeimage.png",
            fit: BoxFit.fill,
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 228, 227, 227),
                  borderRadius: BorderRadiusDirectional.vertical(
                      top: Radius.circular(30))),
              height: 500,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(15, 10, 0, 0),
                      child: Container(
                          alignment: Alignment.topLeft,
                          child: const Text(
                            'Villas for You',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          )),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) =>
                                          const RavizDetails()));
                                },
                                child: resortList(
                                    image1: 'asset/images/villa1.jpg',
                                    text1: 'The Raviz',
                                    text2: 'sadsad',
                                    text3: 'dsada'),
                              ),
                            ),
                            const SizedBox(width: 20),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) =>
                                          const HotelPrestigeDetails()));
                                },
                                child: resortList(
                                    image1: 'asset/images/villa2.jpg',
                                    text1: 'The Prestige',
                                    text2: 'sadsad',
                                    text3: 'dsada'),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) =>
                                          const HotelParadiseDetails()));
                                },
                                child: resortList(
                                    image1: 'asset/images/villa3.jpg',
                                    text1: 'Hotel Paradise',
                                    text2: 'sadsad',
                                    text3: 'dsada'),
                              ),
                            ),
                            const SizedBox(width: 20),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) =>
                                          const HotelLakesideDetails()));
                                },
                                child: resortList(
                                    image1: 'asset/images/villa6.jpg',
                                    text1: 'Hotel Lakeside',
                                    text2: 'sadsad',
                                    text3: 'dsada'),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) =>
                                          const HotelCoastalDetails()));
                                },
                                child: resortList(
                                    image1: 'asset/images/villa4.jpg',
                                    text1: 'The Coastel',
                                    text2: 'sadsad',
                                    text3: 'dsada'),
                              ),
                            ),
                            const SizedBox(width: 20),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) =>
                                          const HotelTropicalDetails()));
                                },
                                child: resortList(
                                    image1: 'asset/images/villa5.jpg',
                                    text1: 'The Tropical',
                                    text2: 'sadsad',
                                    text3: 'dsada'),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        Positioned(
            top: 80,
            left: 20,
            child: Text(
              "Hi! Abhijith",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.white),
            ))
      ],
    ));
  }

  ClipRRect resortList({
    required String image1,
    required String text1,
    required String text2,
    required String text3,
  }) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Container(
        decoration: BoxDecoration(color: Colors.white),
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 200,
                  width: 150,
                  child: Image.asset(
                    image1,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 150,
                  left: 40,
                  child: Container(
                    child: Column(
                      children: [],
                    ),
                  ),
                )
              ],
            ),
            Text(
              text1,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              text2,
            ),
            Text(
              text3,
            )
          ],
        ),
      ),
    );
  }
}
