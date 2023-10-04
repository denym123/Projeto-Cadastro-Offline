import 'package:flutter/material.dart';

class GenericTileComponent extends StatelessWidget {
  const GenericTileComponent(
      {super.key,
      required this.firstText,
      required this.secondText,
      required this.thirdText, required this.onTap});

  final String firstText;
  final String secondText;
  final String thirdText;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      width: double.maxFinite,
      child: ElevatedButton(
        style: ButtonStyle(
          elevation: MaterialStateProperty.all(5),
          alignment: Alignment.centerLeft,
            backgroundColor: MaterialStateProperty.all(
                Theme.of(context).cardColor),
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)))),
        onPressed: onTap,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  firstText,
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).primaryColor),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  secondText,
                  style: TextStyle(fontSize: 16, color: Colors.black),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  thirdText,
                  style: TextStyle(fontSize: 16, color: Colors.black),
                ),
              ]),
        ),
      ),
    );
  }
}
