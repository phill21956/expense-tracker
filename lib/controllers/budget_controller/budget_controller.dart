import 'package:expense_tracker/main.dart';
import 'package:expense_tracker/model/add_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final budgetNotifierProvider = StateProvider<ValueNotifier>((ref) {
  return ValueNotifier(0);
});

final budgetDayProvider = StateProvider<List<String>>((ref) {
  return ['Day', 'Week', 'Month', 'Year'];
});

final budgetIndexProvider = StateProvider<int>((ref) {
  return 0;
});

List<Add_data> budgetDay() {
  Map<String, double> aggregatedPrices = {};
  List<Add_data> aggregatedList = [];
  var history2 = addDataBox.values.toList();
  DateTime date = DateTime.now();

  for (var item in history2) {
    if (item.datetime.day == date.day) {
      if (aggregatedPrices.containsKey(item.name)) {
        aggregatedPrices[item.name] =
            (aggregatedPrices[item.name] ?? 0) + double.parse(item.amount);
      } else {
        aggregatedPrices[item.name] = double.parse(item.amount);
      }
    }
  }

  aggregatedList = aggregatedPrices.entries.map((entry) {
    String itemName = entry.key;
    double totalPrice = entry.value;
    Add_data originalItem =
        history2.firstWhere((item) => item.name == itemName);
    return Add_data(
      originalItem.IN,
      totalPrice.toString(),
      originalItem.datetime,
      originalItem.explain,
      itemName,
    );
  }).toList();
  return aggregatedList;
}


List<Add_data> budgetWeek() {
  Map<String, double> aggregatedPrices = {};
  Map<String, Add_data> originalItems = {}; // New map to store original items
  List<Add_data> aggregatedList = [];
  var history2 = addDataBox.values.toList();
  DateTime date = DateTime.now();

  history2.forEach((item) {
    if (date.day - 7 <= item.datetime.day && item.datetime.day <= date.day) {
      if (aggregatedPrices.containsKey(item.name)) {
        aggregatedPrices[item.name] =
            (aggregatedPrices[item.name] ?? 0) + double.parse(item.amount);
      } else {
        aggregatedPrices[item.name] = double.parse(item.amount);
        originalItems[item.name] = item; // Store original item
      }
    }
  });

  aggregatedList = aggregatedPrices.entries.map((entry) {
    String itemName = entry.key;
    double totalPrice = entry.value;
    Add_data originalItem =
        originalItems[itemName]!; // Retrieve original item directly
    return Add_data(
      originalItem.IN,
      totalPrice.toString(),
      originalItem.datetime,
      originalItem.explain,
      itemName,
    );
  }).toList();
  return aggregatedList;
}


List<Add_data> budgetMonth() {
  Map<String, double> aggregatedPrices = {};
  List<Add_data> aggregatedList = [];
  var history2 = addDataBox.values.toList();
  DateTime date = DateTime.now();

  history2.forEach((item) {
    if (item.datetime.month == date.month) {
      if (aggregatedPrices.containsKey(item.name)) {
        aggregatedPrices[item.name] =
            (aggregatedPrices[item.name] ?? 0) + double.parse(item.amount);
      } else {
        aggregatedPrices[item.name] = double.parse(item.amount);
      }
    }
  });

  aggregatedList = aggregatedPrices.entries.map((entry) {
    String itemName = entry.key;
    double totalPrice = entry.value;
    Add_data originalItem =
        history2.firstWhere((item) => item.name == itemName);
    return Add_data(
      originalItem.IN,
      totalPrice.toString(),
      originalItem.datetime,
      originalItem.explain,
      itemName,
    );
  }).toList();
  return aggregatedList;
}


List<Add_data> budgetYear() {
  Map<String, double> aggregatedPrices = {};
  List<Add_data> aggregatedList = [];
  var history2 = addDataBox.values.toList();
  DateTime date = DateTime.now();

  history2.forEach((item) {
    if (item.datetime.year == date.year) {
      if (aggregatedPrices.containsKey(item.name)) {
        aggregatedPrices[item.name] =
            (aggregatedPrices[item.name] ?? 0) + double.parse(item.amount);
      } else {
        aggregatedPrices[item.name] = double.parse(item.amount);
      }
    }
  });

  aggregatedList = aggregatedPrices.entries.map((entry) {
    String itemName = entry.key;
    double totalPrice = entry.value;
    Add_data originalItem =
        history2.firstWhere((item) => item.name == itemName);
    return Add_data(
      originalItem.IN,
      totalPrice.toString(),
      originalItem.datetime,
      originalItem.explain,
      itemName,
    );
  }).toList();
  return aggregatedList;
}
