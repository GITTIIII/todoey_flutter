import 'package:flutter/material.dart';

class Tasktile extends StatelessWidget {
  const Tasktile({
    super.key,
    required this.title,
    required this.checkboxState,
    required this.onPress,
    required this.onLongPress,
  });

  final String title;
  final bool checkboxState;
  final VoidCallback onPress;
  final VoidCallback onLongPress;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: onLongPress,
      title: Text(
        title,
        style: TextStyle(
          decoration: checkboxState ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        value: checkboxState,
        onChanged: (value) {
          onPress();
        },
      ),
    );
  }
}
