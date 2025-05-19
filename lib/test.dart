import 'package:flutter/material.dart';

import 'features/screen_1/views/shapes.dart';

class TestSK extends StatelessWidget {
  const TestSK({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipPath(
            clipper: ClipperShape(),
            child: Container(width: 150, height: 420, color: Colors.amber),
          ),
        ],
      ),
    );
  }
}
