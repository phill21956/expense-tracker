import 'package:expense_tracker/controllers/home_controller/home_controller.dart';
import 'package:expense_tracker/data/utils.dart';
import 'package:expense_tracker/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HomeHeaderWidget extends ConsumerWidget {
  const HomeHeaderWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Stack(
      children: [
        Column(
          children: [
            Container(
              width: double.infinity,
              height: 240,
              decoration: const BoxDecoration(
                color: Color(0xff368983),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: const Stack(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 35, left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Good day',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: Color.fromARGB(255, 224, 223, 223),
                          ),
                        ),
                        Text(
                          'Philip Inegbedion',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
        ValueListenableBuilder(
            valueListenable: addDataBox.listenable(),
            builder: (context, value, widget) {
              return Positioned(
                top: 140,
                left: 37,
                child: Container(
                  height: 170,
                  width: 320,
                  decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                        color: Color.fromRGBO(47, 125, 121, 0.3),
                        offset: Offset(0, 6),
                        blurRadius: 12,
                        spreadRadius: 6,
                      ),
                    ],
                    color: const Color.fromARGB(255, 47, 125, 121),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    children: [
                      const SizedBox(height: 10),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Total Balance',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            ),
                            Icon(
                              Icons.more_horiz,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 7),
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Row(
                          children: [
                            Text(
                              formatAmount(total().toDouble()),
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 25),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                CircleAvatar(
                                  radius: 13,
                                  backgroundColor:
                                      Color.fromARGB(255, 85, 145, 141),
                                  child: Icon(
                                    Icons.arrow_upward,
                                    color: Colors.white,
                                    size: 19,
                                  ),
                                ),
                                SizedBox(width: 7),
                                Text(
                                  'Income',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16,
                                    color: Color.fromARGB(255, 216, 216, 216),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                CircleAvatar(
                                  radius: 13,
                                  backgroundColor:
                                      Color.fromARGB(255, 85, 145, 141),
                                  child: Icon(
                                    Icons.arrow_downward,
                                    color: Colors.white,
                                    size: 19,
                                  ),
                                ),
                                SizedBox(width: 7),
                                Text(
                                  'Expenses',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16,
                                    color: Color.fromARGB(255, 216, 216, 216),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 6),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              formatAmount(income().toDouble()),
                              style: const TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 17,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              formatAmount(expenses().toDouble()),
                              style: const TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 17,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              );
            })
      ],
    );
  }
}
