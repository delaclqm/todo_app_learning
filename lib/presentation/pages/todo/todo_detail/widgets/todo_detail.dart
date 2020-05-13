import 'package:flutter/material.dart';

class TodoDetail extends StatelessWidget {
  const TodoDetail({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.85,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text('Some Task'),
        ],
      ),
    );
  }
}
