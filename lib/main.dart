import 'package:extended_masked_text/extended_masked_text.dart';
import 'package:flutter/material.dart';

import 'widgets/input.widgets.dart';
import 'widgets/logo.widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Álcool ou Gasolina',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  var _gasCtrl = MoneyMaskedTextController();
  var _alcCtrl = MoneyMaskedTextController();

  HomePage() {
    _gasCtrl.text = "0";
    _alcCtrl.text = "0";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: ListView(
        children: <Widget>[
          Logo(),
          Input(
            label: 'Gasolina',
            moneyController: _gasCtrl,
          ),
          Input(
            label: 'Álcool',
            moneyController: _alcCtrl,
          ),
          Container(
            margin: EdgeInsets.all(30),
            height: 60,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.8),
              borderRadius: BorderRadius.circular(
                60,
              ),
           ),
            child: FlatButton(
              onPressed: (){},
              child: Text("CALCULAR",
                          style: TextStyle(
                            color: Theme.of(context).primaryColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                              fontFamily: "Big Shoulders Display"
                          ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
