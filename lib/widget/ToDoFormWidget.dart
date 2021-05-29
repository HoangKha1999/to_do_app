import 'package:flutter/material.dart';

class ToDoFormWidget extends StatelessWidget {
  final String title;
  final String description;
  final ValueChanged<String> onChangeTitle;
  final ValueChanged<String> onChangedDescription;
  final VoidCallback onSaveToDo;

  const ToDoFormWidget({
    Key? key,
    this.title = '',
    this.description = '',
    required this.onChangeTitle,
    required this.onChangedDescription,
    required this.onSaveToDo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          buildTitle(),
          SizedBox(height: 8),
          buildDescription(),
          SizedBox(height: 16),
          buildButton()
        ],
      ),
    );
  }
  Widget buildTitle() => TextFormField(
    maxLines: 1,
    initialValue: title,
    validator: (title){
      if (title!.isEmpty){
        return "Vui lòng nhập tựa đề";
      }
      return null;
    },
    decoration: InputDecoration(
      border: UnderlineInputBorder(),
      labelText: 'Tựa đề',
    ),
  );
  Widget buildDescription() => TextFormField(
    initialValue: description,
    maxLines: 3,
    onChanged: onChangedDescription,
    decoration: InputDecoration(
      border: UnderlineInputBorder(),
      labelText: 'Mô tả chi  tiết nhiệm vụ',
    ),
  );
  Widget buildButton() => SizedBox(
    width: double.infinity,
    child: ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.black26)
      ),
      onPressed: onSaveToDo,
      child: Text("Lưu"),
    ),
  );
}
