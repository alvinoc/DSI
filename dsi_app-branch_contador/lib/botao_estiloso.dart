import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class BotaoEstiloso extends StatelessWidget {
  BotaoEstiloso({@required this.onPressed});

  final GestureTapCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
        fillColor: Colors.blueAccent,
        splashColor: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20.0),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: const <Widget>[
              Icon(
                Icons.add_circle_outline,
                color: Colors.white,
              ),
              SizedBox(width: 8.0),
              Text("Add",
                  style: TextStyle(
                    color: Colors.white,
                  ))
            ],
          ),
        ),
        onPressed: onPressed,
        shape: const StadiumBorder());
  }
}
