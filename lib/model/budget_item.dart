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
