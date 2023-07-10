import 'package:expense_tracker/utilities/currency.dart';

class CurrencyModel {
  String group = "";
  int amount = 0;

  CurrencyModel({required this.group, required this.amount});

  CurrencyModel.fromJson(dynamic data) {
    group = data["group"] ?? "";
    amount = data["amount"] ?? 0;
  }
}

class CurrencyListModel {
  List<CurrencyModel> data = [];

  CurrencyListModel({required this.data});

  CurrencyListModel.fromJson(List data){
    data = data.map((each) => CurrencyModel.fromJson(each)).toList();
  }
}
