

import 'package:extended_masked_text/extended_masked_text.dart';
import 'package:flutter/material.dart';

import 'input.widgets.dart';
import 'loading-button.widget.dart';

class Submit extends StatelessWidget {
  Submit({Key? key, required this.gasCtrl, required this.alcCtrl, required this.busy, required this.func}) : super(key: key);

  var gasCtrl = MoneyMaskedTextController();
  var alcCtrl = MoneyMaskedTextController();
  var busy = false;
  VoidCallback? func;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(
            left: 30,
            right: 30,
          ),
          child: Input(
            label: 'Gasolina',
            moneyController: gasCtrl,
          ) ,
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 30,
            right: 30,
          ),
          child: Input(
            label: 'Álcool',
            moneyController: alcCtrl,
          ),
        ),

        LoadingButton(busy: busy, func: func, invert: false, text: "CALCULAR"),
      ],
    );
  }
}
