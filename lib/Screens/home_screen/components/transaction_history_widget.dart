import 'package:expense_tracker/Screens/statistic_screen/statistic_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TransactionHistoryWidget extends ConsumerWidget {
  const TransactionHistoryWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'Transactions History',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 19,
              color: Colors.black,
            ),
          ),
          InkWell(
            onTap: () => Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => StatsScreen())),
            child: const Text(
              'See all',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 15,
                color: Colors.grey,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
