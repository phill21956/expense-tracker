import 'package:expense_tracker/controllers/bottom_bar_controller/bottom_bar_controller.dart';
import 'package:expense_tracker/main.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final dateProvider = StateProvider<DateTime>((ref) {
  return DateTime.now();
});

//FOR SELECTED EXPENSE CATEGORY IN NAME DROPDOWN
final selectedValProvider =
    StateProvider.autoDispose<MapEntry<String, double>>((ref) {
  return const MapEntry("Others", 0.0);
});

final expenseCatProvider =
    StateProvider.autoDispose<Map<String, double>>((ref) {
  try {
    final savedExpenses = expenseDataBox.get('expensed', defaultValue: {
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
    });
    print('Update: $savedExpenses');
    return savedExpenses!;
  } catch (e) {
    print('Error initializing expenseCatProvider: $e');
    return {
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
});

final expenseCatProvider2 =
    StateProvider.autoDispose<Map<String, double>>((ref) {
  return {"Income": 0.0, "Others": 0.0};
});

//CONTROLLER FOR DESCRIPTION BOX
final descriptionNodeProvider = StateProvider.autoDispose<FocusNode>((ref) {
  return FocusNode();
});

final descrControllerProvider =
    StateProvider.autoDispose<TextEditingController>((ref) {
  return TextEditingController();
});

//CONTROLLER FOR AMOUNT BOX
final amountControllerProvider =
    StateProvider.autoDispose<TextEditingController>((ref) {
  return TextEditingController();
});

final amountNodeProvider = StateProvider.autoDispose<FocusNode>((ref) {
  return FocusNode();
});

//FOR SELECTED EXPENSE TYPE IN EXPENSE TYPE DROPDOWN
final selectedTypeProvider = StateProvider.autoDispose<String?>((ref) {
  return null;
});

final expenseTypeProvider =
    StateProvider.autoDispose<TextEditingController>((ref) {
  final state = ref.watch(expenseStateProvider);
  return TextEditingController(text: state ? 'Income' : 'Expenses');
});


// final expenseTypeProvider = StateProvider<List<String>>((ref) {
//   return ['Income', "Expenses"];
// });

