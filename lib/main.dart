import "package:flutter/material.dart";
import "package:first_app/gradient_container.dart";

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        // backgroundColor: Color.fromARGB(255, 150, 33, 173),
        body: GradientContainer(
          mycolors: [
            Color.fromARGB(255, 33, 5, 39),
            Color.fromARGB(255, 150, 33, 173),
          ],
        ),
      ),
    ),
  );
}



