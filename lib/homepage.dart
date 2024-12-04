import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:engineering_toolbox/calculators/bandwidthPage.dart';
import 'package:engineering_toolbox/calculators/resistorPage.dart';
import 'package:engineering_toolbox/calculators/slewRatePage.dart';
import 'package:engineering_toolbox/calculators/unitConverterPage.dart';
import 'package:engineering_toolbox/components/menubutton.dart';
import 'package:engineering_toolbox/references/materialPropertiesPage.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Engineering Toolbox'),
        actions: [
          IconButton(
            icon: Theme.of(context).brightness == Brightness.dark
                ? const Icon(Icons.dark_mode_rounded)
                : const Icon(Icons.light_mode_rounded),
            onPressed: () => AdaptiveTheme.of(context).toggleThemeMode(),
          ),
          IconButton(
            icon: const Icon(Icons.info_rounded),
            onPressed: () {},
          ),
        ],
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14.5),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // References
                const Text(
                  'References',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
                GridView.count(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  primary: false,
                  padding: const EdgeInsets.all(20),
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  crossAxisCount: 2,
                  children: [
                    MenuButton(
                      child: const Text('Mixed Signals Formulas'),
                      onPressed: () {},
                    ),
                    MenuButton(
                      child: const Text('Material Properties'),
                      onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const MaterialPropertiesPage(),
                        ),
                      ),
                    ),
                    MenuButton(
                      child: const Text('Electrical Engineering Formulas'),
                      onPressed: () {},
                    ),
                    MenuButton(
                      child: const Text('Civil Engineering Formulas'),
                      onPressed: () {},
                    ),
                    MenuButton(
                      child: const Text('Chemical Engineering Formulas'),
                      onPressed: () {},
                    ),
                  ],
                ),

                // Calculators
                const Text(
                  'Calculators',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
                GridView.count(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  primary: false,
                  padding: const EdgeInsets.all(20),
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  crossAxisCount: 2,
                  children: [
                    MenuButton(
                      child: const Text('Unit Converter'),
                      onPressed: () => Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const UnitConverterPage(),
                        ),
                      ),
                    ),
                    MenuButton(
                      child: const Text('Resistor Color'),
                      onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ResistorPage(),
                        ),
                      ),
                    ),
                    MenuButton(
                      child: const Text('Op-amp Bandwidth'),
                      onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const BandwidthPage(),
                        ),
                      ),
                    ),
                    MenuButton(
                      child: const Text('Slew Rate'),
                      onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SlewRatePage(),
                        ),
                      ),
                    ),
                    MenuButton(
                      child: const Text('Voltage, Current, Resistance'),
                      onPressed: () {},
                    ),
                  ],
                ),

                // Padding at the bottom (for scrolling)
                const SizedBox(height: 32),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
