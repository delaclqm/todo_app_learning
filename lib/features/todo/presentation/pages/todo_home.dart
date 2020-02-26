import 'package:flutter/material.dart';
import 'package:todo_app_learning/core/widgets/badge_icon.dart';
import 'package:todo_app_learning/features/todo/presentation/widgets/todo_card.dart';

class TodoHome extends StatelessWidget {
  const TodoHome({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          actions: <Widget>[
            Row(children: <Widget>[
              BadgeIcon(
                  iconButton: IconButton(
                      icon: Icon(Icons.notifications), onPressed: null),
                  number: '16'),
              IconButton(
                icon: Icon(Icons.account_circle),
                onPressed: null,
              )
            ], mainAxisAlignment: MainAxisAlignment.center)
          ],
        ),
        body: Container(
            padding: EdgeInsets.all(8.0),
            child: GridView.count(
                crossAxisCount: 2,
                padding: const EdgeInsets.all(10),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                children: List.generate(100, (_) => TodoCard()))),
        floatingActionButton: MyFloatingActionButton());
  }
}

class MyFloatingActionButton extends StatelessWidget {
  const MyFloatingActionButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        showModalBottomSheet(
            context: context,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25.0),
                  topRight: Radius.circular(25.0)),
            ),
            backgroundColor: Theme.of(context).canvasColor,
            builder: (context) {
              return _buildCreateCategoryModal(context);
            });
      },
      child: Icon(Icons.add),
      backgroundColor: Theme.of(context).accentColor,
    );
  }

  Widget _buildCreateCategoryModal(BuildContext context) {
    // return  Padding(
    //   padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      return  Container(
        padding: EdgeInsets.all(14.0),
      height: MediaQuery.of(context).size.height * 0.95,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text("Create New Board", style: TextStyle(fontSize: 35),),
          Form(
            child: ListTile(
              title: TextField(
              decoration: InputDecoration(
                  fillColor: Theme.of(context).cardColor,
                  hintText: 'Name of Board'
                ),
            )),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                child: Text('Create'),
                onPressed: () => {},
              )
            ]
          )
        ],
      ),
    );
  }
}
