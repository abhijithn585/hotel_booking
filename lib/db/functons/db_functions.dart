import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:resto/model/data_model.dart';

ValueNotifier<List<CustomerDataModel>> customerListNotifier = ValueNotifier([]);
Future<void> addcustomer(CustomerDataModel value) async {
  final customerDB = await Hive.openBox<CustomerDataModel>('customer_DB');
  customerDB.add(value);
  customerListNotifier.notifyListeners();
}

Future<void> getAllCustomers() async {
  final customerDB = await Hive.openBox<CustomerDataModel>('customer_DB');
  customerListNotifier.value.clear();
  customerListNotifier.value.addAll(customerDB.values);
  customerListNotifier.notifyListeners();
}

Future<void> deleteCustomer(int index) async {
  final customerDB = await Hive.openBox<CustomerDataModel>('customer_DB');
  await customerDB.deleteAt(index);
  customerListNotifier.notifyListeners();
  getAllCustomers();
}

Future<void> editCustomer(index, CustomerDataModel value) async {
  final studentDB = await Hive.openBox<CustomerDataModel>('customer_DB');
  customerListNotifier.value.clear();
  customerListNotifier.value.addAll(studentDB.values);
  customerListNotifier.notifyListeners();
  studentDB.putAt(index, value);
  getAllCustomers();
}
