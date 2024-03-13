import 'package:flutter/material.dart';

class OptionsComponent extends StatefulWidget {
  const OptionsComponent({
    super.key,
    required this.text,
    required this.iconData,
    required this.isActive,
  });

  final String text;
  final IconData iconData;
  final bool isActive;

  @override
  State<OptionsComponent> createState() => _OptionsComponentState();
}

class _OptionsComponentState extends State<OptionsComponent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 150,
      decoration: BoxDecoration(
        color: widget.isActive ? Color(0xFFe4edf0) : Color(0xFFbcc8cd),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              widget.text,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Colors.black87,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Icon(
              widget.iconData,
              color: Colors.black87,
            ),
          ],
        ),
      ),
    );
  }
}
