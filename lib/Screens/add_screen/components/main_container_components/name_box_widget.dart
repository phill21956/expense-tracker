// import 'package:expense_tracker/controllers/add_controller.dart/main_container_controller.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';

// class NameBoxWidget extends ConsumerWidget {
//   const NameBoxWidget({super.key});

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final selectedItem = ref.watch(selectedCatProvider);
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
//             ref.read(selectedCatProvider.notifier).state = value!;
//             // if (value == 'Others') {
//             //   Navigator.of(context).push(
//             //       MaterialPageRoute(builder: (context) => Add_Screen()));
//             // }
//           }),
//           items: _item
//               .map((e) => DropdownMenuItem(
//                     child: Container(
//                       alignment: Alignment.center,
//                       child: Row(
//                         children: [
//                           Container(
//                             width: 40,
//                             child: Image.asset('images/${e}.png'),
//                           ),
//                           const SizedBox(width: 10),
//                           Text(
//                             e,
//                             style: const TextStyle(fontSize: 18),
//                           )
//                         ],
//                       ),
//                     ),
//                     value: e,
//                   ))
//               .toList(),
//           selectedItemBuilder: (BuildContext context) => _item
//               .map((e) => Row(
//                     children: [
//                       Container(
//                         width: 42,
//                         child: Image.asset('images/${e}.png'),
//                       ),
//                       const SizedBox(width: 5),
//                       Text(e)
//                     ],
//                   ))
//               .toList(),
//           hint: const Padding(
//             padding: EdgeInsets.only(top: 12),
//             child: Text(
//               'select category',
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
