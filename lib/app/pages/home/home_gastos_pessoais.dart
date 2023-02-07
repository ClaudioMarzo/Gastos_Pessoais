import 'package:flutter/material.dart';
import 'package:gastos_pessoais/app/core/ui/helpers/size_extensions.dart';
import 'package:gastos_pessoais/app/core/ui/widgets/gastos_app_bar.dart';
import 'package:gastos_pessoais/app/core/ui/widgets/gastos_app_card.dart';
import 'package:gastos_pessoais/app/models/transaction.dart';

class HomeGastosPessoais extends StatefulWidget {
  const HomeGastosPessoais({Key? key}) : super(key: key);
  @override
  State<HomeGastosPessoais> createState() => _HomeGastosPessoaisState();
}

class _HomeGastosPessoaisState extends State<HomeGastosPessoais> {
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
    return Scaffold(
      appBar: DeliveryAppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: context.screenWidth,
            child: const Card(
              color: Colors.blue,
              elevation: 5,
              child: Text('Gráfico'),
            ),
          ),
          Column(
            children: _transaction.map((tr) {
              return Card(
                child: GastosAppCard(
                  id: tr.id,
                  title: tr.title,
                  value: tr.value,
                  date: tr.date,
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
