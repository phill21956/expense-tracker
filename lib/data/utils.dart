import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

extension StringExtensions on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${substring(1)}";
  }
}

String formatAmount(double amount) {
  return NumberFormat.currency(
    symbol: '₦ ',
    decimalDigits: amount.truncateToDouble() == amount ? 0 : 2,
  ).format(amount);
}

Color primaryColor =const Color(0xff368983);
