import 'package:flutter/material.dart';
import 'package:resto/screens/screenhome.dart';
import 'package:resto/screens/widgets/bottomnavbar.dart';

class BookingScreen extends StatefulWidget {
  const BookingScreen({super.key});

  @override
  State<BookingScreen> createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 0, 76, 139),
      ),
      body: Stack(
        children: [
          SizedBox(
            height: 400,
            width: 500,
            child: Image.asset(
              'asset/images/registrationbackground.jpg',
              fit: BoxFit.fill,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(40)),
                  color: Colors.white,
                ),
                height: 600,
                width: 500,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Registration",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              const Icon(Icons.person),
                              const SizedBox(
                                width: 20,
                              ),
                              SizedBox(
                                width: 300,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: const Color.fromARGB(
                                        255, 212, 212, 212),
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                        borderSide: BorderSide.none),
                                    hintText: 'Name',
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              const Icon(Icons.phone),
                              const SizedBox(
                                width: 20,
                              ),
                              SizedBox(
                                width: 300,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: const Color.fromARGB(
                                        255, 212, 212, 212),
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                        borderSide: BorderSide.none),
                                    hintText: 'Number',
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              const Icon(Icons.calendar_month),
                              const SizedBox(
                                width: 20,
                              ),
                              SizedBox(
                                width: 300,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: const Color.fromARGB(
                                        255, 212, 212, 212),
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                        borderSide: BorderSide.none),
                                    hintText: 'DD/MM/YYYY',
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          "To",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              const Icon(Icons.calendar_month),
                              const SizedBox(
                                width: 20,
                              ),
                              SizedBox(
                                width: 300,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: const Color.fromARGB(
                                        255, 212, 212, 212),
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                        borderSide: BorderSide.none),
                                    hintText: 'DD/MM/YYYY',
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 100,
                    ),
                    SizedBox(
                      width: 280,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20))),
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => BottomNavBar(),
                            ));
                          },
                          child: const Text('Done')),
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
