import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:kt_dart/collection.dart';
import 'package:provider/provider.dart';
import 'package:todo_app_learning/domain/core/value_objects.dart';
import 'package:todo_app_learning/domain/todo/todo_category/todo_category.dart';
import 'package:todo_app_learning/domain/todo/todo_item/todo_item.dart';
import 'package:todo_app_learning/domain/todo/value_objects.dart';
import '../../misc/build_context_x.dart';
import 'package:todo_app_learning/presentation/pages/todo/misc/todo_item.dart';
import 'package:todo_app_learning/presentation/pages/todo/todo_detail/widgets/todo_tile.dart';

class TodoDetailBody extends HookWidget {
  final TodoCategory todoCategory;

  const TodoDetailBody({
    @required this.todoCategory
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        color: todoCategory.color.getOrCrash(),
        child: Column(children: <Widget>[
          Container(
            padding: const EdgeInsets.all(8.0),
            height: MediaQuery.of(context).size.height * 0.15,
            width: MediaQuery.of(context).size.width - 16.0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(todoCategory.name.getOrCrash(),
                    style: const TextStyle(fontSize: 40.0))
              ],
            ),
          ),
          Expanded(
              child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(25.0),
                      topRight: Radius.circular(25.0)),
                  child: Container(
                    padding: const EdgeInsets.all(4.0),
                    color: Theme.of(context).cardColor,
                    height: MediaQuery.of(context).size.height * 0.85 - 80.0,
                    child: todoCategory.todos.getOrCrash().size > 0 ? 
                      ListView(
                        children: <Widget>[
                          for(int i = 0 ; i < todoCategory.todos.getOrCrash().size; i++)
                                TodoTile(
                                  todoItem: todoCategory.todos.getOrCrash().elementAt(i),
                                  todoCategory: todoCategory
                                )
                          // Consumer<FormTodos>(
                          //   builder: (context, formTodos, child) {
                          //     //for(int i = 0 ; i < context.formTodos.asList().length; i++)
                          //       return TodoTile(
                          //         todoItem: context.formTodos.asList().elementAt(0),
                          //         todoCategory: todoCategory
                          //       );
                          //   }
                          // )
                        ],
                      ) : 
                      Container(
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const <Widget>[
                            Text(
                              "You have no todos yet.",
                              textScaleFactor: 2,
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(height: 20),
                            Text(
                              "Click the button below to start getting organized!",
                              textScaleFactor: 2,
                              textAlign: TextAlign.center,
                            ),
                          ],
                        )
                      )
                  )))
        ]));
  }
}
