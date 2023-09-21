import 'package:flutter/material.dart';
import 'package:resto/screens/screenhome.dart';
import 'package:resto/screens/screenlogin.dart';
import 'package:resto/screens/subscreens/edit_customer.dart';
import 'package:resto/screens/subscreens/terms_and_conditions.dart';

class BookingListScreen extends StatelessWidget {
  const BookingListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        drawer: Drawer(
          child: Container(
              color: Color.fromARGB(255, 225, 225, 225),
              child: ListView(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => TermsAndConditionsScreen(),
                      ));
                    },
                    child: ListTile(
                      trailing: Icon(Icons.help, color: Colors.black),
                      leading: Text(
                        "Terms and Conditions",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => LoginScreen(),
                      ));
                    },
                    child: ListTile(
                      trailing: Icon(Icons.logout, color: Colors.black),
                      leading: Text(
                        "Log Out",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                  )
                ],
              )),
        ),
        body: Container(
          width: double.infinity,
          color: Color.fromARGB(255, 228, 227, 227),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(50, 20, 0, 0),
                child: Image.asset('asset/images/Chart Container.png'),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                child: Container(
                  width: 300,
                  height: 70,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromARGB(114, 171, 171, 171)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(Icons.person),
                          Text("abhijith"),
                          IconButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => EditCustomerScreen(),
                                ));
                              },
                              icon: Icon(Icons.edit)),
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
                      color: Color.fromARGB(114, 171, 171, 171)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(Icons.person),
                          Text("abhijith"),
                          IconButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => EditCustomerScreen(),
                                ));
                              },
                              icon: Icon(Icons.edit)),
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
                      color: Color.fromARGB(114, 171, 171, 171)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(Icons.person),
                          Text("abhijith"),
                          IconButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => EditCustomerScreen(),
                                ));
                              },
                              icon: Icon(Icons.edit)),
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
                      color: Color.fromARGB(114, 171, 171, 171)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(Icons.person),
                          Text("abhijith"),
                          IconButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => EditCustomerScreen(),
                                ));
                              },
                              icon: Icon(Icons.edit)),
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
          ),
        ));
  }
}
