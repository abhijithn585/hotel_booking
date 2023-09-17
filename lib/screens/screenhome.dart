import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final images = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          child: Image.asset(
            "asset/images/homeimage.png",
            fit: BoxFit.fill,
          ),
          width: 500,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadiusDirectional.vertical(
                      top: Radius.circular(30))),
              height: 500,
              child: Row(
                children: [
                  Container(
                    height: 200,
                    width: 150,
                    color: Colors.amber,
                  ),
                  SizedBox(width: 20),
                  Container(
                    height: 200,
                    width: 150,
                    color: Colors.amber,
                  ),
                  SizedBox(width: 20),
                  Container(
                    height: 200,
                    width: 150,
                    color: Colors.amber,
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    ));
  }
}
