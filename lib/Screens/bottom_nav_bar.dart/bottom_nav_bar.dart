import 'package:expense_tracker/Screens/add_screen/add_screen.dart';
import 'package:expense_tracker/Screens/bottom_nav_bar.dart/components/bottom_nav_row_widget.dart';
import 'package:expense_tracker/Screens/budget_screen/budget_screen.dart';
import 'package:expense_tracker/Screens/home_screen/home_screen.dart';
import 'package:expense_tracker/Screens/statistic_screen/statistic_screen.dart';
import 'package:expense_tracker/controllers/bottom_bar_controller/bottom_bar_controller.dart';
import 'package:expense_tracker/data/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BottomNavBar extends ConsumerWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final indexColor = ref.watch(bottomBarIndexProvider);
    List screen = [
      const HomeScreen(),
      StatsScreen(),
      BudgetScreen(),
      Container()
    ];
    return Scaffold(
      body: screen[indexColor],
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => const AddScreen())),
        backgroundColor: primaryColor,
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: BottomNavRowWidget(indexColor: indexColor, ref: ref),
      ),
    );
  }
}
