import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

enum BandSelection { four, five, six }

// Used by the bands of color
enum BandColors {
  black(0, Colors.black),
  brown(1, Colors.brown),
  red(2, Colors.red),
  orange(3, Colors.orange),
  yellow(4, Colors.yellow),
  green(5, Colors.green),
  blue(6, Colors.blue),
  violet(7, Colors.purple),
  grey(8, Colors.grey),
  white(9, Colors.white);

  final int value;
  final Color color;
  const BandColors(this.value, this.color);
}

// Used by the multiplier
enum MultiplierColors {
  black(1, Colors.black),
  brown(10, Colors.brown),
  red(100, Colors.red),
  orange(1000, Colors.orange),
  yellow(10000, Colors.yellow),
  green(100000, Colors.green),
  blue(1000000, Colors.blue),
  violet(10000000, Colors.purple),
  grey(100000000, Colors.grey),
  white(1000000000, Colors.white),
  gold(0.1, Color.fromARGB(255, 248, 187, 56)),
  silver(0.01, Color.fromARGB(255, 146, 138, 138));

  final double value;
  final Color color;
  const MultiplierColors(this.value, this.color);
}

// Used by the tolerance
enum ToleranceColors {
  brown(1, Colors.brown),
  red(2, Colors.red),
  green(0.5, Colors.green),
  blue(0.25, Colors.blue),
  violet(0.1, Colors.purple),
  grey(0.05, Colors.grey),
  gold(5, Color.fromARGB(255, 248, 187, 56)),
  silver(10, Color.fromARGB(255, 146, 138, 138));

  final double value;
  final Color color;
  const ToleranceColors(this.value, this.color);
}

// Used by the ppm
enum PPMColors {
  brown(100, Colors.brown),
  red(50, Colors.red),
  orange(15, Colors.orange),
  yellow(25, Colors.yellow),
  blue(10, Colors.blue),
  violet(5, Colors.purple);

  final double value;
  final Color color;
  const PPMColors(this.value, this.color);
}

class ResistorPage extends StatefulWidget {
  const ResistorPage({super.key});

  @override
  State<ResistorPage> createState() => _ResistorPageState();
}

class _ResistorPageState extends State<ResistorPage> {
  TextStyle title = const TextStyle(fontSize: 20, fontWeight: FontWeight.bold);
  TextStyle subtitle = const TextStyle(fontSize: 18);
  TextStyle body = const TextStyle(fontSize: 16);

  BandSelection numOfBands = BandSelection.four;

  BandColors? firstBand;
  BandColors? secondBand;
  BandColors? thirdBand;
  BandColors? fourthBand;
  MultiplierColors? multiplier;
  ToleranceColors? tolerance;
  PPMColors? ppm;
  TextEditingController resistanceValueController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Resistor Calculator"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14.5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: Text(
                "Resistor Color Coding uses colored bands to quickly identify a resistors resistive value and its percentage of tolerance with the physical size of the resistor indicating its wattage rating.",
              ),
            ),
            const SizedBox(height: 16),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: numOfBands == BandSelection.four
                      ? null
                      : () {
                          numOfBands = BandSelection.four;
                          thirdBand = null;
                          ppm = null;
                          setState(() {});
                        },
                  child: const Text('4 Band'),
                ),
                ElevatedButton(
                  onPressed: numOfBands == BandSelection.five
                      ? null
                      : () {
                          numOfBands = BandSelection.five;
                          thirdBand ??= BandColors.black;
                          ppm = null;
                          setState(() {});
                        },
                  child: const Text('5 Band'),
                ),
                ElevatedButton(
                  onPressed: numOfBands == BandSelection.six
                      ? null
                      : () {
                          numOfBands = BandSelection.six;
                          ppm ??= PPMColors.brown;
                          setState(() {});
                        },
                  child: const Text('6 Band'),
                ),
              ],
            ),

            // Parameters
            Text('Resistor Parameters', style: title),
            const SizedBox(height: 8),

            //// 1st Band
            Text('1st Band of Color', style: subtitle),
            DropdownButton(
              items: BandColors.values
                  .map(
                    (BandColors c) => DropdownMenuItem(
                      value: c,
                      child: Text(
                        "${c.name} (${c.value})",
                        style: TextStyle(
                          backgroundColor: c.color,
                          color: c == BandColors.white ||
                                  c == BandColors.yellow ||
                                  c == BandColors.orange ||
                                  c == BandColors.green
                              ? Colors.black
                              : null,
                        ),
                      ),
                    ),
                  )
                  .toList(),
              value: firstBand ?? BandColors.black,
              onChanged: (item) => setState(() {
                firstBand = item;
              }),
            ),

            //// 2nd Band
            Text('2nd Band of Color', style: subtitle),
            DropdownButton(
              items: BandColors.values
                  .map(
                    (BandColors c) => DropdownMenuItem(
                      value: c,
                      child: Text(
                        "${c.name} (${c.value})",
                        style: TextStyle(
                          backgroundColor: c.color,
                          color: c == BandColors.white ||
                                  c == BandColors.yellow ||
                                  c == BandColors.orange ||
                                  c == BandColors.green
                              ? Colors.black
                              : null,
                        ),
                      ),
                    ),
                  )
                  .toList(),
              value: secondBand ?? BandColors.black,
              onChanged: (item) => setState(() {
                secondBand = item;
              }),
            ),

            //// 3rd Band
            if (numOfBands == BandSelection.five ||
                numOfBands == BandSelection.six)
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('3rd Band of Color', style: subtitle),
                  DropdownButton(
                    items: BandColors.values
                        .map(
                          (BandColors c) => DropdownMenuItem(
                            value: c,
                            child: Text(
                              "${c.name} (${c.value})",
                              style: TextStyle(
                                backgroundColor: c.color,
                                color: c == BandColors.white ||
                                        c == BandColors.yellow ||
                                        c == BandColors.orange ||
                                        c == BandColors.green
                                    ? Colors.black
                                    : null,
                              ),
                            ),
                          ),
                        )
                        .toList(),
                    value: thirdBand ?? BandColors.black,
                    onChanged: (item) => setState(() {
                      thirdBand = item;
                    }),
                  ),
                ],
              ),

            //// Multiplier
            Text('Multiplier', style: subtitle),
            DropdownButton(
              items: MultiplierColors.values
                  .map(
                    (MultiplierColors c) => DropdownMenuItem(
                      value: c,
                      child: Text(
                        "${c.name} (${c.value})",
                        style: TextStyle(
                          backgroundColor: c.color,
                          color: c == MultiplierColors.white ||
                                  c == MultiplierColors.yellow ||
                                  c == MultiplierColors.orange ||
                                  c == MultiplierColors.green
                              ? Colors.black
                              : null,
                        ),
                      ),
                    ),
                  )
                  .toList(),
              value: multiplier ?? MultiplierColors.black,
              onChanged: (item) => setState(() {
                multiplier = item;
              }),
            ),

            //// Tolerance
            Text('Tolerance', style: subtitle),
            DropdownButton(
              items: ToleranceColors.values
                  .map(
                    (ToleranceColors c) => DropdownMenuItem(
                      value: c,
                      child: Text(
                        "${c.name} (${c.value})",
                        style: TextStyle(
                          backgroundColor: c.color,
                          color:
                              c == ToleranceColors.green ? Colors.black : null,
                        ),
                      ),
                    ),
                  )
                  .toList(),
              value: tolerance ?? ToleranceColors.brown,
              onChanged: (item) => setState(() {
                tolerance = item;
              }),
            ),

            //// PPM
            if (numOfBands == BandSelection.six)
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('PPM', style: subtitle),
                  DropdownButton(
                    items: PPMColors.values
                        .map(
                          (PPMColors c) => DropdownMenuItem(
                            value: c,
                            child: Text(
                              "${c.name} (${c.value})",
                              style: TextStyle(
                                backgroundColor: c.color,
                                color: c == PPMColors.orange ||
                                        c == PPMColors.yellow
                                    ? Colors.black
                                    : null,
                              ),
                            ),
                          ),
                        )
                        .toList(),
                    value: ppm ?? PPMColors.brown,
                    onChanged: (item) => setState(() {
                      ppm = item;
                    }),
                  ),
                ],
              ),

            //// Resistance Value
            const SizedBox(height: 16),
            SizedBox(
              width: MediaQuery.of(context).size.width - 256,
              height: 64,
              child: TextField(
                controller: resistanceValueController,
                decoration: const InputDecoration(
                  filled: true,
                  hintText: "Resistance Value",
                ),
                keyboardType: const TextInputType.numberWithOptions(
                    signed: true, decimal: true),
                inputFormatters: [
                  FilteringTextInputFormatter.singleLineFormatter
                ],
                textInputAction: TextInputAction.done,
                onChanged: (text) {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
