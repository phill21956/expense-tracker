import 'package:expense_tracker/controllers/budget_controller/budget_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BudgetHeaderWidget extends ConsumerWidget {
  const BudgetHeaderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final statsIndex = ref.watch(budgetIndexProvider);
    final statsDay = ref.watch(budgetDayProvider);
    return Container(
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.01),
          spreadRadius: 10,
          blurRadius: 3,
        ),
      ]),
      child: Padding(
        padding:
            const EdgeInsets.only(top: 60, right: 20, left: 20, bottom: 25),
        child: Column(
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Budget",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                Row(
                  children: [
                    Icon(Icons.add, size: 25),
                    SizedBox(width: 20),
                    Icon(Icons.search)
                  ],
                )
              ],
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ...List.generate(
                    4,
                    (index) {
                      return Expanded(
                        child: GestureDetector(
                          onTap: () {
                            ref.read(budgetIndexProvider.notifier).state =
                                index;
                            ref
                                .read(budgetNotifierProvider.notifier)
                                .state
                                .value = index;
                          },
                          child: Container(
                            height: 40,
                            width: 80,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: statsIndex == index
                                  ? const Color.fromARGB(255, 47, 125, 121)
                                  : Colors.white,
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              statsDay[index],
                              style: TextStyle(
                                color: statsIndex == index
                                    ? Colors.white
                                    : Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
