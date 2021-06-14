import 'package:extended_masked_text/extended_masked_text.dart';
import 'package:flutter/material.dart';

class Input extends StatelessWidget {
  var label = "";
  var moneyController = MoneyMaskedTextController();

  Input({Key? key, required this.label, required this.moneyController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: <Widget>[
        Container(
          width: 120,
          alignment: Alignment.centerRight,
          child: Text(
            label,
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontFamily: "Big Shoulders Display",
            ),
          ),
        ),
        SizedBox(
          width: 20,
        ),
        Expanded(
          child: TextFormField(
            controller: moneyController,
            keyboardType: TextInputType.number,
            style: TextStyle(
              color: Colors.white,
              fontSize: 45,
              fontFamily: "Big Shoulders Display",
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
            ),
          ),
        ),
      ],
    );
  }
}
