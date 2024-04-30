import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key, required this.onPressed, required this.title});
  final void Function() onPressed;
  final String title;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
              minimumSize: Size(width, 65)),
          onPressed: onPressed,
          child: Text(
            title,
            overflow: TextOverflow.clip,
            textAlign: TextAlign.center,
          )),
    );
  }
}
