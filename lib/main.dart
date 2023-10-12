import 'package:flutter/material.dart';

import 'package:dice/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(const Color.fromARGB(255, 154, 34, 34),const Color.fromARGB(255, 55, 33, 179),const Color.fromARGB(137, 126, 6, 247)),
      ),
    ),
  );//yoyo
}

