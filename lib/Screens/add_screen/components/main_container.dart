import 'package:expense_tracker/Screens/add_screen/components/main_container_components/name_box_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MainContainerWidget extends ConsumerWidget {
  MainContainerWidget({super.key});
  
  
  String? selctedItemi;
  final TextEditingController descriptionController = TextEditingController();
  FocusNode ex = FocusNode();
  final TextEditingController amountController = TextEditingController();
  FocusNode amount_ = FocusNode();
  final List<String> _expenseCategory = [
    'food',
    "Transfer",
    "Transportation",
    "Education"
  ];

  final List<String> _expenseType = [
    'Income',
    "Expenses",
  ];
  
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      height: 550,
      width: 340,
      child: Column(
        children: [
          const SizedBox(height: 50),
        //  NameBoxWidget(),
          const SizedBox(height: 30),
          // explain(),
          // const SizedBox(height: 30),
          // amount(),
          // const SizedBox(height: 30),
          // How(),
          // const SizedBox(height: 30),
          // date_time(),
          // const Spacer(),
          // save(),
          // const SizedBox(height: 25),
        ],
      ),
    );
  }


  
}
