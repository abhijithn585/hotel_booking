import 'package:flutter/material.dart';
import 'package:resto/screens/screenhome.dart';

class CustomWidget extends StatelessWidget {
  CustomWidget(
      {super.key,
      required this.image,
      required this.description,
      required this.price,
      required this.navigation});

  String image;
  String description;
  String price;
  VoidCallback navigation;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Stack(
        children: [
          SizedBox(
            height: 500,
            child: Image.asset(
              image,
              fit: BoxFit.fill,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 70, 0, 0),
            child: Container(
              height: 45,
              width: 45,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color.fromARGB(119, 255, 255, 255),
              ),
              child: IconButton(
                  onPressed: () {
                    Navigator.of(context).pop(MaterialPageRoute(
                      builder: (context) => const HomeScreen(),
                    ));
                  },
                  icon: const Icon(Icons.arrow_back_ios_new_rounded)),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
                  color: Colors.white,
                ),
                height: 400,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("About Us",
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.bold)),
                          Text(
                            description,
                            style: const TextStyle(fontSize: 17),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            spreadRadius: 5,
                            blurRadius: 5,
                            offset: const Offset(10, 3),
                          ),
                        ],
                      ),
                      width: 400,
                      height: 80,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                            child: Text('Price estimate'),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(10, 20, 0, 0),
                                child: Text(price),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(0, 0, 10, 10),
                                child: ElevatedButton(
                                    onPressed: navigation,
                                    child: const Text('Reserve')),
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
