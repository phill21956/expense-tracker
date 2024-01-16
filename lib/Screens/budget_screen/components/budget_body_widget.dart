import 'package:expense_tracker/data/utils.dart';
import 'package:expense_tracker/model/add_data.dart';
import 'package:expense_tracker/model/budget_json.dart';
import 'package:flutter/material.dart';

class BudgetBodyWidget extends StatelessWidget {
  const BudgetBodyWidget({
    super.key,
    required this.aggList,
  });
  final List<Add_data> aggList;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Column(
          children: List.generate(aggList.length, (index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.withOpacity(0.01),
                      spreadRadius: 10,
                      blurRadius: 3),
                ]),
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 25, right: 25, bottom: 25, top: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    aggList[index].name,
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 13,
                        color: const Color(0xff67727d).withOpacity(0.6)),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            formatAmount(double.parse(aggList[index].amount)),
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          const SizedBox(width: 8),
                          Padding(
                            padding: const EdgeInsets.only(top: 3),
                            child: Text(
                              budget_json[index]['label_percentage'],
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 13,
                                  color:
                                      const Color(0xff67727d).withOpacity(0.6)),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 3),
                        child: Text(
                          "₦5000.00",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 13,
                              color: const Color(0xff67727d).withOpacity(0.6)),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Stack(
                    children: [
                      Container(
                        width: (size.width - 40),
                        height: 4,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: const Color(0xff67727d).withOpacity(0.1)),
                      ),
                      Container(
                        width: (size.width - 40) *
                            budget_json[index]['percentage'],
                        height: 4,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: budget_json[index]['color'],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        );
      })),
    );
  }
}
