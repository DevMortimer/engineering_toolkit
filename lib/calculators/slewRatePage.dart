import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SlewRatePage extends StatefulWidget {
  SlewRatePage({super.key});

  @override
  State<SlewRatePage> createState() => _SlewRatePageState();
}

class _SlewRatePageState extends State<SlewRatePage> {
  TextEditingController slewRateController = TextEditingController();
  TextEditingController peakOutputVoltageController = TextEditingController();
  TextEditingController riseTimeController = TextEditingController();
  FocusNode peakOutputVoltageNode = FocusNode();
  FocusNode riseTimeNode = FocusNode();

  Timer? debounceTimer;

  void debounce([VoidCallback? action]) {
    if (debounceTimer != null) {
      debounceTimer!.cancel();
    }
    debounceTimer = Timer(const Duration(milliseconds: 750), action ?? () {});
  }

  void calculate() {
    try {
      if (slewRateController.text.isEmpty &&
          peakOutputVoltageController.text.isNotEmpty &&
          riseTimeController.text.isNotEmpty) {
        slewRateController.text =
            (double.parse(peakOutputVoltageController.text) /
                    double.parse(riseTimeController.text))
                .toString();
      } else if (peakOutputVoltageController.text.isEmpty &&
          slewRateController.text.isNotEmpty &&
          riseTimeController.text.isNotEmpty) {
        peakOutputVoltageController.text =
            (double.parse(slewRateController.text) *
                    double.parse(riseTimeController.text))
                .toString();
      } else if (riseTimeController.text.isEmpty &&
          slewRateController.text.isNotEmpty &&
          peakOutputVoltageController.text.isNotEmpty) {
        riseTimeController.text =
            (double.parse(peakOutputVoltageController.text) /
                    double.parse(slewRateController.text))
                .toString();
      }

      setState(() {});
    } catch (e) {
      // Handle error
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
        title: Text("Op-amp Slew Rate Calculator", style: textColor),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14.5),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  "The slew rate of an operational amplifier is the maximum rate of change of the output voltage per unit time.\n\nLeave one field below empty to solve for that variable or press the button below to calculate the missing value:",
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
                    width: 200,
                    child: TextField(
                      controller: slewRateController,
                      decoration: InputDecoration(
                        filled: true,
                        hintText: "Slew Rate (V/µs)",
                        label: Text("Slew Rate (V/µs)", style: textColor),
                        suffixIcon: slewRateController.text.isNotEmpty
                            ? IconButton(
                                icon: const Icon(Icons.clear),
                                onPressed: () => slewRateController.clear(),
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
                        peakOutputVoltageNode.requestFocus();
                      },
                      onChanged: (text) => debounce(calculate),
                      style: textColor,
                    ),
                  ),
                  SizedBox(
                    width: 200,
                    child: TextField(
                      controller: peakOutputVoltageController,
                      focusNode: peakOutputVoltageNode,
                      decoration: InputDecoration(
                        filled: true,
                        hintText: "Peak Output Voltage (V)",
                        label: Text("Peak Output Voltage", style: textColor),
                        suffixIcon: peakOutputVoltageController.text.isNotEmpty
                            ? IconButton(
                                icon: const Icon(Icons.clear),
                                onPressed: () =>
                                    peakOutputVoltageController.clear(),
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
                        riseTimeNode.requestFocus();
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
                  width: 180,
                  child: TextField(
                    controller: riseTimeController,
                    focusNode: riseTimeNode,
                    decoration: InputDecoration(
                      filled: true,
                      hintText: "Rise Time (µs)",
                      label: Text("Rise Time (µs)", style: textColor),
                      suffixIcon: riseTimeController.text.isNotEmpty
                          ? IconButton(
                              icon: const Icon(Icons.clear),
                              onPressed: () => riseTimeController.clear(),
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
                physics:
                    NeverScrollableScrollPhysics(), // Prevent scrolling inside ListView
                children: [
                  ListTile(
                    title: Text('Slew Rate (V/µs)', style: textColor),
                    subtitle: Text(
                      'The maximum rate of change of the output voltage per unit time.',
                      style: textColor,
                    ),
                  ),
                  ListTile(
                    title: Text('Peak Output Voltage (V)', style: textColor),
                    subtitle: Text(
                      'The highest voltage level reached by the output signal.',
                      style: textColor,
                    ),
                  ),
                  ListTile(
                    title: Text('Rise Time (µs)', style: textColor),
                    subtitle: Text(
                      'The time taken for the output voltage to rise from 10% to 90% of its final value.',
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
