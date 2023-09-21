// import 'package:flutter/material.dart';

// class ProfileScreen extends StatelessWidget {
//   const ProfileScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           Container(
//             height: 300,
//             width: double.infinity,
//             color: Colors.blue,
//           ),
//           Column(
//             children: [
//               Padding(
//                 padding: const EdgeInsets.fromLTRB(50, 230, 0, 0),
//                 child: CircleAvatar(
//                   radius: 70,
//                   backgroundImage: AssetImage(
//                     "asset/images/profile_image.jpg",
//                   ),
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.fromLTRB(50, 50, 0, 0),
//                 child: Column(
//                   children: [
//                     GestureDetector(
//                       onTap: () {},
//                       child: Container(
//                         child: Text("Settings"),
//                         decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(20),
//                             color: Color.fromARGB(64, 30, 30, 30)),
//                         height: 50,
//                         width: 300,
//                       ),
//                     ),
//                     SizedBox(
//                       height: 70,
//                     ),
//                     Container(
//                       child: Text("logout"),
//                       decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(20),
//                           color: Color.fromARGB(64, 30, 30, 30)),
//                       height: 50,
//                       width: 300,
//                     ),
//                   ],
//                 ),
//               )
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:resto/screens/widgets/bottomnavbar.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 400,
            color: Colors.blue,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(40)),
                  color: Color.fromARGB(255, 253, 253, 253),
                ),
                height: 500,
                width: 500,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Terms and Conditions',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          height: 50,
                          width: 270,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(80, 0, 0, 0),
                              borderRadius: BorderRadius.circular(20)),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.help_rounded),
                                  Text(
                                    '',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          height: 50,
                          width: 270,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(80, 0, 0, 0),
                              borderRadius: BorderRadius.circular(20)),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            top: 190,
            left: 110,
            child: CircleAvatar(
              radius: 90,
              backgroundImage: AssetImage("asset/images/profile_image.jpg"),
            ),
          ),
          Positioned(
              top: 400,
              left: 140,
              child: Text(
                "R P Groups",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ))
        ],
      ),
    );
  }
}
