import 'package:flutter_riverpod/flutter_riverpod.dart';


//FOR SELECTED EXPENSE CATEGORY
final selectedCatProvider = StateProvider.autoDispose<String?>((ref) {
  return null;
});

//FOR SELECTED EXPENSE Type
final selectedTypeProvider = StateProvider.autoDispose<String?>((ref) {
  return null;
});

final dateProvider = Provider<DateTime>((ref) {
  return DateTime.now();
});