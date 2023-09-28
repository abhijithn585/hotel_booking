import 'package:hive_flutter/adapters.dart';
part 'data_model.g.dart';

@HiveType(typeId: 1)
class CustomerDataModel {
  @HiveField(0)
  final String name;
  @HiveField(1)
  final String number;

  CustomerDataModel({required this.name, required this.number});
}
