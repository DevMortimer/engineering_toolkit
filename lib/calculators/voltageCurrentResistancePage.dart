import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OhmsLawPage extends StatefulWidget {
  OhmsLawPage({super.key});

  @override
  State<OhmsLawPage> createState() => _OhmsLawPageState();
}

class _OhmsLawPageState extends State<OhmsLawPage> {
  TextEditingController voltageController = TextEditingController();
  TextEditingController currentController = TextEditingController();
  TextEditingController resistanceController = TextEditingController();
  FocusNode currentFocusNode = FocusNode();
  FocusNode resistanceFocusNode = FocusNode();

  Timer? debounceTimer;

  void debounce([VoidCallback? action]) {
    if (debounceTimer != null) {
      debounceTimer!.cancel();
    }
    debounceTimer = Timer(const Duration(milliseconds: 750), action ?? () {});
  }

  void calculate() {
    try {
      if (voltageController.text.isEmpty &&
          currentController.text.isNotEmpty &&
          resistanceController.text.isNotEmpty) {
        voltageController.text = (double.parse(currentController.text) *
                double.parse(resistanceController.text))
            .toStringAsFixed(3);
      } else if (currentController.text.isEmpty &&
          voltageController.text.isNotEmpty &&
          resistanceController.text.isNotEmpty) {
        currentController.text = (double.parse(voltageController.text) /
                double.parse(resistanceController.text))
            .toStringAsFixed(3);
      } else if (resistanceController.text.isEmpty &&
          voltageController.text.isNotEmpty &&
          currentController.text.isNotEmpty) {
        resistanceController.text = (double.parse(voltageController.text) /
                double.parse(currentController.text))
            .toStringAsFixed(3);
      }

      setState(() {});
    } catch (e) {
      // Handle error (e.g., show a snack bar)
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
        title: Text("Ohm's Law Calculator", style: textColor),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14.5),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  "Ohm's Law relates voltage, current, and resistance in electrical circuits.\n\nLeave one field below empty to solve for that variable or press the button below to calculate the missing value:",
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
                    width: 164,
                    child: TextField(
                      controller: voltageController,
                      decoration: InputDecoration(
                        filled: true,
                        hintText: "Voltage (V)",
                        label: Text("Voltage (V)", style: textColor),
                        suffixIcon: voltageController.text.isNotEmpty
                            ? IconButton(
                                icon: const Icon(Icons.clear),
                                onPressed: () => voltageController.clear(),
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
                        currentFocusNode.requestFocus();
                      },
                      onChanged: (text) => debounce(calculate),
                      style: textColor,
                    ),
                  ),
                  SizedBox(
                    width: 164,
                    child: TextField(
                      controller: currentController,
                      focusNode: currentFocusNode,
                      decoration: InputDecoration(
                        filled: true,
                        hintText: "Current (A)",
                        label: Text("Current (A)", style: textColor),
                        suffixIcon: currentController.text.isNotEmpty
                            ? IconButton(
                                icon: const Icon(Icons.clear),
                                onPressed: () => currentController.clear(),
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
                        resistanceFocusNode.requestFocus();
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
                    controller: resistanceController,
                    focusNode: resistanceFocusNode,
                    decoration: InputDecoration(
                      filled: true,
                      hintText: "Resistance (Ω)",
                      label: Text("Resistance (Ω)", style: textColor),
                      suffixIcon: resistanceController.text.isNotEmpty
                          ? IconButton(
                              icon: const Icon(Icons.clear),
                              onPressed: () => resistanceController.clear(),
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
                    NeverScrollableScrollPhysics(), // Prevent scrolling within ListView
                children: [
                  ListTile(
                    title: Text('Voltage (V)', style: textColor),
                    subtitle: Text(
                      'The potential difference between two points in an electric field; it drives the flow of charge through a conductor.',
                      style: textColor,
                    ),
                  ),
                  ListTile(
                    title: Text('Current (A)', style: textColor),
                    subtitle: Text(
                      'The rate at which electric charge flows past a given point in an electric circuit.',
                      style: textColor,
                    ),
                  ),
                  ListTile(
                    title: Text('Resistance (Ω)', style: textColor),
                    subtitle: Text(
                      'The opposition to the flow of electric current in a conductor; it determines how much power is dissipated as heat.',
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
