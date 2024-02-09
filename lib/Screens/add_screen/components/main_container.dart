import 'package:expense_tracker/Screens/add_screen/components/main_container_components/amount_box_widget.dart';
import 'package:expense_tracker/Screens/add_screen/components/main_container_components/budget_amount_box_widget.dart';
import 'package:expense_tracker/Screens/add_screen/components/main_container_components/date_time_box_widget.dart';
import 'package:expense_tracker/Screens/add_screen/components/main_container_components/description_box_widget.dart';
import 'package:expense_tracker/Screens/add_screen/components/main_container_components/exp_type_box_widget.dart';
import 'package:expense_tracker/Screens/add_screen/components/main_container_components/name_box_widget.dart';
import 'package:expense_tracker/Screens/add_screen/components/main_container_components/save_botton_widget.dart';
import 'package:expense_tracker/controllers/bottom_bar_controller/bottom_bar_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MainContainerWidget extends ConsumerWidget {
  const MainContainerWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(expenseStateProvider);
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      height: 550,
      width: 340,
      child: ListView(
        shrinkWrap: true,
        children: [
          const SizedBox(height: 50),
          const NameBoxWidget(),
          const SizedBox(height: 30),
          const DescriptionBoxWidget(),
          const SizedBox(height: 30),
          const AmountBoxWidget(),
          const SizedBox(height: 30),
          ExpenseTypeWidget(),
          const SizedBox(height: 30),
          const DateTimeBoxWidget(),
          if (!state) const SizedBox(height: 30),
          if (!state) const BudgetBoxWidget(),
          const SizedBox(height: 50),
          const SaveButtonWidget(),
          const SizedBox(height: 25),
        ],
      ),
    );
  }
}
