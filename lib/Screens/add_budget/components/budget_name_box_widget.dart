import 'package:expense_tracker/controllers/add_budget_controller/add_budget_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BudgetNameBoxWidget extends ConsumerWidget {
  const BudgetNameBoxWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final budgetNameNode = ref.watch(budgetNameNodeProvider);
    final budgetNameController = ref.watch(budgetNameControllerProvider);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextField(
        focusNode: budgetNameNode,
        controller: budgetNameController,
        decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          labelText: 'add an expense category',
          labelStyle: TextStyle(fontSize: 17, color: Colors.grey.shade500),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(width: 2, color: Color(0xffC5C5C5))),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(width: 2, color: Color(0xff368983))),
        ),
      ),
    );
  }
}
