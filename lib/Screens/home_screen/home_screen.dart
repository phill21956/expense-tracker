import 'package:expense_tracker/Screens/home_screen/components/home_head_widget.dart';
import 'package:expense_tracker/Screens/home_screen/components/transaction_history_widget.dart';
import 'package:expense_tracker/Screens/home_screen/components/transaction_list_widget.dart';
import 'package:expense_tracker/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: ValueListenableBuilder(
          valueListenable: addDataBox.listenable(),
          builder: (context, value, widget) {
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
                      var history = addDataBox.values.toList()[index];
                      return Dismissible(
                          key: UniqueKey(),
                          onDismissed: (direction) {
                            history.delete();
                          },
                          background: Container(
                              color: Colors.red,
                              child: const Icon(Icons.delete,
                                  color: Colors.white, size: 36)),
                          child: TransactionListWidget(
                              index: index, history: history));
                    },
                  ),
                )
              ],
            );
          }),
    );
  }
}
