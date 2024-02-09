import 'package:expense_tracker/controllers/add_controller.dart/main_container_controller.dart';
import 'package:expense_tracker/main.dart';
import 'package:expense_tracker/model/add_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttertoast/fluttertoast.dart';

class SaveButtonWidget extends ConsumerWidget {
  const SaveButtonWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedItemCat = ref.watch(selectedValProvider);
    final selectedItemType = ref.watch(expenseTypeProvider);
    final amountController = ref.watch(amountControllerProvider);
    final descrController = ref.watch(descrControllerProvider);
    final date = ref.watch(dateProvider);
    return GestureDetector(
      onTap: () {
        if (selectedItemCat.key.isEmpty ||
            selectedItemType.text.isEmpty ||
            amountController.text.isEmpty ||
            descrController.text.isEmpty) {
          print(
              '$selectedItemCat ,$selectedItemType , ${descrController.text} , ${amountController.text}');
          Fluttertoast.showToast(
              msg: "Please fill all fields",
              toastLength: Toast.LENGTH_LONG,
              gravity: ToastGravity.CENTER,
              backgroundColor: Colors.red,
              textColor: Colors.white,
              fontSize: 16.0);
        } else {
          if (selectedItemCat.value < double.parse(amountController.text)) {
            Fluttertoast.showToast(
                msg: "The amount exceed your budget for ${selectedItemCat.key}",
                toastLength: Toast.LENGTH_LONG,
                gravity: ToastGravity.CENTER,
                backgroundColor: Colors.red,
                textColor: Colors.white,
                fontSize: 16.0);
          } else {
            double bal = ref.read(selectedValProvider.notifier).state.value;
            bal -= double.parse(amountController.text);
            print('New Balance: $bal');
            var add = Add_data(selectedItemType.text, amountController.text,
                date, descrController.text, selectedItemCat.key);
            //print('ADD:$add');
            addDataBox.add(add);
            Navigator.of(context).pop();
          }
        }
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
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
      ),
    );
  }
}
