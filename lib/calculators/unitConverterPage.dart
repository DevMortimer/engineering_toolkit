import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:units_converter/units_converter.dart';

class UnitConverterPage extends StatefulWidget {
  const UnitConverterPage({super.key});

  @override
  State<UnitConverterPage> createState() => _UnitConverterPageState();
}

class _UnitConverterPageState extends State<UnitConverterPage> {
  late List<String> times;
  late List<String> angles;
  late List<String> substances;
  late List<String> areas;
  late List<String> digitals;
  late List<String> densities;
  late List<String> energies;
  late List<String> forces;
  late List<String> fuels;
  late List<String> lengths;
  late List<String> molarMasses;
  late List<String> masses;
  late List<String> numeralSystems;
  late List<String> powers;
  late List<String> pressures;
  late List<String> shoes;
  late List<String> prefixes;
  late List<String> speeds;
  late List<String> temperatures;
  late List<String> torques;
  late List<String> volumes;

  TextEditingController valueController = TextEditingController();
  FocusNode valueFocus = FocusNode();
  Timer? debounce;
  String currentSelection = 'Time';
  late List<String> currentUnitSelection;
  late String currentUnit;
  List<Unit>? converted;

  @override
  void initState() {
    super.initState();

    times = TIME.values.map((t) => t.toString().split('.').last).toList();
    angles = ANGLE.values.map((a) => a.toString().split('.').last).toList();
    substances = AMOUNT_OF_SUBSTANCE.values
        .map((a) => a.toString().split('.').last)
        .toList();
    areas = AREA.values.map((a) => a.toString().split('.').last).toList();
    digitals =
        DIGITAL_DATA.values.map((a) => a.toString().split('.').last).toList();
    densities =
        DENSITY.values.map((a) => a.toString().split('.').last).toList();
    energies = ENERGY.values.map((a) => a.toString().split('.').last).toList();
    forces = FORCE.values.map((a) => a.toString().split('.').last).toList();
    fuels = FUEL_CONSUMPTION.values
        .map((a) => a.toString().split('.').last)
        .toList();
    lengths = LENGTH.values.map((a) => a.toString().split('.').last).toList();
    molarMasses =
        MOLAR_MASS.values.map((a) => a.toString().split('.').last).toList();
    masses = MASS.values.map((a) => a.toString().split('.').last).toList();
    numeralSystems = NUMERAL_SYSTEMS.values
        .map((a) => a.toString().split('.').last)
        .toList();
    powers = POWER.values.map((a) => a.toString().split('.').last).toList();
    pressures =
        PRESSURE.values.map((a) => a.toString().split('.').last).toList();
    shoes = SHOE_SIZE.values.map((a) => a.toString().split('.').last).toList();
    prefixes =
        SI_PREFIXES.values.map((a) => a.toString().split('.').last).toList();
    speeds = SPEED.values.map((a) => a.toString().split('.').last).toList();
    temperatures =
        TEMPERATURE.values.map((a) => a.toString().split('.').last).toList();
    torques = TORQUE.values.map((a) => a.toString().split('.').last).toList();
    volumes = VOLUME.values.map((a) => a.toString().split('.').last).toList();

    currentUnitSelection = times;
    currentUnit = times.first;
    valueFocus.requestFocus();
  }

  @override
  void dispose() {
    valueController.dispose();
    valueFocus.dispose();
    debounce?.cancel();

    super.dispose();
  }

  void onValueChanged(text) {
    if (debounce?.isActive ?? false) debounce?.cancel();
    debounce = Timer(const Duration(milliseconds: 250), () {
      calculateValues(text);
    });
  }

  void calculateValues(String value) {
    if (value.isEmpty) return;
    var number = double.tryParse(value) ?? 0;

    converted = [];
    if (currentSelection == 'Angle') {
      var angle = Angle(significantFigures: 8, removeTrailingZeros: true);
      var unit = ANGLE.values[angles.indexOf(currentUnit)];
      angle.convert(unit, number);
      var converts = angle.getAll();
      setState(() {
        converted = converts;
      });
    } else if (currentSelection == 'Time') {
      var time = Time(significantFigures: 8, removeTrailingZeros: true);
      var unit = TIME.values[times.indexOf(currentUnit)];
      time.convert(unit, number);
      var converts = time.getAll();
      setState(() {
        converted = converts;
      });
    } else if (currentSelection == 'Substances') {
      var substance =
          AmountOfSubstance(significantFigures: 8, removeTrailingZeros: true);
      var unit = AMOUNT_OF_SUBSTANCE.values[substances.indexOf(currentUnit)];
      substance.convert(unit, number);
      var converts = substance.getAll();
      setState(() {
        converted = converts;
      });
    } else if (currentSelection == 'Areas') {
      var area = Area(significantFigures: 8, removeTrailingZeros: true);
      var unit = AREA.values[areas.indexOf(currentUnit)];
      area.convert(unit, number);
      var converts = area.getAll();
      setState(() {
        converted = converts;
      });
    } else if (currentSelection == 'Digital') {
      var digital =
          DigitalData(significantFigures: 8, removeTrailingZeros: true);
      var unit = DIGITAL_DATA.values[digitals.indexOf(currentUnit)];
      digital.convert(unit, number);
      var converts = digital.getAll();
      setState(() {
        converted = converts;
      });
    } else if (currentSelection == 'Density') {
      var density = Density(significantFigures: 8, removeTrailingZeros: true);
      var unit = DENSITY.values[densities.indexOf(currentUnit)];
      density.convert(unit, number);
      var converts = density.getAll();
      setState(() {
        converted = converts;
      });
    } else if (currentSelection == 'Energy') {
      var energy = Energy(significantFigures: 8, removeTrailingZeros: true);
      var unit = ENERGY.values[energies.indexOf(currentUnit)];
      energy.convert(unit, number);
      var converts = energy.getAll();
      setState(() {
        converted = converts;
      });
    } else if (currentSelection == 'Force') {
      var force = Force(significantFigures: 8, removeTrailingZeros: true);
      var unit = FORCE.values[forces.indexOf(currentUnit)];
      force.convert(unit, number);
      var converts = force.getAll();
      setState(() {
        converted = converts;
      });
    } else if (currentSelection == 'Fuel') {
      var fuel =
          FuelConsumption(significantFigures: 8, removeTrailingZeros: true);
      var unit = FUEL_CONSUMPTION.values[fuels.indexOf(currentUnit)];
      fuel.convert(unit, number);
      var converts = fuel.getAll();
      setState(() {
        converted = converts;
      });
    } else if (currentSelection == 'Length') {
      var length = Length(significantFigures: 8, removeTrailingZeros: true);
      var unit = LENGTH.values[lengths.indexOf(currentUnit)];
      length.convert(unit, number);
      var converts = length.getAll();
      setState(() {
        converted = converts;
      });
    } else if (currentSelection == 'Molar Mass') {
      var molarMass =
          MolarMass(significantFigures: 8, removeTrailingZeros: true);
      var unit = MOLAR_MASS.values[molarMasses.indexOf(currentUnit)];
      molarMass.convert(unit, number);
      var converts = molarMass.getAll();
      setState(() {
        converted = converts;
      });
    } else if (currentSelection == 'Mass') {
      var mass = Mass(significantFigures: 8, removeTrailingZeros: true);
      var unit = MASS.values[masses.indexOf(currentUnit)];
      mass.convert(unit, number);
      var converts = mass.getAll();
      setState(() {
        converted = converts;
      });
    } else if (currentSelection == 'Numeral System') {
      var numeralSystem = NumeralSystems();
      var unit = NUMERAL_SYSTEMS.values[numeralSystems.indexOf(currentUnit)];
      numeralSystem.convert(unit, value);
      var converts = numeralSystem.getAll();
      setState(() {
        converted = converts;
      });
    } else if (currentSelection == 'Power') {
      var power = Power(significantFigures: 8, removeTrailingZeros: true);
      var unit = POWER.values[powers.indexOf(currentUnit)];
      power.convert(unit, number);
      var converts = power.getAll();
      setState(() {
        converted = converts;
      });
    } else if (currentSelection == 'Pressure') {
      var pressure = Pressure(significantFigures: 8, removeTrailingZeros: true);
      var unit = PRESSURE.values[pressures.indexOf(currentUnit)];
      pressure.convert(unit, number);
      var converts = pressure.getAll();
      setState(() {
        converted = converts;
      });
    } else if (currentSelection == 'Shoe Size') {
      var shoe = ShoeSize(significantFigures: 8, removeTrailingZeros: true);
      var unit = SHOE_SIZE.values[shoes.indexOf(currentUnit)];
      shoe.convert(unit, number);
      var converts = shoe.getAll();
      setState(() {
        converted = converts;
      });
    } else if (currentSelection == 'SI Prefix') {
      var prefix = SIPrefixes(significantFigures: 8, removeTrailingZeros: true);
      var unit = SI_PREFIXES.values[prefixes.indexOf(currentUnit)];
      prefix.convert(unit, number);
      var converts = prefix.getAll();
      setState(() {
        converted = converts;
      });
    } else if (currentSelection == 'Speed') {
      var speed = Speed(significantFigures: 8, removeTrailingZeros: true);
      var unit = SPEED.values[speeds.indexOf(currentUnit)];
      speed.convert(unit, number);
      var converts = speed.getAll();
      setState(() {
        converted = converts;
      });
    } else if (currentSelection == 'Temperature') {
      var temp = Temperature(significantFigures: 8, removeTrailingZeros: true);
      var unit = TEMPERATURE.values[temperatures.indexOf(currentUnit)];
      temp.convert(unit, number);
      var converts = temp.getAll();
      setState(() {
        converted = converts;
      });
    } else if (currentSelection == 'Torque') {
      var torque = Torque(significantFigures: 8, removeTrailingZeros: true);
      var unit = TORQUE.values[torques.indexOf(currentUnit)];
      torque.convert(unit, number);
      var converts = torque.getAll();
      setState(() {
        converted = converts;
      });
    } else if (currentSelection == 'Volume') {
      var volume = Volume(significantFigures: 8, removeTrailingZeros: true);
      var unit = VOLUME.values[volumes.indexOf(currentUnit)];
      volume.convert(unit, number);
      var converts = volume.getAll();
      setState(() {
        converted = converts;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Unit Converter"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14.5),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Enter a value and specify it's unit.",
                style: TextStyle(
                  color: Theme.of(context).brightness == Brightness.dark
                      ? Colors.white
                      : Colors.black,
                ),
              ),
              const SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 100),
                child: TextField(
                  controller: valueController,
                  focusNode: valueFocus,
                  decoration: const InputDecoration(
                    filled: true,
                    hintText: "Value",
                  ),
                  keyboardType: currentSelection != 'Numeral System'
                      ? const TextInputType.numberWithOptions(
                          signed: true, decimal: true)
                      : null,
                  inputFormatters: currentSelection != 'Numeral System'
                      ? [FilteringTextInputFormatter.singleLineFormatter]
                      : [],
                  textInputAction: TextInputAction.done,
                  onChanged: onValueChanged,
                  style: TextStyle(
                    color: Theme.of(context).brightness == Brightness.dark
                        ? Colors.white
                        : Colors.black,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      DropdownButton(
                        items: <String>[
                          'Time',
                          'Angle',
                          'Areas',
                          'Substances',
                          'Digital',
                          'Density',
                          'Energy',
                          'Force',
                          'Fuel',
                          'Length',
                          'Mass',
                          'Molar Mass',
                          'Numeral System',
                          'Power',
                          'Pressure',
                          'Shoe Size',
                          'SI Prefix',
                          'Speed',
                          'Temperature',
                          'Torque',
                          'Volume',
                        ]
                            .map(
                              (String value) => DropdownMenuItem(
                                value: value,
                                child: Text(
                                  value,
                                  style: TextStyle(
                                    color: Theme.of(context).brightness ==
                                            Brightness.dark
                                        ? Colors.white
                                        : Colors.black,
                                  ),
                                ),
                              ),
                            )
                            .toList(),
                        value: currentSelection,
                        onChanged: (value) {
                          if (value != null) {
                            setState(() {
                              currentSelection = value;
                              if (currentSelection == 'Time') {
                                currentUnitSelection = times;
                                currentUnit = times.first;
                              } else if (currentSelection == 'Angle') {
                                currentUnitSelection = angles;
                                currentUnit = angles.first;
                              } else if (currentSelection == 'Substances') {
                                currentUnitSelection = substances;
                                currentUnit = substances.first;
                              } else if (currentSelection == 'Areas') {
                                currentUnitSelection = areas;
                                currentUnit = areas.first;
                              } else if (currentSelection == 'Digital') {
                                currentUnitSelection = digitals;
                                currentUnit = digitals.first;
                              } else if (currentSelection == 'Density') {
                                currentUnitSelection = densities;
                                currentUnit = densities.first;
                              } else if (currentSelection == 'Energy') {
                                currentUnitSelection = energies;
                                currentUnit = energies.first;
                              } else if (currentSelection == 'Force') {
                                currentUnitSelection = forces;
                                currentUnit = forces.first;
                              } else if (currentSelection == 'Fuel') {
                                currentUnitSelection = fuels;
                                currentUnit = fuels.first;
                              } else if (currentSelection == 'Length') {
                                currentUnitSelection = lengths;
                                currentUnit = lengths.first;
                              } else if (currentSelection == 'Molar Mass') {
                                currentUnitSelection = molarMasses;
                                currentUnit = molarMasses.first;
                              } else if (currentSelection == 'Mass') {
                                currentUnitSelection = masses;
                                currentUnit = masses.first;
                              } else if (currentSelection == 'Numeral System') {
                                currentUnitSelection = numeralSystems;
                                currentUnit = numeralSystems.first;
                              } else if (currentSelection == 'Power') {
                                currentUnitSelection = powers;
                                currentUnit = powers.first;
                              } else if (currentSelection == 'Pressure') {
                                currentUnitSelection = pressures;
                                currentUnit = pressures.first;
                              } else if (currentSelection == 'Shoe Size') {
                                currentUnitSelection = shoes;
                                currentUnit = shoes.first;
                              } else if (currentSelection == 'SI Prefix') {
                                currentUnitSelection = prefixes;
                                currentUnit = prefixes.first;
                              } else if (currentSelection == 'Speed') {
                                currentUnitSelection = speeds;
                                currentUnit = speeds.first;
                              } else if (currentSelection == 'Temperature') {
                                currentUnitSelection = temperatures;
                                currentUnit = temperatures.first;
                              } else if (currentSelection == 'Torque') {
                                currentUnitSelection = torques;
                                currentUnit = torques.first;
                              } else if (currentSelection == 'Volume') {
                                currentUnitSelection = volumes;
                                currentUnit = volumes.first;
                              }
                            });
                            onValueChanged(valueController.text);
                          }
                        },
                      ),
                      DropdownButton(
                        items: currentUnitSelection
                            .map(
                              (String value) => DropdownMenuItem(
                                value: value,
                                child: Text(
                                  value,
                                  style: TextStyle(
                                    color: Theme.of(context).brightness ==
                                            Brightness.dark
                                        ? Colors.white
                                        : Colors.black,
                                  ),
                                ),
                              ),
                            )
                            .toList(),
                        value: currentUnit,
                        onChanged: (value) {
                          if (value != null) {
                            setState(() {
                              currentUnit = value;
                            });
                            onValueChanged(valueController.text);
                          }
                        },
                      ),
                    ],
                  ),
                ),
              ),

              // The results
              const SizedBox(height: 32),
              Text(
                "You'll see the converted values here (click to copy a value):",
                style: TextStyle(
                  color: Theme.of(context).brightness == Brightness.dark
                      ? Colors.white
                      : Colors.black,
                ),
              ),
              const SizedBox(height: 8),
              Container(
                width: double.infinity,
                color: Theme.of(context).colorScheme.surfaceContainerHigh,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: converted != null && converted!.isNotEmpty
                      ? ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: converted!.length,
                          itemBuilder: (context, index) => TextButton(
                            child: Text(
                              '${converted![index].name.toString().split('.').last}: ${converted![index].stringValue ?? converted![index].value}${converted![index].symbol ?? ''}',
                              style: TextStyle(
                                fontSize: 16,
                                color: Theme.of(context).brightness ==
                                        Brightness.dark
                                    ? Colors.white
                                    : Colors.black,
                              ),
                            ),
                            onPressed: () async {
                              // Copy the text
                              await Clipboard.setData(
                                ClipboardData(
                                  text:
                                      "${converted![index].value}${converted![index].symbol ?? ''}",
                                ),
                              );
                            },
                          ),
                        )
                      : Container(),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
