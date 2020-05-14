import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../../application/todos/todo_actor/todo_actor_bloc.dart';
import '../../../../domain/todo/todo_category/todo_category.dart';
import '../../../../injection.dart';
import '../../../routes/router.gr.dart';
import '../todo_forms/todo_category_form.dart';
import '../todo_forms/todo_item_form.dart';
import 'widgets/todo_tile.dart';

class TodoDetailPage extends HookWidget {
  final TodoCategory todoCategory;

  const TodoDetailPage({
    Key key,
    @required this.todoCategory,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => getIt<TodoActorBloc>(),
        child: MultiBlocListener(
            listeners: [
              BlocListener<TodoActorBloc, TodoActorState>(
                listener: (context, state) {
                  state.maybeMap(
                    deleteFailure: (state) {
                      final message = state.todoFailure.map(
                        insufficientPermissions: (_) =>
                            'Insufficient permissions',
                        unableToUpdate: (_) => 'Error',
                        unexpected: (_) =>
                            'An unexpected error occured while deleting.',
                      );
                      final snackbar = SnackBar(
                        content: Text(
                          message,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                        backgroundColor: Colors.red,
                      );
                      Scaffold.of(context).showSnackBar(snackbar);
                    },
                    orElse: () {},
                  );
                },
              )
            ],
            child: Scaffold(
              appBar: AppBar(
                backgroundColor: todoCategory.color.getOrCrash(),
                elevation: 0,
                leading: IconButton(
                  icon: Icon(Icons.apps),
                  onPressed: () => Router.navigator.popUntil(
                      (route) => route.settings.name == Router.todoHomePage),
                ),
                actions: <Widget>[
                  IconButton(
                      icon: Icon(Icons.delete),
                      onPressed: () {
                        context
                            .bloc<TodoActorBloc>()
                            .add(TodoActorEvent.deleted(todoCategory));
                      }),
                  IconButton(
                      icon: Icon(Icons.settings),
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return TodoCategoryForm(editedTodo: todoCategory);
                            });
                      })
                ],
              ),
              body: Container(
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
                          Text(todoCategory.name.getOrElse('Title'),
                              style: TextStyle(fontSize: 40.0))
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
                              height:
                                  MediaQuery.of(context).size.height * 0.85 -
                                      80.0,
                              child: ListView(children: _buildTiles(context)),
                            )))
                  ])),
              floatingActionButton: FloatingActionButton(
                backgroundColor: todoCategory.color.getOrCrash(),
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) => TodoItemForm()
                  );
                },
                child: Icon(Icons.add),
              ),
            )));
  }

  List<TodoTile> _buildTiles(BuildContext context) {
    return List<TodoTile>.generate(20, (index) {
      return TodoTile(checkColor: todoCategory.color.getOrCrash());
    });
  }
}
