import 'package:flutter/material.dart';
import 'package:flutter_base/model_view/todo/todo_cubit.dart';
import 'package:flutter_base/models/todo/todo.dart';
import 'package:flutter_base/views/todo/change_language_page.dart';
import 'package:flutter_base/views/todo/change_theme_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TodoPage extends StatelessWidget {
  const TodoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => TodoCubit(),
      child: BlocBuilder<TodoCubit, TodoState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('Todo'),
              actions: [
                IconButton(
                  icon: const Icon(Icons.add),
                  onPressed: () {
                    context.read<TodoCubit>().add(
                          Todo(
                            id: DateTime.now()
                                .millisecondsSinceEpoch
                                .toString(),
                            title:
                                'Todo ${DateTime.now().millisecondsSinceEpoch}',
                            completed: false,
                          ),
                        );
                  },
                ),
              ],
            ),
            body: Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    padding: const EdgeInsets.all(16),
                    itemCount: state.length,
                    itemBuilder: (context, index) {
                      final todo = state[index];
                      return Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              children: [
                                IconButton(
                                  onPressed: () {
                                    context.read<TodoCubit>().toggle(todo);
                                  },
                                  color: todo.completed!
                                      ? Colors.green
                                      : Colors.grey,
                                  icon: Icon(todo.completed!
                                      ? Icons.check_circle
                                      : Icons.check_circle_outline),
                                ),
                                Text(todo.title),
                                const Spacer(),
                                IconButton(
                                  onPressed: () {
                                    context.read<TodoCubit>().remove(todo);
                                  },
                                  icon: const Icon(Icons.delete),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 5),
                        ],
                      );
                    },
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ChangeThemePage()));
                  },
                  child: const Text('Theme Page'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ChangeLanguagePage()));
                  },
                  child: const Text('Language Page'),
                ),
                const SizedBox(height: 20),
              ],
            ),
          );
        },
      ),
    );
  }
}
