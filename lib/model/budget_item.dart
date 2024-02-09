import 'package:hive/hive.dart';
part 'budget_item.g.dart';

@HiveType(typeId: 3)
class ExpenseData extends HiveObject {
  @HiveField(0)
  late Map<String, double> expenses;

  ExpenseData() {
    expenses = {
      'Food': 500000.0,
      'Clothing': 0.0,
      'Entertainment': 0.0,
      'Gift': 0.0,
      'Giving': 0.0,
      'Health': 0.0,
      'Housing': 0.0,
      'Savings': 0.0,
      'Tithe': 0.0,
      'Utilities': 0.0,
      "Transportation": 0.0,
      "Education": 0.0,
      "Others": 0.0
    };
  }
}

