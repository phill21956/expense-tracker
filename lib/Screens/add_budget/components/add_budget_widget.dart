import 'package:expense_tracker/Screens/add_budget/components/budget_amount_box_widget.dart';
import 'package:expense_tracker/Screens/add_budget/components/budget_name_box_widget.dart';
import 'package:expense_tracker/Screens/add_budget/components/budget_save_botton_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AddBudgetWidget extends ConsumerWidget {
  const AddBudgetWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      height: 350,
      width: 340,
      child: const Column(
        children: [
          SizedBox(height: 50),
          BudgetNameBoxWidget(),
          SizedBox(height: 30),
          BudgetAmountBoxWidget(),
          Spacer(),
          BudgetSaveButtonWidget(),
          SizedBox(height: 25),
        ],
      ),
    );
  }
}
