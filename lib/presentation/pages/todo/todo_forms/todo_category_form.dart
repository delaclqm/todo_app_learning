import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../application/todos/todo_category_form/todo_category_bloc.dart';
import '../../../../domain/todo/todo_category/todo_category.dart';
import '../../../../domain/todo/value_objects.dart';
import '../../../../injection.dart';
import '../../../routes/router.gr.dart';

class TodoCategoryForm extends StatelessWidget {
  final TodoCategory editedTodo;

  const TodoCategoryForm({
    Key key,
    @required this.editedTodo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<TodoCategoryBloc>()
        ..add(TodoCategoryEvent.initialized(optionOf(editedTodo))),
      child: BlocConsumer<TodoCategoryBloc, TodoCategoryState>(
        listenWhen: (p, c) =>
            p.saveFailureOrSuccessOption != c.saveFailureOrSuccessOption,
        listener: (context, state) {
          state.saveFailureOrSuccessOption.fold(
            () {},
            (either) {
              either.fold(
                (failure) {
                  final message = failure.map(
                    insufficientPermissions: (_) => 'Insufficient permissions',
                    unableToUpdate: (_) => 'Error Updating Todo Category',
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
                (_) {
                  
                  Router.navigator.popUntil((route) => route.settings.name == Router.todoHomePage);
                  Router.navigator.pushNamed(
                    Router.todoDetailPage,
                    arguments: TodoDetailPageArguments(todoCategory: state.todoCategory)
                  );
                },
              );
            },
          );
        },
        buildWhen: (p, c) => p.isSaving != c.isSaving,
        builder: (context, state) {
          final dialog = SimpleDialog(
            title: BlocBuilder<TodoCategoryBloc, TodoCategoryState>(
              condition: (p, c) => p.isEditing != c.isEditing,
              builder: (context, state) =>
                Text(!state.isEditing ? "Create Todo Category" : "Edit Todo Category"),
            ),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            contentPadding: const EdgeInsets.all(20),
            children: <Widget>[
              TextFormField(
                onChanged: (value) => context
                    .bloc<TodoCategoryBloc>()
                    .add(TodoCategoryEvent.nameChanged(value)),
                validator: (_) => context
                    .bloc<TodoCategoryBloc>()
                    .state
                    .todoCategory
                    .name
                    .value
                    .fold(
                      (f) => f.maybeMap(
                        empty: (f) => 'Cannot be empty',
                        exceedingLength: (f) =>
                            'Exceeding length, max: ${f.max}',
                        orElse: () => null,
                      ),
                      (_) => null,
                    ),
                decoration: InputDecoration(
                    fillColor: Theme.of(context).cardColor,
                    hintText: 'Name of Category'),
              ),
              const SizedBox(height: 20),
              Text('Category Color',
                  style: TextStyle(fontSize: 17, color: Colors.grey[500])),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  for (int i = 0;
                      i < CategoryColor.predefinedColors.length;
                      i++)
                    GestureDetector(
                        onTap: () {
                          context.bloc<TodoCategoryBloc>().add(
                              TodoCategoryEvent.colorChanged(
                                  CategoryColor.predefinedColors[i]));
                        },
                        child: SimpleDialogOption(
                            padding: const EdgeInsets.all(5),
                            child: Material(
                              color: CategoryColor.predefinedColors[i],
                              elevation: 4,
                              shape: CircleBorder(
                                side: state.todoCategory.color.value.fold(
                                  // In case of a failure, just don't select anything
                                  (_) => BorderSide.none,
                                  (color) =>
                                      color == CategoryColor.predefinedColors[i]
                                          ? const BorderSide(width: 1.5)
                                          : BorderSide.none,
                                ),
                              ),
                              child: Container(
                                width: 25,
                                height: 25,
                              ),
                            )))
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  OutlineButton(
                    onPressed: () {
                      Router.navigator.pop();
                    },
                    textColor: Colors.white,
                    borderSide: BorderSide(color: Colors.red),
                    child: const Text('Close'),
                  ),
                  RaisedButton(
                    onPressed: () => {
                      context
                          .bloc<TodoCategoryBloc>()
                          .add(const TodoCategoryEvent.saved())
                    },
                    color: Colors.green,
                    child: Text(
                      !state.isEditing ? 'Submit' : 'Create',
                      style: TextStyle(color: Colors.black),
                    ),
                  )
                ],
              )
            ],
          );

          if (state.isSaving) {
            return Stack(
              children: <Widget>[
                Opacity( 
                  opacity: 0.5,
                  child: dialog,
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height/2 -32,
                  left: MediaQuery.of(context).size.width/2 -16,
                  child: const CircularProgressIndicator(),
                ),
              ],
            );
          } 
          return dialog;
        },
      ),
    );
  }
}
