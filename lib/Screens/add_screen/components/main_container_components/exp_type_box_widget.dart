import 'package:expense_tracker/controllers/add_controller.dart/main_container_controller.dart';
import 'package:expense_tracker/controllers/bottom_bar_controller/bottom_bar_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// class ExpenseTypeBoxWidget extends ConsumerWidget {
//   const ExpenseTypeBoxWidget({super.key});
//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final selectedItem = ref.watch(selectedTypeProvider);
//     final items = ref.watch(expenseTypeProvider);
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 15),
//       child: Container(
//         padding: const EdgeInsets.symmetric(horizontal: 15),
//         width: 300,
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(10),
//           border: Border.all(
//             width: 2,
//             color: const Color(0xffC5C5C5),
//           ),
//         ),
//         child: DropdownButton<String>(
//           value: selectedItem,
//           onChanged: ((value) {
//             ref.read(selectedTypeProvider.notifier).state = value!;
//           }),
//           items: items
//               .map((e) => DropdownMenuItem(
//                     value: e,
//                     child: Container(
//                       alignment: Alignment.center,
//                       child: Row(
//                         children: [
//                           Text(
//                             e,
//                             style: const TextStyle(fontSize: 18),
//                           )
//                         ],
//                       ),
//                     ),
//                   ))
//               .toList(),
//           selectedItemBuilder: (BuildContext context) => items
//               .map((e) => Row(
//                     children: [Text(e)],
//                   ))
//               .toList(),
//           hint: const Padding(
//             padding: EdgeInsets.only(top: 12),
//             child: Text(
//               'type',
//               style: TextStyle(color: Colors.grey),
//             ),
//           ),
//           dropdownColor: Colors.white,
//           isExpanded: true,
//           underline: Container(),
//         ),
//       ),
//     );
//   }
// }

class ExpenseTypeWidget extends ConsumerWidget {
  ExpenseTypeWidget({Key? key}) : super(key: key);
  final FocusNode focusNode = FocusNode();
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(expenseStateProvider);
    final controller = ref.watch(expenseTypeProvider);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextField(
        focusNode: focusNode,
        controller: controller,
        readOnly: true,
        decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          labelText: state ? 'Income' : 'Expenses',
          labelStyle: TextStyle(fontSize: 17, color: Colors.grey.shade500),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(width: 2, color: Color(0xffC5C5C5)),
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(width: 2, color: Color(0xff368983))),
        ),
      ),
    );
  }
}
