import 'package:flutter/material.dart';
class FilledButtonComponent extends StatelessWidget {
  const FilledButtonComponent({super.key,
    required this.label,
    required this.onTap});

  final String label;
  final Function()? onTap;


  @override
  Widget build(BuildContext context) {
    return  FilledButton(
      onPressed: onTap,
      style: ButtonStyle(
        fixedSize: MaterialStateProperty.all(const Size(double.maxFinite, 73)),
        shape: MaterialStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
        backgroundColor: onTap != null ?
        MaterialStateProperty.all(Theme.of(context).primaryColor) : MaterialStateProperty.all(Colors.grey),
      ),
      child: Text(
        label,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ),
    );
  }
}
