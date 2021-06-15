import 'package:flutter/material.dart';

import 'loading-button.widget.dart';

class Success extends StatelessWidget {
  Success({Key? key, required this.result, this.func}) : super(key: key);

  String result = "";
  VoidCallback? func;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(30),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.8),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 50,
          ),
          Text(
            result,
            style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontSize: 40,
                fontFamily: "Big Shoulders Display"
            ),
          ),
          SizedBox(
            height: 20,
          ),
          LoadingButton(busy: false, func: func, invert: true, text: "CALCULAR NOVAMENTE"),
        ],
      ),
    );
  }
}
