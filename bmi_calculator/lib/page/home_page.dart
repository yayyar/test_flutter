import 'package:bmi_calculator/calculator_brain.dart';
import 'package:bmi_calculator/component/bottom_button.dart';
import 'package:bmi_calculator/component/custom_card.dart';
import 'package:bmi_calculator/component/height_componetn.dart';
import 'package:bmi_calculator/component/icon_content.dart';
import 'package:bmi_calculator/component/weight_age_component.dart';
import 'package:bmi_calculator/constant/gender.dart';
import 'package:bmi_calculator/constant/style_constant.dart';
import 'package:bmi_calculator/page/result_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Gender? selectedGender;
  int height = 180;
  int weight = 60;
  int age = 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
        centerTitle: true,
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        Expanded(
            child: Row(
          children: [
            Expanded(
                child: CustomCard(
              onTap: () {
                setState(() {
                  selectedGender = Gender.male;
                });
              },
              child:
                  const IconContent(icon: FontAwesomeIcons.mars, label: 'MALE'),
              color: selectedGender == Gender.male
                  ? kActiveCardColour
                  : kInactiveCardColour,
            )),
            Expanded(
                child: CustomCard(
              onTap: () {
                setState(() {
                  selectedGender = Gender.female;
                });
              },
              child: const IconContent(
                  icon: FontAwesomeIcons.venus, label: 'FEMALE'),
              color: selectedGender == Gender.female
                  ? kActiveCardColour
                  : kInactiveCardColour,
            ))
          ],
        )),
        Expanded(
            child: CustomCard(
          color: kActiveCardColour,
          child: HeightComponent(
              height: height,
              onChaged: (double newValue) {
                setState(() {
                  height = newValue.round();
                });
              }),
        )),
        Expanded(
            child: Row(
          children: [
            Expanded(
                child: CustomCard(
              color: kActiveCardColour,
              child: WeightAgeComponent(
                  title: 'WEIGHT',
                  unit: 'kg',
                  value: weight,
                  increaseCount: () => {
                        setState(() {
                          weight++;
                        })
                      },
                  decreaseCount: () => {
                        setState(() {
                          weight--;
                        })
                      }),
            )),
            Expanded(
                child: CustomCard(
              color: kActiveCardColour,
              child: WeightAgeComponent(
                  title: 'AGE',
                  value: age,
                  increaseCount: () => {
                        setState(() {
                          age++;
                        })
                      },
                  decreaseCount: () => {
                        setState(() {
                          age--;
                        })
                      }),
            ))
          ],
        )),
        BottomButton(
            buttonTitle: 'CALCULATE',
            onTap: () {
              // Gender gender = selectedGender ?? Gender.male;
              CalculatorBrain calculatorBrain =
                  CalculatorBrain(height: height, weight: weight);
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ResultsPage(
                            bmiResult: calculatorBrain.calculateBMI(),
                            resultText: calculatorBrain.getResult(),
                            interpretation: calculatorBrain.getInterpretation(),
                          )));
            })
      ]),
    );
  }
}
