import 'package:bytebank/models/transferencia.dart';
import 'package:flutter/material.dart';
import '../../components/editor.dart';

const _tituloAppBar = 'Criando transferência';

const _dicaCampoNumeroConta = '0000';
const _rotuloCampoNumeroConta = 'Número da conta';

const _dicaCampoValor = '0.00';
const _rotuloCampoValor = 'Valor';

const _textoBotaoConfirmar = 'Confirmar';

class FormularioTransferencia extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FormularioTransferenciaState();
  }
}

class FormularioTransferenciaState extends State<FormularioTransferencia> {

  final TextEditingController _controladorCampoNumeroConta = TextEditingController();
  final TextEditingController _controladorCampoValor = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(_tituloAppBar),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Editor(
                controlador: _controladorCampoNumeroConta,
                dica: _dicaCampoNumeroConta,
                rotulo: _rotuloCampoNumeroConta,
                icone: Icons.account_balance,
              ),
              Editor(
                  controlador: _controladorCampoValor,
                  dica: _dicaCampoValor,
                  rotulo: _rotuloCampoValor,
                  icone: Icons.monetization_on,
              ),
              OutlinedButton(
                child: Text(_textoBotaoConfirmar),
                onPressed: () => _criaTransferencia(context),
              ),
            ],
          ),
        ));
  }

  void _criaTransferencia(BuildContext context) {
    final int? numeroConta = int.tryParse(_controladorCampoNumeroConta.text);
    final double? valor = double.tryParse(_controladorCampoValor.text);
    final transferenciaCriada = Transferencia(valor!, numeroConta!);

    Navigator.pop(context, transferenciaCriada);
  }
}