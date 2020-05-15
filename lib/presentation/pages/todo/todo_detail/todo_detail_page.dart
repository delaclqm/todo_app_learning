import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import '../../../../application/todos/todo_category_form/todo_category_bloc.dart';
import '../../../../application/todos/todo_watcher/todo_watcher_bloc.dart';
import 'widgets/todo_detail_body.dart';
import '../todo_forms/todo_category_delete_form.dart';
import '../todo_home/todo_home.dart';

import '../../../../application/todos/todo_actor/todo_actor_bloc.dart';
import '../../../../domain/todo/todo_category/todo_category.dart';
import '../../../../injection.dart';
import '../../../routes/router.gr.dart';
import '../todo_forms/todo_category_form.dart';
import '../todo_forms/todo_item_form.dart';

class TodoDetailPage extends HookWidget implements AutoRouteWrapper {
  final TodoCategory todoCategory;
  final TodoCategoryBloc todoCategoryBloc;

  const TodoDetailPage({
    Key key,
    @required this.todoCategory,
    @required this.todoCategoryBloc
  }) : super(key : key);

  @override
  Widget get wrappedRoute => MultiBlocProvider(
        providers: [
          BlocProvider<TodoWatcherBloc>(
            create: (context) => getIt<TodoWatcherBloc>()
              ..add(const TodoWatcherEvent.watchAllStarted()),
          ),
          BlocProvider<TodoCategoryBloc>(
            create: (context) => getIt<TodoCategoryBloc>(),
          )
        ],
        child: this,
      );

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
        value: todoCategoryBloc,
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: todoCategory.color.getOrCrash(),
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.apps),
          onPressed: () => Router.navigator
              .popUntil((route) => route.settings.name == Router.todoHomePage),
        ),
        actions: <Widget>[
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
      body: TodoDetailBody(todoCategory: todoCategory),
      floatingActionButton: FloatingActionButton(
        backgroundColor: todoCategory.color.getOrCrash(),
        onPressed: () {
          //final todoCategoryBloc = context.bloc<TodoCategoryBloc>();
          showDialog(
            context: context,
            builder: (context) {
              return BlocProvider.value(
                value: todoCategoryBloc,
                child: TodoItemForm(todoCategory: todoCategory));
            });
        },
        child: Icon(Icons.add),
      ),
    ));
  }

}
