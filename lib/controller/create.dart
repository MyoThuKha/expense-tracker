import 'package:expense_tracker/models/currency_model.dart';
import 'package:expense_tracker/services/storage_config.dart';

class CreateExpense extends StorageBase {
  CurrencyListModel getAllCurrency() {
    var data = load("currency");
    var result = CurrencyListModel.fromJson(data);
    return result;
  }

  void addNewCurrency({required CurrencyModel item}) {
    save(key: "currency",value: {"group": item.group,"amount": item.amount});
  }
}
