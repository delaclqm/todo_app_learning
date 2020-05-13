import 'package:flutter/material.dart';
import 'package:todo_app_learning/domain/todo/todo_category/todo_category.dart';
import 'package:todo_app_learning/presentation/routes/router.gr.dart';

class TodoCard extends StatelessWidget {

  const TodoCard({
    Key key,
    @required this.todoCategory,
  }) : super(key: key);

  final TodoCategory todoCategory;

  @override
  Widget build(BuildContext context) {
    const cardBorderRadius = 10.0;

    return GestureDetector(
        onTap: () {
          Router.navigator.pushReplacementNamed(
            Router.todoDetailPage,
            arguments: TodoDetailPageArguments(todoCategory: this.todoCategory)
          );
        },
        child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(cardBorderRadius),
            ),
            child: Stack(children: <Widget>[
              Container(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Text(todoCategory.name.getOrCrash(),
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold)),
                      const Spacer(),
                    ]),
              ),
              Positioned(
                right: -50,
                bottom: -50,
                child: Container(
                    decoration: BoxDecoration(
                      color: todoCategory.color.getOrCrash(),
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(75.0),
                          topRight: Radius.circular(75.0),
                          bottomLeft: Radius.circular(75.0),
                          bottomRight: Radius.circular(0)),
                    ),
                    constraints: const BoxConstraints(
                      minWidth: 150,
                      minHeight: 150,
                    )),
              )
            ])));
  }

 
}
