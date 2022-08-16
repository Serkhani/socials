import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  const InputField(
      {Key? key,
      required this.maxLines,
      required this.label,
      this.hintText = ""})
      : super(key: key);
  final int maxLines;
  final String hintText;
  final Text label;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextField(
        maxLines: maxLines,
        onEditingComplete: () {},
        autofocus: true,
        style: Theme.of(context).textTheme.titleSmall,
        decoration: InputDecoration(
          label: label,
          hintText: hintText,
          hintStyle: const TextStyle(color: Colors.grey),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
            borderSide:
                BorderSide(color: Theme.of(context).primaryColor, width: 2.0),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
            borderSide: const BorderSide(width: 2.0),
          ),
        ),
      ),
    );
  }
}
