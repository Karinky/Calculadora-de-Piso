import 'package:floor_calculator/core/constants.dart';
import 'package:floor_calculator/models/result_model.dart';
import 'package:flutter/material.dart';

class ResultDialog extends StatelessWidget {
  final ResultModel result;

  const ResultDialog({
    Key key,
    this.result,
  }) : super(key: key);

  static void show(BuildContext context, ResultModel result){
    showDialog(
      context: context, 
      builder: (context) => ResultDialog(result: result),
      );
  }
  
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        title: Text(kResult),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              title: Text('${result.amountPieces} $kFloor'),
              subtitle: Text(kAmountFloors),
            ),
            ListTile(
              title: Text('${result.amountFooter} $kFloor'),
              subtitle: Text(kAmountFloorsToFotter),
            ),
            ListTile(
              title: Text('${result.amountPiecesAndFooter} $kFloor'),
              subtitle: Text(kTotalFloors),
            ),

            Divider(),

            ListTile(
              title: Text('${result.areaWithoutFooter} $kSqrmeters'),
              subtitle: Text(kAreaWithoutFooter),
            ),
            ListTile(
              title: Text('${result.areaWithFooter} $kSqrmeters'),
              subtitle: Text(kAreaWithFooter),
              ),

            Divider(),

            ListTile(
              title: Text('${result.price}'),
              subtitle: Text('Valor total'),
            )

      ],
     ),
    );
  }
}