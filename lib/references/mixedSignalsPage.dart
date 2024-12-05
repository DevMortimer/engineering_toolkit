import 'package:flutter/material.dart';

class MixedSignalsPage extends StatelessWidget {
  const MixedSignalsPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextStyle t = TextStyle(
        color: Theme.of(context).brightness == Brightness.dark
            ? Colors.white
            : Colors.black);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Mixed Signals Formulas"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14.5),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('hi', style: t),
            ],
          ),
        ),
      ),
    );
  }
}
