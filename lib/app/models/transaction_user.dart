import 'package:flutter/material.dart';
import 'package:gastos_pessoais/app/core/ui/widgets/gastos_app_card.dart';
import 'package:gastos_pessoais/app/models/transaction.dart';

class TransactionUser extends StatefulWidget {
  const TransactionUser({Key? key}) : super(key: key);

  @override
  State<TransactionUser> createState() => _TransactionUserState();
}

class _TransactionUserState extends State<TransactionUser> {
  final _transaction = [
    Transaction(
      id: '1',
      title: 'Nova tenis',
      value: 100,
      date: DateTime.now(),
    ),
    Transaction(
      id: '2',
      title: 'Biscoito',
      value: 2,
      date: DateTime.now(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: _transaction.map(
        (tr) {
          return Card(
            child: GastosAppCard(
              id: tr.id,
              title: tr.title,
              value: tr.value,
              date: tr.date,
            ),
          );
        },
      ).toList(),
    );
  }
}
