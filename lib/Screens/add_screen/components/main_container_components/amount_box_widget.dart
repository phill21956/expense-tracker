import 'package:expense_tracker/controllers/add_controller.dart/main_container_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AmountBoxWidget extends ConsumerWidget {
  const AmountBoxWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final amountNode = ref.watch(amountNodeProvider);
    final amountController = ref.watch(amountControllerProvider);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextField(
        keyboardType: TextInputType.number,
        focusNode: amountNode,
        controller: amountController,
        decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          labelText: 'amount',
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
