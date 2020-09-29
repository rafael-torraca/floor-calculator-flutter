import 'package:floor_calculator/models/result_model.dart';
import 'package:flutter/material.dart';

class ResultDialog extends StatelessWidget {
  final ResultModel result;

  ResultDialog(this.result);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('RESULTADO'),
      content: Wrap(
        children: [
          ListTile(
            title: Text('Quantidade de pisos'),
            subtitle: Text('${result.amountPieces} pisos'),
          ),
          ListTile(
            title: Text('Quantidade de pisos para o rodapé'),
            subtitle: Text('${result.amountFloor} pisos'),
          ),
          ListTile(
            title: Text('Quantidade total de pisos'),
            subtitle: Text('${result.amountPiecesAndFooter} pisos'),
          ),
          Divider(),
          ListTile(
            title: Text('Metragem quadrada sem rodapé'),
            subtitle: Text('${result.areaWithoutFooter.toStringAsFixed(2)} m²'),
          ),
          ListTile(
            title: Text('Metragem quadrada com rodapé'),
            subtitle: Text('${result.areaWithFooter.toStringAsFixed(2)} m²'),
          ),
          Divider(),
          ListTile(
            title: Text('Preço sem rodapé'),
            subtitle: Text('R\$ ${result.priceWithoutFooter.toStringAsFixed(2)}'),
            ),
          ListTile(
            title: Text('Preço com rodapé'),
            subtitle: Text('R\$ ${result.priceWithFooter.toStringAsFixed(2)}'),
            ),
        ],
      ),
      actions: [
        FlatButton(
          child: const Text('CONTINUAR'),
          onPressed: () => _dispose(context),
        ),
      ],
    );
  }

  _dispose(context) {
    Navigator.of(context).pop();
  }
}
