import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app_learning/application/todos/todo_watcher/todo_watcher_bloc.dart';
import 'package:todo_app_learning/presentation/pages/todo/todo_home/widgets/todo_card.dart';

class TodoContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TodoWatcherBloc, TodoWatcherState>(
      builder: (context, state) {
        return state.map(
          initial: (_) => Container(),
          loadInProgress: (_) => const Center(
            child: CircularProgressIndicator(),
          ),
          loadSuccess: (state) {
            if (state.todos.size == 0) {
              return Container(
                padding: const EdgeInsets.all(50),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const <Widget>[         
                      Text(
                        'You have no todo categories yet! Click the add button to start getting organized!',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(height: 40), 
                      Text(
                        '🤷',
                        style: TextStyle(
                          fontSize: 100
                        ),
                      ),
                    ],
                  ),
                );
            }
            return
            GridView.count(
              crossAxisCount: 2,
              padding: const EdgeInsets.all(10),
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              children: <Widget>[
                for (int i = 0; i < state.todos.size; i++)
                  TodoCard(todoCategory: state.todos[i])
              ],
            );
          },
          loadFailure: (state) {
            print(state);
            return Text('Load Failure');
            // return CriticalFailureDisplay(
            //   failure: state.noteFailure,
            // );
          },
        );
      },
    );
  }
}