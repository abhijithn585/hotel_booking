import 'package:flutter/material.dart';
import 'package:resto/db/functons/db_functions.dart';
import 'package:resto/model/data_model.dart';
import 'package:resto/screens/screenBooking.dart';
import 'package:resto/screens/widgets/bottomnavbar.dart';

class BookingScreen extends StatelessWidget {
  BookingScreen({super.key});
  final _nameController = TextEditingController();
  final _numberController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 128, 98, 248),
      ),
      body: Stack(
        children: [
          SizedBox(
            height: 400,
            width: 500,
            child: Image.asset(
              'asset/images/registrationbackground.png',
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
                    const Text(
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
                                  controller: _nameController,
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
                                  controller: _numberController,
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
                        const Text(
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
                                child: TextButton(onPressed: (){}, child: Text("Select date and time "))
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
                              backgroundColor:
                                  const Color.fromARGB(255, 128, 98, 248),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20))),
                          onPressed: () {
                            onAddDetailsButtonClicked(context);
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

  Future<void> onAddDetailsButtonClicked(BuildContext context) async {
    final _name = _nameController.text.trim();
    final _number = _numberController.text.trim();
    if (_name.isEmpty || _number.isEmpty) {
      return;
    }
    final _customer = CustomerDataModel(name: _name, number: _number);
    addcustomer(_customer);
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => BottomNavBar(),
    ));
  }
}
