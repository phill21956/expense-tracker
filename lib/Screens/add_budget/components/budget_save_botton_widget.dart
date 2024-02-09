import 'package:expense_tracker/controllers/add_budget_controller/add_budget_controller.dart';
import 'package:expense_tracker/controllers/add_controller.dart/main_container_controller.dart';
import 'package:expense_tracker/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttertoast/fluttertoast.dart';

class BudgetSaveButtonWidget extends ConsumerWidget {
  const BudgetSaveButtonWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final amountController = ref.watch(budgetAmountControllerProvider);
    final nameController = ref.watch(budgetNameControllerProvider);
    final expenseCat = ref.watch(expenseCatProvider);
    final items = ref.watch(selectedValProvider);
    return GestureDetector(
      onTap: () {
        if (amountController.text.isEmpty || nameController.text.isEmpty) {
          Fluttertoast.showToast(
              msg: "Please fill all fields",
              toastLength: Toast.LENGTH_LONG,
              gravity: ToastGravity.CENTER,
              backgroundColor: Colors.red,
              textColor: Colors.white,
              fontSize: 16.0);
        } else {
          final String name = nameController.text;
          final double amount = double.parse(amountController.text);
          // Get the current expenses map from the expenseCatProvider state
          final Map<String, double> updatedExpenses = expenseCat;

          // Update the expenses map with the new amount
          updatedExpenses.update(name, (existingValue) => amount,
              ifAbsent: () => amount);

              
          expenseDataBox.put('expensed', updatedExpenses);


          final Map<String, double> storedExpenses =
              expenseDataBox.get('expensed') ?? updatedExpenses;
        
          // Find the updated expense entry
          final MapEntry<String, double> updatedSelectedExpense =
              storedExpenses.entries.firstWhere((entry) => entry.key == name);

          ref.read(selectedValProvider.notifier).state = updatedSelectedExpense;
          ref.read(expenseCatProvider.notifier).state = storedExpenses;

          print('Updated123: ${expenseCat.keys} -- ${expenseCat.values}');
          print('Updated: ${items.key} -- ${items.value}');
          print('Updated1: ${storedExpenses}');

          Navigator.of(context).pop();
        }
      },
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: const Color(0xff368983),
        ),
        width: 120,
        height: 50,
        child: const Text(
          'Save',
          style: TextStyle(
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w600,
            color: Colors.white,
            fontSize: 17,
          ),
        ),
      ),
    );
  }
}
