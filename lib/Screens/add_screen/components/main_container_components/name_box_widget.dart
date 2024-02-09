import 'package:expense_tracker/controllers/add_controller.dart/main_container_controller.dart';
import 'package:expense_tracker/controllers/bottom_bar_controller/bottom_bar_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class NameBoxWidget extends ConsumerWidget {
  const NameBoxWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(expenseStateProvider);
    final selectedItem = ref.watch(selectedValProvider);
    final items =
        state ? ref.watch(expenseCatProvider2) : ref.watch(expenseCatProvider);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        width: 300,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            width: 2,
            color: const Color(0xffC5C5C5),
          ),
        ),
        child: DropdownButton<String>(
          value: selectedItem.key,
          onChanged: ((value) {
            final entry =
                items.entries.firstWhere((entry) => entry.key == value);
            ref.read(selectedValProvider.notifier).state = entry;
            print('skdk:${selectedItem.key} - ${selectedItem.value}');
          }),
          items: items.keys
              .map((e) => DropdownMenuItem(
                    value: e,
                    child: Container(
                      alignment: Alignment.center,
                      child: Row(
                        children: [
                          SizedBox(
                              width: 40, child: Image.asset('images/$e.png')),
                          const SizedBox(width: 10),
                          Text(
                            e,
                            style: const TextStyle(fontSize: 18),
                          )
                        ],
                      ),
                    ),
                  ))
              .toList(),
          selectedItemBuilder: (BuildContext context) => items.entries
              .map((e) => Row(
                    children: [
                      SizedBox(
                        width: 42,
                        child: Image.asset('images/${e.key}.png'),
                      ),
                      const SizedBox(width: 5),
                      Text(e.key)
                    ],
                  ))
              .toList(),
          hint: const Padding(
            padding: EdgeInsets.only(top: 12),
            child: Text(
              'select category',
              style: TextStyle(color: Colors.grey),
            ),
          ),
          dropdownColor: Colors.white,
          isExpanded: true,
          underline: Container(),
        ),
      ),
    );
  }
}
