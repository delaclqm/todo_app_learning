part of 'todo_category_bloc.dart';

@freezed
abstract class TodoCategoryEvent with _$TodoCategoryEvent {
  const factory TodoCategoryEvent.initialized(Option<TodoCategory> initialTodoOption) =
      _Initialized;
  const factory TodoCategoryEvent.nameChanged(String nameStr) = _NameChanged;
  const factory TodoCategoryEvent.colorChanged(Color color) = _ColorChanged;
  const factory TodoCategoryEvent.todosChanged(KtList<TodoItemPrimitive> todos) =
      _TodosChanged;
  const factory TodoCategoryEvent.saved() = _Saved;
}
