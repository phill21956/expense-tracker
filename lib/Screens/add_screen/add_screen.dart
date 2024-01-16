import 'package:expense_tracker/Screens/add_screen/components/background_container.dart';
import 'package:expense_tracker/Screens/add_screen/components/main_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AddScreen extends ConsumerWidget {
  const AddScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: const SafeArea(
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            BackgroundContainerWidget(),
            Positioned(top: 120, child: MainContainerWidget()),
          ],
        ),
      ),
    );
  }
}
