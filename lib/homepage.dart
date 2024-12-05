import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:engineering_toolkit/calculators/bandwidthPage.dart';
import 'package:engineering_toolkit/calculators/resistorPage.dart';
import 'package:engineering_toolkit/calculators/slewRatePage.dart';
import 'package:engineering_toolkit/calculators/unitConverterPage.dart';
import 'package:engineering_toolkit/components/menubutton.dart';
import 'package:engineering_toolkit/references/materialPropertiesPage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'ENGINEERING\nTOOLKIT',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w900,
            color: Color(
              Theme.of(context).brightness == Brightness.dark
                  ? 0xFF40DFAF
                  : 0xFF000000,
            ),
          ),
        ),
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
                const SizedBox(height: 18),

                // Calculators
                Text(
                  'Calculators',
                  style: GoogleFonts.arimo(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Theme.of(context).brightness == Brightness.dark
                        ? const Color(0xFFFFFFFF)
                        : const Color(0xFF000000),
                  ),
                ),
                Center(
                  child: Wrap(
                    runSpacing: 10,
                    spacing: 10,
                    alignment: WrapAlignment.center,
                    children: [
                      MenuButton(
                        label: 'Unit\nConverter',
                        onPressed: () => Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const UnitConverterPage(),
                          ),
                        ),
                        child: Image.asset('assets/convert.png'),
                      ),
                      MenuButton(
                        label: 'Resistor\nColor',
                        onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ResistorPage(),
                          ),
                        ),
                        child: Image.asset('assets/resistor.png'),
                      ),
                      MenuButton(
                        label: 'Op-amp\nBandwidth',
                        onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => BandwidthPage(),
                          ),
                        ),
                        child: Image.asset('assets/opamp.png'),
                      ),
                      MenuButton(
                        label: 'Slew\nRate',
                        onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SlewRatePage(),
                          ),
                        ),
                        child: Image.asset('assets/slew.png'),
                      ),
                      MenuButton(
                        label: 'Voltage,\nCurrent,\nResistance',
                        onPressed: () {},
                        child: Image.asset('assets/vcr.png'),
                      ),
                    ],
                  ),
                ),

                // References
                Text(
                  'References',
                  style: GoogleFonts.arimo(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Theme.of(context).brightness == Brightness.dark
                        ? const Color(0xFFFFFFFF)
                        : const Color(0xFF000000),
                  ),
                ),
                Center(
                  child: Wrap(
                    runSpacing: 10,
                    spacing: 10,
                    alignment: WrapAlignment.center,
                    children: [
                      MenuButton(
                        label: 'Mixed\nSignals\nFormulas',
                        onPressed: () {},
                        child: Image.asset('assets/signal.png'),
                      ),
                      MenuButton(
                        label: 'Material\nProperties',
                        onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const MaterialPropertiesPage(),
                          ),
                        ),
                        child: Image.asset('assets/material.png'),
                      ),
                      MenuButton(
                        label: 'Electrical\nEngineering\nFormulas',
                        onPressed: () {},
                        child: Image.asset('assets/chemical.png'),
                      ),
                      MenuButton(
                        label: 'Civil\nEngineering\nFormulas',
                        onPressed: () {},
                        child: Image.asset('assets/civil-engineering.png'),
                      ),
                      MenuButton(
                        label: 'Chemical\nEngineering\nFormulas',
                        onPressed: () {},
                        child: Image.asset('assets/electrical.png'),
                      ),
                    ],
                  ),
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
