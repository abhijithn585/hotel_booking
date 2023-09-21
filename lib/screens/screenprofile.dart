import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 300,
            width: double.infinity,
            color: Colors.blue,
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(50, 230, 0, 0),
                child: CircleAvatar(
                  radius: 70,
                  backgroundImage: AssetImage(
                    "asset/images/profile_image.jpg",
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(50, 50, 0, 0),
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        child: Text("Settings"),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color.fromARGB(64, 30, 30, 30)),
                        height: 50,
                        width: 300,
                      ),
                    ),
                    SizedBox(
                      height: 70,
                    ),
                    Container(
                      child: Text("logout"),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color.fromARGB(64, 30, 30, 30)),
                      height: 50,
                      width: 300,
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
