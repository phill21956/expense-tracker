import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

//CONTROLLER FOR NAME BOX
final budgetNameNodeProvider = StateProvider.autoDispose<FocusNode>((ref) {
  return FocusNode();
});

final budgetNameControllerProvider =
    StateProvider.autoDispose<TextEditingController>((ref) {
  return TextEditingController();
});

//CONTROLLER FOR AMOUNT BOX
final budgetAmountControllerProvider =
    StateProvider.autoDispose<TextEditingController>((ref) {
  return TextEditingController();
});

final budgetAmountNodeProvider = StateProvider.autoDispose<FocusNode>((ref) {
  return FocusNode();
});