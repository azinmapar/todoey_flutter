import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool checked;
  final String title;
  final void Function(bool?) checkboxCallback;

  const TaskTile(
      {super.key,
      required this.checked,
      required this.title,
      required this.checkboxCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style:
            TextStyle(decoration: checked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        value: checked,
        fillColor: const MaterialStatePropertyAll(Colors.lightBlueAccent),
        onChanged: checkboxCallback,
      ),
    );
  }
}
