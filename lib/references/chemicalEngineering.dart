import 'package:flutter/material.dart';

class ChemicalEngineeringPage extends StatelessWidget {
  const ChemicalEngineeringPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextStyle t = TextStyle(
        color: Theme.of(context).brightness == Brightness.dark
            ? Colors.white
            : Colors.black);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Chemical Engineering Formulas"),
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
