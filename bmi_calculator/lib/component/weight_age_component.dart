import 'package:bmi_calculator/component/round_icon_bottom.dart';
import 'package:bmi_calculator/constant/style_constant.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class WeightAgeComponent extends StatelessWidget {
  const WeightAgeComponent(
      {Key? key,
      required this.title,
      this.unit,
      required this.value,
      required this.increaseCount,
      required this.decreaseCount})
      : super(key: key);

  final String title;
  final String? unit;
  final int value;
  final Function()? increaseCount;
  final Function()? decreaseCount;
  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Text(
        title,
        style: kLabelTextStyle,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.baseline,
        textBaseline: TextBaseline.alphabetic,
        children: [
          Text(
            '$value',
            style: kNumberTextStyle,
          ),
          Text(
            unit ?? '',
            style: kLabelTextStyle,
          ),
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RoundIconBottom(
              icon: FontAwesomeIcons.plus, onPressed: increaseCount),
          const SizedBox(
            width: 10,
          ),
          RoundIconBottom(
              icon: FontAwesomeIcons.minus, onPressed: decreaseCount)
        ],
      )
    ]);
  }
}
