import 'package:flutter/material.dart';
import 'package:gastos_pessoais/app/core/ui/helpers/size_extensions.dart';
import 'package:gastos_pessoais/app/core/ui/widgets/gastos_app_bar.dart';
import 'package:gastos_pessoais/app/core/ui/widgets/gastos_app_card.dart';
import 'package:gastos_pessoais/app/models/transaction.dart';
import 'package:gastos_pessoais/app/models/transaction_user.dart';

import '../../core/ui/widgets/gastos_app_form.dart';

class HomeGastosPessoais extends StatefulWidget {
  const HomeGastosPessoais({Key? key}) : super(key: key);
  @override
  State<HomeGastosPessoais> createState() => _HomeGastosPessoaisState();
}

class _HomeGastosPessoaisState extends State<HomeGastosPessoais> {
  final titleController = TextEditingController();
  final valueController = TextEditingController();
  late String valor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DeliveryAppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            width: context.screenWidth,
            child: const Card(
              color: Colors.blue,
              elevation: 5,
              child: Text('Gráfico'),
            ),
          ),
          const TransactionUser(),
          GastosAppForm(
            title: titleController,
            value: valueController,
          )
        ],
      ),
    );
  }
}
