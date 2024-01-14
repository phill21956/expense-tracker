import 'package:expense_tracker/Screens/bottom_nav_bar.dart/bottom_nav_bar.dart';
import 'package:expense_tracker/model/add_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';

late Box<Add_data> addDataBox;
void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(AdddataAdapter());
  addDataBox = await Hive.openBox<Add_data>('addData');
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomNavBar(),
    );
  }
}
