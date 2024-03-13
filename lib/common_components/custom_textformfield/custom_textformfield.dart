import 'package:flutter/material.dart';

class CustomTextFormField extends StatefulWidget {
  const CustomTextFormField({
    super.key,
    required this.isIconNeeded,
    required this.hintText,
  });

  final bool isIconNeeded;
  final String hintText;

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 5, 5, 0),
        child: TextFormField(
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: widget.hintText.isNotEmpty ? widget.hintText : '',
            hintStyle: const TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 14,
            ),
            suffixIcon: widget.isIconNeeded
                ? const Icon(
                    Icons.contacts_rounded,
                    color: Colors.grey,
                  )
                : const SizedBox(),
          ),
        ),
      ),
    );
  }
}
