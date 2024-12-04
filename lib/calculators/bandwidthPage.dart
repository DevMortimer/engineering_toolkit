import 'package:flutter/material.dart';

class BandwidthPage extends StatelessWidget {
  const BandwidthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Op-amp Bandwidth Calculator"),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 14.5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                "The bandwidth of an inverting amplifier is the range of frequencies between the amplifier's upper and lower cutoff frequencies.",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
