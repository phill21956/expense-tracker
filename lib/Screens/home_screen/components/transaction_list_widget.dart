import 'package:expense_tracker/data/utils.dart';
import 'package:expense_tracker/model/add_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TransactionListWidget extends ConsumerWidget {
  const TransactionListWidget(
      {required this.index, required this.history, super.key});
  final int index;
  final Add_data history;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListTile(
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(5),
        child: Image.asset('images/${history.name}.png', height: 40),
      ),
      title: Text(
        history.explain.capitalize(),
        style: const TextStyle(
          fontSize: 17,
          fontWeight: FontWeight.w600,
        ),
      ),
      subtitle: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            history.name,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              color: Color(0xff368983),
            ),
          ),
          Text(
            ' - ${history.datetime.day}/${history.datetime.month}/${history.datetime.year % 100}',
         
            style: const TextStyle(
              fontWeight: FontWeight.w600,
              color: Color(0xff368983),
            ),
          ),
        ],
      ),
      trailing: Text(
        formatAmount(double.parse(history.amount)),
    
        style: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 19,
          color: history.IN == 'Income' ? Colors.green : Colors.red,
        ),
      ),
    );
  }
}
