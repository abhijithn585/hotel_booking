import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:resto/db/functons/db_functions.dart';
import 'package:resto/model/data_model.dart';
import 'package:resto/screens/subscreens/edit_customer.dart';
import 'package:resto/screens/subscreens/terms_and_conditions.dart';

class BookingListScreen extends StatelessWidget {
  const BookingListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    getAllCustomers();
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 128, 98, 248),
        ),
        drawer: Drawer(
          child: Container(
              color: const Color.fromARGB(255, 128, 98, 248),
              child: ListView(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const TermsAndConditionsScreen(),
                      ));
                    },
                    child: const ListTile(
                      trailing: Icon(Icons.help, color: Colors.black),
                      leading: Text(
                        "Terms and Conditions",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ListTile(
                    onTap: () {
                      SystemNavigator.pop();
                    },
                    trailing: const Icon(Icons.logout, color: Colors.black),
                    leading: const Text(
                      "Log Out",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  )
                ],
              )),
        ),
        body: ValueListenableBuilder(
          valueListenable: customerListNotifier,
          builder: (BuildContext ctx, List<CustomerDataModel> customerList,
              Widget? child) {
            return ListView.separated(
                itemBuilder: (ctx, index) {
                  final data = customerList[index];
                  return Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    elevation: 3,
                    child: ListTile(
                      title: Align(
                          alignment: Alignment.center, child: Text(data.name)),
                      subtitle: Align(
                          alignment: Alignment.center,
                          child: Text(data.number)),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                              onPressed: () {
                                deleteCustomer(index);
                              },
                              icon: Icon(Icons.delete)),
                          IconButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => EditCustomerScreen(
                                      index: index,
                                      name: data.name,
                                      number: data.number),
                                ));
                              },
                              icon: Icon(Icons.edit))
                        ],
                      ),
                    ),
                  );
                },
                separatorBuilder: ((context, index) {
                  return Divider(
                    color: Colors.transparent,
                  );
                }),
                itemCount: customerList.length);
          },
        ));
  }
}
