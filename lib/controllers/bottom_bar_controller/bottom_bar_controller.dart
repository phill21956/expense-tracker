import 'package:flutter_riverpod/flutter_riverpod.dart';
//part 'bottom_bar_controller.g.dart';

final bottomBarIndexProvider = StateProvider<int>((ref) {
  return 0;
});

final expenseStateProvider = StateProvider<bool>((ref) {
  return false;
});
