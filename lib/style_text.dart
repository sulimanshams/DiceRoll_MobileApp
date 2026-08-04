import "package:flutter/material.dart";

class StyleText extends StatelessWidget {
   StyleText(this.myText, {super.key});

  String myText;
  @override
  Widget build(context) {
    return Text(
      myText,
      style: TextStyle(
        color: const Color.fromARGB(255, 9, 187, 48),
        fontSize: 30,
      ),
    );
  }
}
