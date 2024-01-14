import 'package:expense_tracker/controllers/add_controller.dart/main_container_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DateTimeBoxWidget extends ConsumerWidget {
  const DateTimeBoxWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final date = ref.watch(dateProvider);
    return Container(
      alignment: Alignment.bottomLeft,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(width: 2, color: const Color(0xffC5C5C5))),
      width: 300,
      child: Row(
        children: [
          IconButton(
            onPressed: () async {
              DateTime? newDate = await showDatePicker(
                  context: context,
                  initialDate: date,
                  firstDate: DateTime(2020),
                  lastDate: DateTime(2100));
              if (newDate == null) return;
              ref.read(dateProvider.notifier).state = newDate;
            },
            icon: const Icon(Icons.calendar_month),
          ),
          Text(
            '${date.year} / ${date.day} / ${date.month}',
            style: const TextStyle(
              fontSize: 15,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
