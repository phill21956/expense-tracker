import 'package:expense_tracker/controllers/add_controller.dart/main_container_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DescriptionBoxWidget extends ConsumerWidget {
  const DescriptionBoxWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final descrNode = ref.watch(descriptionNodeProvider);
    final descrController = ref.watch(descrControllerProvider);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextField(
        focusNode: descrNode,
        controller: descrController,
        decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          labelText: 'description',
          labelStyle: TextStyle(fontSize: 17, color: Colors.grey.shade500),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(width: 2, color: Color(0xffC5C5C5))),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(width: 2, color: Color(0xff368983))),
        ),
      ),
    );
  }
}
