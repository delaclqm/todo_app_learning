import 'package:flutter/material.dart';
import 'package:todo_app_learning/domain/todo/todo_category/todo_category.dart';
import 'package:todo_app_learning/presentation/pages/todo/todo_category_create/todo_category_form.dart';
import 'package:todo_app_learning/presentation/pages/todo/todo_detail/widgets/todo_tile.dart';
import 'package:todo_app_learning/presentation/routes/router.gr.dart';

class TodoDetailPage extends StatelessWidget {
  final TodoCategory todoCategory;

  const TodoDetailPage({
    Key key,
    @required this.todoCategory,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: this.todoCategory.color.getOrCrash(),
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.apps),
            onPressed: () => Router.navigator.popUntil((route) => route.settings.name == Router.todoHomePage),
          ),
          actions: <Widget>[
            IconButton(icon: Icon(Icons.settings), onPressed: () {
              showDialog(
                    context: context,
                    builder: (context) {
                      return TodoCategoryForm(editedTodo: todoCategory);
                    });
            })
          ],
        ),
        body: Container(
            color: this.todoCategory.color.getOrCrash(),
            child: Column(children: <Widget>[
              Container(
                padding: const EdgeInsets.all(8.0),
                height: MediaQuery.of(context).size.height * 0.15,
                width: MediaQuery.of(context).size.width - 16.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(this.todoCategory.name.getOrElse('Title'), style: TextStyle(fontSize: 40.0))
                  ],
                ),
              ),
              ClipRRect(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(25.0),
                      topRight: Radius.circular(25.0)),
                  child: Container(
                    padding: const EdgeInsets.all(4.0),
                    color: Theme.of(context).cardColor,
                    height: MediaQuery.of(context).size.height * 0.85 - 80.0,
                    child: ListView(children: _buildTiles(context)),
                  ))
            ])),
        );
  }
  
  List<TodoTile> _buildTiles(BuildContext context) {
    return List<TodoTile>.generate(20, (index) {
      return TodoTile();
    });
  }
}
