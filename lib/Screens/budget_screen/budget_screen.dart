import 'package:expense_tracker/Screens/budget_screen/components/budget_body_widget.dart';
import 'package:expense_tracker/Screens/budget_screen/components/budget_header.dart';
import 'package:expense_tracker/controllers/budget_controller/budget_controller.dart';
import 'package:expense_tracker/model/add_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BudgetScreen extends ConsumerWidget {
  BudgetScreen({super.key});
  final List b = [budgetDay(), budgetWeek(), budgetMonth(), budgetYear()];
  List<Add_data> budgetData = [];
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final budget = ref.watch(budgetNotifierProvider);
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(0.05),
      body: SafeArea(
        child: ValueListenableBuilder(
            valueListenable: budget,
            builder: (context, dynamic value, child) {
              budgetData = b[value];
              return Column(
                children: [
                  const BudgetHeaderWidget(),
                  const SizedBox(height: 20),
                  BudgetBodyWidget(aggList: budgetData)
                ],
              );
            }),
      ),
    );
  }
}
