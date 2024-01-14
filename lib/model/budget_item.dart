import 'package:flutter/material.dart';

class BudgetItem {
  String name;
  double price;
  double percentage;
  dynamic color;

  BudgetItem({
    required this.name,
    required this.price,
    required this.percentage,
    required this.color,
  });

  @override
  String toString() {
    return 'Name: $name, Price: $price, Percentage: $percentage, Color: $color';
  }
}

List<BudgetItem> budgetJson = [
  BudgetItem(
    name: "food",
    price: 2250.00,
    percentage: 0.45,
    color: Colors.green,
  ),
  BudgetItem(
    name: "Education",
    price: 3000.00,
    percentage: 0.7,
    color: Colors.red,
  ),
  BudgetItem(
    name: "Transportation",
    price: 4000.00,
    percentage: 0.6,
    color: Colors.blue,
  ),
  BudgetItem(
    name: "food",
    price: 4000.00,
    percentage: 0.9,
    color: Colors.amber,
  ),
];

// List<BudgetItem> budget() {
//   Map<String, double> aggregatedPrices = {};
//   List<BudgetItem> aggregatedList = [];

//   budgetJson.forEach((item) {
//     if (aggregatedPrices.containsKey(item.name)) {
//       aggregatedPrices[item.name] =
//           (aggregatedPrices[item.name] ?? 0) + item.price;
//     } else {
//       aggregatedPrices[item.name] = item.price;
//     }
//   });

//   aggregatedList = aggregatedPrices.entries.map((entry) {
//     String itemName = entry.key;
//     double totalPrice = entry.value;
//     // Find the corresponding item in budgetJson
//     BudgetItem originalItem =
//         budgetJson.firstWhere((item) => item.name == itemName);
//     return BudgetItem(
//       name: itemName,
//       price: totalPrice,
//       percentage: originalItem.percentage,
//       color: originalItem.color,
//     );
//   }).toList();
//   return aggregatedList;
// }


