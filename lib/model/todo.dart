import 'package:app_to_do_thkha/provider/todos.dart';

class TodoFiled{
  static const createdTime = 'createdTimed';
}
class Todo{
  DateTime createdTime;
  String title;
  String id;
  String description;
  bool isDone;
  Todo({
    required this.createdTime,
    required this.title,
    this.id,
    this.description ='',
    this.isDone = false,
});
}
