import 'package:extended_masked_text/extended_masked_text.dart';
import 'package:flutter/material.dart';

import '../widgets/logo.widgets.dart';
import '../widgets/submit-form.dart';
import '../widgets/success.widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  Color _color = Colors.deepPurple;

  _HomePageState() {
    _gasCtrl.text = "0";
    _alcCtrl.text = "0";
  }

  var _gasCtrl = MoneyMaskedTextController();
  var _alcCtrl = MoneyMaskedTextController();
  var _busy = false;
  var _completed = false;
  var _resultText = "Compensa utilizar álcool";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: AnimatedContainer(
        duration: Duration(
          milliseconds: 1200,
        ),
        color: _color,
        child: ListView(
          children: <Widget>[
            Logo(),
            _completed
                ? Success(result: _resultText, func: resetForm)
                : Submit(gasCtrl: _gasCtrl, alcCtrl: _alcCtrl, busy: _busy, func: calcular),
          ],
        ),
      ),
    );
  }

  void resetForm(){
    setState(() {
      _gasCtrl.text = "0";
      _alcCtrl.text = "0";

      _completed = false;
      _busy = false;
    });
  }

  Future calcular() {
    setState(() {
      _color = Colors.deepPurpleAccent;
      _completed = false;
      _busy = true;
    });

    double alc = double.parse(
      _alcCtrl.text.replaceAll(new RegExp(r'[,.]'), '')
    ) / 100;
    double gas = double.parse(
      _gasCtrl.text.replaceAll(new RegExp(r'[,.]'), '')
    ) / 100;

    double res = alc / gas;

    return new Future.delayed(const Duration(seconds: 1),
      () {
        setState(() {
          if (res >= 0.7) {
            _resultText = "Compensa utilizar Gasolina!";
          } else {
            _resultText = "Compensa utilizar Álcool";
          }

          _color = Colors.deepPurple;
          _completed = true;
          _busy = false;
        });
      }
    );
  }
}
