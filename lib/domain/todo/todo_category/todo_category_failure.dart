import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo_category_failure.freezed.dart';

@freezed
abstract class TodoCategoryFailure with _$TodoCategoryFailure {
  const factory TodoCategoryFailure.unexpected() = Unexpected;
  const factory TodoCategoryFailure.insufficientPermissions() = InsufficientPermissions;
  const factory TodoCategoryFailure.unableToUpdate() = UnableToUpdate;
}