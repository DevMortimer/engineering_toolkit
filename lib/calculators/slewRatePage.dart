import 'package:flutter/material.dart';

class SlewRatePage extends StatelessWidget {
  const SlewRatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Slew Rate Calculator"),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 14.5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                "Slew rate is the rate at which an electrical or electromagnetic quantity changes over time.",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
