import 'package:flutter/material.dart';
import 'package:gastos_pessoais/app/pages/home/home_gastos_pessoais.dart';

class GastosPessoais extends StatelessWidget {
  const GastosPessoais({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeGastosPessoais(),
    );
  }
}
