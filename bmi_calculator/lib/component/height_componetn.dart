import 'package:bmi_calculator/constant/style_constant.dart';
import 'package:flutter/material.dart';

class HeightComponent extends StatelessWidget {
  const HeightComponent(
      {Key? key, required this.height, required this.onChaged})
      : super(key: key);

  final int height;
  final Function(double newValue)? onChaged;
  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      const Text(
        'HEIGHT',
        style: kLabelTextStyle,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.baseline,
        textBaseline: TextBaseline.alphabetic,
        children: [
          Text(
            '$height',
            style: kNumberTextStyle,
          ),
          const Text(
            'cm',
            style: kLabelTextStyle,
          ),
        ],
      ),
      SliderTheme(
        data: SliderTheme.of(context).copyWith(
          inactiveTrackColor: const Color(0xFF8D8E98),
          activeTrackColor: Colors.white,
          thumbColor: const Color(0xFFEB1555),
          overlayColor: const Color(0x29EB1555),
          thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 15.0),
          overlayShape: const RoundSliderOverlayShape(overlayRadius: 30.0),
        ),
        child: Slider(
            min: 120, max: 220, value: height.toDouble(), onChanged: onChaged),
      )
    ]);
  }
}
