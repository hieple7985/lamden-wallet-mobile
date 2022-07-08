import 'package:flutter_base/models/todo/todo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

typedef TodoState = List<Todo>;

class TodoCubit extends Cubit<TodoState> {
  TodoCubit() : super([]);

  void add(Todo todo) {
    emit(state.toList()..add(todo));
  }

  void remove(Todo todo) {
    emit(state.toList()..remove(todo));
  }

  void toggle(Todo todo) {
    emit(
      state
          .toList()
          .map((td) => td.id == todo.id
              ? todo.copyWith(completed: !todo.completed!)
              : td)
          .toList(),
    );
  }
}
