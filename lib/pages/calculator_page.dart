import 'package:floor_calculator/controllers/calculator_controller.dart';
import 'package:floor_calculator/core/constants.dart';
import 'package:floor_calculator/widgets/header_text.dart';
import 'package:floor_calculator/widgets/number_input_field.dart';
import 'package:floor_calculator/widgets/primary_button.dart';
import 'package:floor_calculator/widgets/result_dialog.dart';
import 'package:flutter/material.dart';

class CalculatorPage extends StatefulWidget {
  @override
  _CalculatorPageState createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  final _formKey = GlobalKey<FormState>();
  final _controller = CalculatorController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculadora de Pisos'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(child: _buildForm()),
    );
  }

  Widget _buildForm(){
    return Container(
      padding: EdgeInsets.all(kPadding),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            HeaderText(label: kRoomHeader),
            SizedBox(height: kSmallSpace),
            NumberInputField(
              label: '$kWidth ($kMeters)', 
              onSaved: _controller.setRoomWidth,
              ),
            SizedBox(height:kSmallSpace),
            NumberInputField(
              label: '$kLength ($kMeters)',
              onSaved: _controller.setRoomLength,
              ),
            SizedBox(height: kSpace),
            HeaderText(label: kFloorHeader),
            SizedBox(height: kSmallSpace),
            NumberInputField(
              label: '$kWidth ($kMeters)',
              onSaved: _controller.setFloorWidth,
              ),
            SizedBox(height: kSmallSpace),
            NumberInputField(
              label: '$kLength ($kMeters)',
              onSaved: _controller.setFloorLength,
              ),
            SizedBox(height: kSpace),
            HeaderText(label: kValue),
            SizedBox(height: kSmallSpace),
            NumberInputField(
              label: '$kPriceMeters',
              onSaved: _controller.savePrice,
            ),
            SizedBox(height: kDoubleSpace),
            PrimaryButton(
              label: kCalculate,
              onPressed: _onCalculate,
            ),
            SizedBox(height: kSmallSpace),
            PrimaryButton(
              label: kClearData,
              onPressed:_clearField,
            ),
          ],
        ),
      ),
    );
  }

  void _clearField(){
    _formKey.currentState.reset();
  }

void _onCalculate() {
  if (_formKey.currentState.validate()) {
      _formKey.currentState.save();
    //calcular os dados do piso
    final result = _controller.calculate();
    ResultDialog.show(context, result);
    }
  }
}
