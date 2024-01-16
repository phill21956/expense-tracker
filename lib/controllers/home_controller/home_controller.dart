import 'package:expense_tracker/main.dart';

int totals = 0;

int total() {
  var history2 = addDataBox.values.toList();
  List a = [0, 0];
  for (var i = 0; i < history2.length; i++) {
    a.add(history2[i].IN == 'Income'
        ? int.parse(history2[i].amount)
        : int.parse(history2[i].amount) * -1);
  }
  totals = a.reduce((value, element) => value + element);
  return totals;
}

int income() {
  var history2 = addDataBox.values.toList();
  List a = [0, 0];
  for (var i = 0; i < history2.length; i++) {
    a.add(history2[i].IN == 'Income' ? int.parse(history2[i].amount) : 0);
  }
  totals = a.reduce((value, element) => value + element);
  return totals;
}

int expenses() {
  var history2 = addDataBox.values.toList();
  List a = [0, 0];
  for (var i = 0; i < history2.length; i++) {
    a.add(history2[i].IN == 'Income' ? 0 : int.parse(history2[i].amount) * -1);
  }
  totals = a.reduce((value, element) => value + element);
  return totals;
}
/*final totalStateProvider = StateProvider<>((ref) {
  return 0;
});

final calculatedTotalProvider =
    NotifierProvider<TotalNotifier, int>(TotalNotifier.new);

class TotalNotifier extends Notifier<int> {

  @override
  build() {
    return 0;
  }

  int total() {
    var history2 = addDataBox.values.toList();
    List a = [0, 0];
    for (var i = 0; i < history2.length; i++) {
      a.add(history2[i].IN == 'Income'
          ? int.parse(history2[i].amount)
          : int.parse(history2[i].amount) * -1);
    }
    totals = a.reduce((value, element) => value + element);
    return totals;
  }
}*/