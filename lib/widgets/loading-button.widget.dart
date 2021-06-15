import 'package:flutter/material.dart';

class LoadingButton extends StatelessWidget {
  LoadingButton({Key? key, required this.busy, required this.func, required this.invert, required this.text}) : super(key: key);
  var busy = false;
  var invert = false;
  var text = "";
  VoidCallback? func;

  @override
  Widget build(BuildContext context) {

    return
      busy ? Container(
        alignment: Alignment.center,
        height: 50,
        child: CircularProgressIndicator(
          backgroundColor: Colors.white,
        ),
      ) :
      Container(
        margin: EdgeInsets.all(30),
        height: 60,
        width: double.infinity,
        decoration: BoxDecoration(
          color: invert ? Theme.of(context).primaryColor : Colors.white.withOpacity(0.8),
          borderRadius: BorderRadius.circular(
            60,
          ),
        ),
        child: FlatButton(
          onPressed: func,
          child: Text(text,
            style: TextStyle(
                color: invert ? Colors.white.withOpacity(0.8) : Theme.of(context).primaryColor,
                fontWeight: FontWeight.bold,
                fontSize: 25,
                fontFamily: "Big Shoulders Display"
            ),
          ),
        ),
    );
  }
}
