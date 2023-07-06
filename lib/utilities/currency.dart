import 'package:intl/intl.dart';

class Currency {
  static String format(double amount) {
    NumberFormat currencyFormat = NumberFormat("#,##,000");
    return currencyFormat.format(amount);
  }
}