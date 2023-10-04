import 'package:flutter/material.dart';

class FilledSmallButton extends StatelessWidget {
  const FilledSmallButton(
      {super.key,
      required this.label,
      required this.icon,
      required this.onTap});

  final String label;
  final Icon icon;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: onTap,
      style: ButtonStyle(
        fixedSize: MaterialStateProperty.all(const Size(200, 60)),
        shape: MaterialStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
        backgroundColor:
            MaterialStateProperty.all(Theme.of(context).primaryColor),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          const Icon(Icons.add, size: 27,)
        ],
      ),
    );
  }
}
