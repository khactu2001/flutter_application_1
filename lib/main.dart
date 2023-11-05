import 'package:flutter/material.dart';

import 'package:flutter_application_1/gradient_container.dart';
import 'package:flutter_application_1/styled_text.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        floatingActionButton: ElevatedButton(
          child: const Text('press me'),
          onPressed: () => {},
        ),
        appBar: AppBar(
          title: const StyledText('this is screen name'),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            color: Colors.white,
            tooltip: 'Press me!!!',
            onPressed: () => {},
          ),
        ),
        body: const GradientComponent(
          colors: [Colors.pink, Colors.blue, Colors.black],
        ),
      ),
    ),
  );
}
