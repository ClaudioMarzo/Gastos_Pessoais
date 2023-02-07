import 'package:flutter/material.dart';
import 'package:gastos_pessoais/app/core/extensions/formatter.extension.dart';
import 'package:gastos_pessoais/app/core/ui/helpers/size_extensions.dart';
import 'package:gastos_pessoais/app/core/ui/styles/text_styles.dart';
import 'package:intl/intl.dart';

class GastosAppCard extends StatelessWidget {
  final String id;
  final String title;
  final double value;
  final DateTime date;

  const GastosAppCard({
    super.key,
    required this.id,
    required this.title,
    required this.value,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    var currencyDate;
    return Row(
      children: <Widget>[
        Container(
          width: context.percentWidth(.3),
          margin: const EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 10,
          ),
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.purple,
              width: 1,
            ),
          ),
          padding: const EdgeInsets.all(10),
          child: Text(
            value.currencyPTBR,
            style: context.textStyle.TextBold
                .copyWith(fontSize: 18, color: Colors.purple),
            textAlign: TextAlign.start,
          ),
        ),
        Container(
          width: context.percentWidth(.7),
          height: 80,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style: context.textStyle.TextBold.copyWith(fontSize: 16),
              ),
              Text(
                DateFormat('d MMMM y').format(date),
                style: context.textStyle.TextBold
                    .copyWith(fontSize: 16, color: Colors.grey[500]),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
