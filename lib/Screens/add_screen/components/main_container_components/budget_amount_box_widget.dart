import 'package:expense_tracker/Screens/add_budget/components/budget_amount_box_widget.dart';
import 'package:expense_tracker/Screens/add_budget/components/budget_name_box_widget.dart';
import 'package:expense_tracker/Screens/add_budget/components/budget_save_botton_widget.dart';
import 'package:expense_tracker/controllers/add_controller.dart/main_container_controller.dart';
import 'package:expense_tracker/data/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BudgetBoxWidget extends ConsumerWidget {
  const BudgetBoxWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final items = ref.watch(selectedValProvider);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Container(
        alignment: Alignment.bottomLeft,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(width: 2, color: const Color(0xffC5C5C5))),
        width: 300,
        child: Row(
          children: [
            IconButton(
              tooltip: 'Add your desired budget',
              onPressed: () => addBudgetDialog(context, ref),
              icon: Icon(
                Icons.edit,
                color: Colors.red.shade400,
              ),
            ),
            Text(
              formatAmount(items.value),
              style: const TextStyle(
                fontSize: 15,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<dynamic> addBudgetDialog(BuildContext context, WidgetRef ref) {
    return showDialog(
      context: context,
      builder: (context) => const AlertDialog(
        backgroundColor: Colors.white,
        title: Text('Add Budget Amount'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: 20),
            BudgetNameBoxWidget(),
            SizedBox(height: 20),
            BudgetAmountBoxWidget(),
            SizedBox(height: 50),
            BudgetSaveButtonWidget(),
            SizedBox(height: 25),
          ],
        ),
      ),
    );
  }
}
