import 'package:flutter/material.dart';

class BadgeIcon extends StatelessWidget {
  final String number;
  final IconButton iconButton;

  const BadgeIcon({Key key, @required this.number, @required this.iconButton})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      this.iconButton,
      Positioned(
        right: 11,
        top: 11,
        child: Container(
          padding: EdgeInsets.all(2),
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(6),
          ),
          constraints: BoxConstraints(
            minWidth: 14,
            minHeight: 14,
          ),
          child: Text(
            this.number,
            style: TextStyle(
              color: Colors.white,
              fontSize: 8,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      )
    ]);
  }
}