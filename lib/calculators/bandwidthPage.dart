import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class BandwidthPage extends StatefulWidget {
  BandwidthPage({super.key});

  @override
  State<BandwidthPage> createState() => _BandwidthPageState();
}

class _BandwidthPageState extends State<BandwidthPage> {
  TextEditingController gbwpController = TextEditingController();
  TextEditingController gainController = TextEditingController();
  TextEditingController bandwidthController = TextEditingController();
  FocusNode gainNode = FocusNode();
  FocusNode bandwidthNode = FocusNode();

  Timer? debounceTimer;

  void debounce([VoidCallback? action]) {
    if (debounceTimer != null) {
      debounceTimer!.cancel();
    }
    debounceTimer = Timer(const Duration(milliseconds: 750), action ?? () {});
  }

  void calculate() {
    try {
      if (bandwidthController.text.isEmpty &&
          gbwpController.text.isNotEmpty &&
          gainController.text.isNotEmpty) {
        bandwidthController.text = (double.parse(gbwpController.text) /
                double.parse(gainController.text))
            .toString();
      } else if (gbwpController.text.isEmpty &&
          gainController.text.isNotEmpty &&
          bandwidthController.text.isNotEmpty) {
        gbwpController.text = (double.parse(bandwidthController.text) *
                double.parse(gainController.text))
            .toString();
      } else if (gainController.text.isEmpty &&
          gbwpController.text.isNotEmpty &&
          bandwidthController.text.isNotEmpty) {
        gainController.text = (double.parse(gbwpController.text) /
                double.parse(bandwidthController.text))
            .toString();
      }

      setState(() {});
    } catch (e) {
      // TODO
    }
  }

  @override
  Widget build(BuildContext context) {
    TextStyle textColor = TextStyle(
        color: Theme.of(context).brightness == Brightness.dark
            ? Colors.white
            : Colors.black);

    return Scaffold(
      appBar: AppBar(
        title: Text("Op-amp Bandwidth Calculator", style: textColor),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14.5),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  "The bandwidth of an inverting amplifier is the range of frequencies between the amplifier's upper and lower cutoff frequencies.\n\nLeave one field on the following to solve that variable or press the button bellow to calculate the missing value:",
                  style: textColor,
                ),
              ),
              const SizedBox(height: 8),

              // The inputs
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 128,
                    child: TextField(
                      controller: gbwpController,
                      decoration: InputDecoration(
                        filled: true,
                        hintText: "GBWP",
                        label: Text("GBWP", style: textColor),
                        suffixIcon: gbwpController.text.isNotEmpty
                            ? IconButton(
                                icon: const Icon(Icons.clear),
                                onPressed: () => gbwpController.clear(),
                              )
                            : null,
                      ),
                      keyboardType: const TextInputType.numberWithOptions(
                        signed: true,
                        decimal: true,
                      ),
                      inputFormatters: [
                        FilteringTextInputFormatter.singleLineFormatter
                      ],
                      textInputAction: TextInputAction.done,
                      onSubmitted: (text) {
                        gainNode.requestFocus();
                      },
                      onChanged: (text) => debounce(calculate),
                      style: textColor,
                    ),
                  ),
                  SizedBox(
                    width: 128,
                    child: TextField(
                      controller: gainController,
                      focusNode: gainNode,
                      decoration: InputDecoration(
                        filled: true,
                        hintText: "Gain",
                        label: Text("Gain", style: textColor),
                        suffixIcon: gainController.text.isNotEmpty
                            ? IconButton(
                                icon: const Icon(Icons.clear),
                                onPressed: () => gainController.clear(),
                              )
                            : null,
                      ),
                      keyboardType: const TextInputType.numberWithOptions(
                        signed: true,
                        decimal: true,
                      ),
                      inputFormatters: [
                        FilteringTextInputFormatter.singleLineFormatter
                      ],
                      textInputAction: TextInputAction.done,
                      onSubmitted: (text) {
                        bandwidthNode.requestFocus();
                      },
                      onChanged: (text) => debounce(calculate),
                      style: textColor,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),

              Center(
                child: SizedBox(
                  width: 150,
                  child: TextField(
                    controller: bandwidthController,
                    focusNode: bandwidthNode,
                    decoration: InputDecoration(
                      filled: true,
                      hintText: "Bandwidth",
                      label: Text("Bandwidth", style: textColor),
                      suffixIcon: bandwidthController.text.isNotEmpty
                          ? IconButton(
                              icon: const Icon(Icons.clear),
                              onPressed: () => bandwidthController.clear(),
                            )
                          : null,
                    ),
                    keyboardType: const TextInputType.numberWithOptions(
                      signed: true,
                      decimal: true,
                    ),
                    inputFormatters: [
                      FilteringTextInputFormatter.singleLineFormatter
                    ],
                    textInputAction: TextInputAction.done,
                    style: textColor,
                    onChanged: (text) => debounce(calculate),
                  ),
                ),
              ),
              const SizedBox(height: 16),

              Center(
                child: ElevatedButton(
                  onPressed: calculate,
                  child: Text('Calculate', style: textColor),
                ),
              ),

              // Descriptions
              ListView(
                shrinkWrap: true,
                children: [
                  ListTile(
                    title: Text('GBWP', style: textColor),
                    subtitle: Text(
                      'Gain-Bandwidth Product (GBWP) also known in the form of ƒ unity: This is a characteristic of the operational amplifier (op-amp) used in the circuit and is typically provided by the manufacturer\'s datasheet. It represents the product of the amplifier\'s open-loop gain and its unity-gain bandwidth.',
                      style: textColor,
                    ),
                  ),
                  ListTile(
                    title: Text('Gain', style: textColor),
                    subtitle: Text(
                      'Also known in the form of AV(CL). `This is the absolute value of the closed-loop gain of the inverting amplifier, which is determined by the ratio of the feedback resistor (Rf) to the input resistor (Ri): |Gain| = Rf / Ri.',
                      style: textColor,
                    ),
                  ),
                  ListTile(
                    title: Text('Bandwidth', style: textColor),
                    subtitle: Text(
                      'This is the frequency range over which the amplifier can amplify signals without significant attenuation. It is measured in Hertz (Hz).',
                      style: textColor,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
