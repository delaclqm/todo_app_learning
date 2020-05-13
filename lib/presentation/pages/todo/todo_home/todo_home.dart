import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app_learning/application/todos/todo_category_form/todo_category_bloc.dart';
import 'package:todo_app_learning/application/todos/todo_watcher/todo_watcher_bloc.dart';
import 'package:todo_app_learning/domain/todo/value_objects.dart';
import 'package:todo_app_learning/presentation/pages/todo/todo_category_create/todo_category_form.dart';
import 'package:todo_app_learning/presentation/pages/todo/todo_home/widgets/todo_home_body.dart';

import '../../../../application/auth/auth_bloc.dart';
import '../../../../application/todos/todo_actor/todo_actor_bloc.dart';
import '../../../../injection.dart';
import '../../../routes/router.gr.dart';

class TodoHomePage extends StatelessWidget implements AutoRouteWrapper {
  const TodoHomePage({Key key}) : super(key: key);

  @override
  Widget get wrappedRoute => MultiBlocProvider(
        providers: [
          BlocProvider<TodoWatcherBloc>(
            create: (context) => getIt<TodoWatcherBloc>()
              ..add(const TodoWatcherEvent.watchAllStarted()),
          ),
          BlocProvider<TodoActorBloc>(
            create: (context) => getIt<TodoActorBloc>(),
          )
        ],
        child: this,
      );

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
        listeners: [
          BlocListener<AuthBloc, AuthState>(
            listener: (context, state) {
              state.maybeMap(
                unauthenticated: (_) =>
                    Router.navigator.pushReplacementNamed(Router.signInPage),
                orElse: () {},
              );
            },
          ),
          BlocListener<TodoActorBloc, TodoActorState>(
            listener: (context, state) {
              state.maybeMap(
                deleteFailure: (state) {
                  final message = state.todoFailure.map(
                    insufficientPermissions: (_) => 'Insufficient permissions',
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
              elevation: 0,
              backgroundColor: Colors.transparent,
              title: const Text('Todo Categories'),
              actions: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.exit_to_app),
                      onPressed: () {
                        context
                            .bloc<AuthBloc>()
                            .add(const AuthEvent.signedOut());
                      },
                    )
                  ],
                )
              ],
            ),
            body: TodoContainer(),
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return const TodoCategoryForm(editedTodo: null);
                    });
              },
              backgroundColor: Theme.of(context).accentColor,
              child: Icon(Icons.add),
            )));
  }
}
