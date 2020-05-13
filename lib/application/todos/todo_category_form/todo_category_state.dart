part of 'todo_category_bloc.dart';

@freezed
abstract class TodoCategoryState with _$TodoCategoryState {
  const factory TodoCategoryState({
    // Unlike in SignInFormState, here we have an entity which we can readily use for validation
    // instead of storing individual fields.
    @required TodoCategory todoCategory,
    @required bool showErrorMessages,
    @required bool isEditing,
    @required bool isSaving,
    @required Option<Either<TodoCategoryFailure, Unit>> saveFailureOrSuccessOption,
  }) = _TodoCategoryState;

  factory TodoCategoryState.initial() => TodoCategoryState(
        todoCategory: TodoCategory.empty(),
        showErrorMessages: false,
        isEditing: false,
        isSaving: false,
        saveFailureOrSuccessOption: none(),
      );
}
