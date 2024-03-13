import 'package:flutter/material.dart';

class CheckBoxComponent extends StatefulWidget {
  const CheckBoxComponent({
    super.key,
    required this.title,
    required this.isSelected,
  });

  final String title;
  final bool isSelected;

  @override
  State<CheckBoxComponent> createState() => _CheckBoxComponentState();
}

class _CheckBoxComponentState extends State<CheckBoxComponent> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: widget.isSelected,
          onChanged: (bool? val) {},
        ),
        Text(widget.title),
      ],
    );
  }
}
