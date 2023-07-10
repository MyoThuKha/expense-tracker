import 'package:expense_tracker/models/currency_model.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test("Converting map to currency object for adding expense.", () {
    var data = CurrencyModel.fromJson({"group": "hello", "amount": 2000});

    expect(data.group, "hello");
  });
}
