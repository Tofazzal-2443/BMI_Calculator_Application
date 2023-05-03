import 'package:bmi_calculator/models/bmi_data_generator.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({Key? key}) : super(key: key);
  static const String routeName = '/resultPage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Result"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                "Your BMI is",
                style: TextStyle(
                  fontSize: 34,
                ),
              ),
              CircularPercentIndicator(
                radius: 90.0,
                lineWidth: 25.0,
                animation: true,
                percent: 0.7,
                progressColor: Colors.deepOrange,
                center: new Text(
                  "70.0 kg/m²",
                  style: new TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    color: Colors.deepOrange,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Your are: ",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    "Normal",
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Category",
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.blue,
                    ),
                  ),
                  Text(
                    "(kg/m²)",
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
              ...List.generate(
                BmiDataGenerator.bmiTableMap.length,
                (index) => ListTile(
                  title:
                      Text(BmiDataGenerator.bmiTableMap.keys.toList()[index]),
                  trailing: Text(
                      BmiDataGenerator.bmiTableMap.values.toList()[index]
                  ),

                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
