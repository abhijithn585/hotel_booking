import 'package:flutter/material.dart';

class BookingListScreen extends StatelessWidget {
  const BookingListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(50, 80, 0, 0),
          child: Image.asset('asset/images/Chart Container.png'),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
          child: Container(
            width: 300,
            height: 70,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color.fromARGB(232, 171, 171, 171)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(Icons.person),
                    Text("abhijith"),
                    Icon(Icons.edit),
                    Icon(Icons.delete)
                  ],
                ),
                Text('23/09/2023-24/09/2023')
              ],
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
          child: Container(
            width: 300,
            height: 70,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color.fromARGB(65, 0, 0, 0)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(Icons.person),
                    Text("abhijith"),
                    Icon(Icons.edit),
                    Icon(Icons.delete)
                  ],
                ),
                Text('23/09/2023-24/09/2023')
              ],
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
          child: Container(
            width: 300,
            height: 70,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color.fromARGB(65, 0, 0, 0)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(Icons.person),
                    Text("abhijith"),
                    Icon(Icons.edit),
                    Icon(Icons.delete)
                  ],
                ),
                Text('23/09/2023-24/09/2023')
              ],
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
          child: Container(
            width: 300,
            height: 70,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color.fromARGB(65, 0, 0, 0)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(Icons.person),
                    Text("abhijith"),
                    Icon(Icons.edit),
                    Icon(Icons.delete)
                  ],
                ),
                Text('23/09/2023-24/09/2023')
              ],
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
      ],
    ));
  }
}
