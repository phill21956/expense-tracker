import 'package:expense_tracker/controllers/add_controller.dart/main_container_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

//CONTROLLER FOR NAME BOX
final budgetNameNodeProvider = StateProvider.autoDispose<FocusNode>((ref) {
  return FocusNode();
});

final budgetNameControllerProvider =
    StateProvider.autoDispose<TextEditingController>((ref) {
  final items = ref.watch(selectedValProvider);
  return TextEditingController(text: items.key);
});

//CONTROLLER FOR AMOUNT BOX
final budgetAmountControllerProvider =
    StateProvider.autoDispose<TextEditingController>((ref) {
  final items = ref.watch(selectedValProvider);
  return TextEditingController(text: items.value.toString());
});

final budgetAmountNodeProvider = StateProvider.autoDispose<FocusNode>((ref) {
  return FocusNode();
});
