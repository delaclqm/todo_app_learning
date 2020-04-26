import 'package:flutter/material.dart';

class TodoCard extends StatelessWidget {
  const TodoCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double cardBorderRadius = 25.0;

    return GestureDetector(
        onTap: () => {},
        child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(cardBorderRadius),
            ),
            child: Stack(children: <Widget>[
              Container(
                padding: EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Text('Some Title',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold)),
                    Text('how many points'),
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Icon(Icons.school, size: 48, color: Colors.green,)
                      ],
                    )
                  ],
                ),
              ),
              // Positioned(
              //   right: -100,
              //   bottom: -100,
              //   child: Container(
              //       decoration: BoxDecoration(
              //         gradient: LinearGradient(colors: [Colors.blue, Colors.deepPurple]),
              //         borderRadius: BorderRadius.only(
              //           topLeft: Radius.circular(100.0),
              //           topRight: Radius.circular(100.0),
              //           bottomLeft: Radius.circular(100.0),
              //           bottomRight: Radius.circular(15.0)
              //         ),
              //       ),
              //       constraints: BoxConstraints(
              //         minWidth: 200,
              //         minHeight: 200,
              //       )
              //       ),
              // )
            ])));
  }
}