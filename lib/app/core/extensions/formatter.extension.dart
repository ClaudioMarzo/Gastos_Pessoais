import 'package:intl/intl.dart';

extension FormatterExtension on double {
  String get currencyPTBR {
    final currencyForm = NumberFormat.currency(
      locale: 'pt_BR',
      symbol: r'R$',
    );
    return currencyForm.format(this);
  }

  DateFormat get currencyDatePTBR {
    final currencyDate = DateFormat.yMd('d MM y');
    return currencyDate;
  }
}
