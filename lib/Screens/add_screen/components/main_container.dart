import 'package:expense_tracker/Screens/add_screen/components/main_container_components/amount_box_widget.dart';
import 'package:expense_tracker/Screens/add_screen/components/main_container_components/date_time_box_widget.dart';
import 'package:expense_tracker/Screens/add_screen/components/main_container_components/description_box_widget.dart';
import 'package:expense_tracker/Screens/add_screen/components/main_container_components/exp_type_box_widget.dart';
import 'package:expense_tracker/Screens/add_screen/components/main_container_components/name_box_widget.dart';
import 'package:expense_tracker/Screens/add_screen/components/main_container_components/save_botton_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MainContainerWidget extends ConsumerWidget {
  const MainContainerWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      height: 550,
      width: 340,
      child: const Column(
        children: [
          SizedBox(height: 50),
          NameBoxWidget(),
          SizedBox(height: 30),
          DescriptionBoxWidget(),
          SizedBox(height: 30),
          AmountBoxWidget(),
          SizedBox(height: 30),
          ExpenseTypeBoxWidget(),
          SizedBox(height: 30),
          DateTimeBoxWidget(),
          Spacer(),
          SaveButtonWidget(),
          SizedBox(height: 25),
        ],
      ),
    );
  }
}
