import 'package:app_to_do_thkha/model/todo.dart';
import 'package:app_to_do_thkha/provider/todos.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'ToDoFormWidget.dart';

class AddToDoDialogWidget extends StatefulWidget {
  @override
  _AddToDoDialogWidgetState createState() => _AddToDoDialogWidgetState();
}
class _AddToDoDialogWidgetState extends State<AddToDoDialogWidget> {
  final _formKey = GlobalKey<FormState>();
  String title = '';
  String description = '';
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Column(
        mainAxisSize: MainAxisSize.min ,
        crossAxisAlignment:  CrossAxisAlignment.start,
        children: [
          Text('Thêm việc'
          ,style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22
            ),
          ),
          const SizedBox(height: 8,),
          ToDoFormWidget(
            onChangeTitle: (title) => setState(() => this.title = title),
            onChangedDescription:(description) => setState(() => this.description = description),
            onSaveToDo: addTodo,
          ),
        ],
      ),
    );
  }
  void addTodo() {
    final isValid = _formKey.currentState.validate();
    if (!isValid) {
      return;
    } else {
      final todo = Todo(
        id: DateTime.now().toString(),
        title: title,
        description: description,
        createdTime: DateTime.now(),
      );
      final provider = Provider.of<TodosProvider>(context, listen: false);
      provider.addTodo(todo);
      Navigator.of(context).pop();
    }
  }
}
