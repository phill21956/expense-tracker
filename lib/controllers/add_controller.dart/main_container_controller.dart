import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final dateProvider = StateProvider<DateTime>((ref) {
  return DateTime.now();
});

//FOR SELECTED EXPENSE CATEGORY IN NAME DROPDOWN
final selectedCatProvider = StateProvider.autoDispose<String?>((ref) {
  return null;
});

final expenseCatProvider = StateProvider.autoDispose<List<String>>((ref) {
  return [
    "Income",
    'Food',
    'Clothing',
    'Entertainment',
    'Gift',
    'Giving',
    'Health',
    'Housing',
    'Savings',
    'Tithe',
    'Utilities',
    "Transportation",
    "Education",
    "Others"
  ];
});
// final expenseCatProvider = StateProvider.autoDispose<List<String>>((ref) {
//   return ["Transfer", "Add new category"];
// });

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

final expenseTypeProvider = StateProvider<List<String>>((ref) {
  return ['Income', "Expenses"];
});
