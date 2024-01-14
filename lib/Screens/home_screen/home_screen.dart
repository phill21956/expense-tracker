import 'package:expense_tracker/Screens/home_screen/components/home_head_widget.dart';
import 'package:expense_tracker/Screens/home_screen/components/transaction_history_widget.dart';
import 'package:expense_tracker/Screens/home_screen/components/transaction_list_widget.dart';
import 'package:expense_tracker/main.dart';
import 'package:expense_tracker/model/add_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CustomScrollView(
      slivers: [
        const SliverToBoxAdapter(
          child: SizedBox(height: 340, child: HomeHeaderWidget()),
        ),
        const SliverToBoxAdapter(
          child: TransactionHistoryWidget(),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            childCount: addDataBox.length,
            (context, index) {
              Add_data history = //.getAt(index);
                  addDataBox.values.toList()[index];
              return history == null
                  ? const Center(child: Text('Empty'))
                  : Dismissible(
                      key: UniqueKey(),
                      onDismissed: (direction) {
                        history.delete();
                      },
                      child: TransactionListWidget(
                          index: index, history: history));
            },
          ),
        )
      ],
    );
  }
}
