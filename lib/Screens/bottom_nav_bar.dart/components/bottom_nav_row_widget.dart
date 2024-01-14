import 'package:expense_tracker/controllers/bottom_bar_controller/bottom_bar_controller.dart';
import 'package:expense_tracker/data/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BottomNavRowWidget extends StatelessWidget {
  const BottomNavRowWidget({
    super.key,
    required this.indexColor,
    required this.ref,
  });
  final WidgetRef ref;
  final int indexColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        GestureDetector(
          onTap: () => ref.read(bottomBarIndexProvider.notifier).state = 0,
          child: Icon(
            Icons.home,
            size: 30,
            color: indexColor == 0 ? primaryColor : Colors.grey,
          ),
        ),
        GestureDetector(
          onTap: () => ref.read(bottomBarIndexProvider.notifier).state = 1,
          child: Icon(
            Icons.bar_chart_outlined,
            size: 30,
            color: indexColor == 1 ? primaryColor : Colors.grey,
          ),
        ),
        const SizedBox(width: 10),
        GestureDetector(
          onTap: () => ref.read(bottomBarIndexProvider.notifier).state = 2,
          child: Icon(
            Icons.account_balance_wallet_outlined,
            size: 30,
            color: indexColor == 2 ? primaryColor : Colors.grey,
          ),
        ),
        GestureDetector(
          onTap: () => ref.read(bottomBarIndexProvider.notifier).state = 3,
          child: Icon(
            Icons.person_outlined,
            size: 30,
            color: indexColor == 3 ? primaryColor : Colors.grey,
          ),
        ),
      ],
    );
  }
}
