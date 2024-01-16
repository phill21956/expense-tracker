import 'package:expense_tracker/data/utils.dart';
import 'package:expense_tracker/model/add_data.dart';
import 'package:flutter/material.dart';

class StatsBodyWidget extends StatelessWidget {
  const StatsBodyWidget({
    super.key, required this.a,
  });
final  List<Add_data> a;
  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(
      (context, index) {
        return ListTile(
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: Image.asset('images/${a[index].name}.png', height: 40),
          ),
          title: Text(
            a[index].explain.capitalize(),
            style: const TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w600,
            ),
          ),
          subtitle: Text(
            '${a[index].datetime.day}-${a[index].datetime.month}-${a[index].datetime.year}',
            style: const TextStyle(
              fontWeight: FontWeight.w600,
            ),
          ),
          trailing: Text(
            formatAmount(double.parse(a[index].amount)),
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 19,
              color: a[index].IN == 'Income' ? Colors.green : Colors.red,
            ),
          ),
        );
      },
      childCount: a.length,
    ));
  }
}
