import 'package:engineering_toolkit/components/dropdownText.dart';
import 'package:flutter/material.dart';
import 'package:latext/latext.dart';

class MixedSignalsPage extends StatelessWidget {
  const MixedSignalsPage({super.key});

  @override
  Widget build(BuildContext context) {
    Color c = Theme.of(context).brightness == Brightness.dark
        ? Colors.white
        : Colors.black;
    TextStyle t = TextStyle(color: c);
    TextStyle titles = t.copyWith(fontSize: 20);
    TextStyle formulas = t.copyWith(fontSize: 24);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Mixed Signals Formulas"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14.5),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              entry(
                "Frequency Compensation",
                'Is a technique used in amplifiers, and especially in amplifiers employing negative feedback. It usually has two primary goals: To avoid the unintentional creation of positive feedback, which will cause the amplifier to oscillate, and to control overshoot and ringing in the amplifier\'s step response. It is also used extensively to improve the bandwidth of single pole systems.',
                "\$C_{in}(M) = (A_v + 1)Cc\$",
                titles,
                formulas,
                t,
              ),
              const SizedBox(height: 8),
              entry(
                "Slew Rate",
                'Slew rate is the initial slope of the exponential waveform. The slew rate represents the fastest response that an op amp can have.',
                "\$S_R = \\frac{\\Delta V_{out}}{\\Delta t}\$",
                titles,
                formulas,
                t,
              ),
              const SizedBox(height: 8),
              entry(
                "fmax",
                'fmax is the highest frequency that can be amplified without slew-rate distortion. The frequency fmax is sometimes called the power bandwidth or large-signal bandwidth of the op amp.',
                "\$f_{max} = \\frac{S_R}{2\\pi V_p}\$",
                titles,
                formulas,
                t,
              ),
              const SizedBox(height: 8),
              entry(
                "Voltage Gain",
                'Av(CL) is the closed-loop voltage gain because it is the voltage when there is a feedback path between the output and the input. The closed-loop voltage gain Av(CL) is always smaller than the open-loop voltage gain AVOL because of the negative feedback.',
                "\$A_v(CL) = \\frac{-R_f}{R_1}\$",
                titles,
                formulas,
                t,
              ),
              const SizedBox(height: 8),
              entry(
                "Bandwidth",
                'The bandwidth of an inverting amplifier is the range of frequencies between the amplifier\'s upper and lower cutoff frequencies. Remove the + 1 if AV(CL) is greater than 10.',
                "\$f_{2(CL)} = \\frac{f_{unity}}{A_{V(CL)} + 1}\$",
                titles,
                formulas,
                t,
              ),
              const SizedBox(height: 8),
              entry(
                "Output Error",
                'The output error caused by input bias current, input offset current, and input offset voltage can be reduced with the use of negative feedback.',
                "\$V_{error} = A_{VOL}(V_{1err} + V_{2err} + V_{3err})\$",
                titles,
                formulas,
                t,
                children: Column(
                  children: [
                    const SizedBox(height: 8),
                    Center(
                      child: LaTexT(
                        laTeXCode: Text(
                          "\$V_{1err} = (R_{B1} - R_{B2})I_{in(bias)}\$",
                          style: formulas,
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    Center(
                      child: LaTexT(
                        laTeXCode: Text(
                          "\$V_{2err} = (R_{B1} + R_{B2})\\frac{I_{in(off)}}{2}\$",
                          style: formulas,
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    Center(
                      child: LaTexT(
                        laTeXCode: Text(
                          "\$R_{B2} = R_1 || R_f\$",
                          style: formulas,
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    Center(
                      child: LaTexT(
                        laTeXCode: Text(
                          "\$V_{3err} = V_{in(off)}\$",
                          style: formulas,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 8),
              entry(
                "Power Supply Rejection Ratio",
                'Defined as the power-supply rejection ratio equals the change in the input offset voltage divided by the change in the supply voltages.',
                "\$PSRR = \\frac{\\Delta V_{in(off)}}{\\Delta V_s}\$",
                titles,
                formulas,
                t,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget entry(String title, String description, String latex, TextStyle titles,
      TextStyle formulas, TextStyle t,
      {Widget? children}) {
    return Column(
      children: [
        DropdownText(
          text: Text(title, style: titles),
          child: Text(description, style: t),
        ),
        const SizedBox(height: 8),
        Center(
          child: LaTexT(
            laTeXCode: Text(
              latex,
              style: formulas,
            ),
          ),
        ),
        children ?? Container(),
      ],
    );
  }
}
