import 'package:expense_tracker/controllers/add_budget_controller/add_budget_controller.dart';
import 'package:expense_tracker/controllers/add_controller.dart/main_container_controller.dart';
import 'package:expense_tracker/data/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BudgetAmountBoxWidget extends ConsumerWidget {
  const BudgetAmountBoxWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final budgetAmountNode = ref.watch(budgetAmountNodeProvider);
    final budgetAmountController = ref.watch(budgetAmountControllerProvider);
    final items = ref.watch(selectedValProvider);
    return TextField(
      keyboardType: TextInputType.number,
      focusNode: budgetAmountNode,
      controller: budgetAmountController,
      decoration: InputDecoration(
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        labelText: formatAmount(items.value),
        labelStyle: TextStyle(fontSize: 17, color: Colors.grey.shade500),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(width: 2, color: Color(0xffC5C5C5))),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(width: 2, color: Color(0xff368983))),
      ),
    );
  }
}
