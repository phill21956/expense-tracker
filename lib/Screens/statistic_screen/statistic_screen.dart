import 'package:expense_tracker/Screens/statistic_screen/components/stats_body_widget.dart';
import 'package:expense_tracker/Screens/statistic_screen/components/stats_header_widget.dart';
import 'package:expense_tracker/controllers/statistics_controller.dart/statistic_controller.dart';
import 'package:expense_tracker/model/add_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class StatsScreen extends ConsumerWidget {
  StatsScreen({super.key});
  final List f = [today(), week(), month(), year()];
  List<Add_data> data = [];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final stats = ref.watch(statsValueNotifierProvider);
    return Scaffold(
      body: SafeArea(
        child: ValueListenableBuilder(
          valueListenable: stats,
          builder: (BuildContext context, dynamic value, Widget? child) {
            data = f[value];
            return CustomScrollView(
              slivers: [const StatsHeaderWidget(), StatsBodyWidget(a: data)],
            );
          },
        ),
      ),
    );
  }
}
