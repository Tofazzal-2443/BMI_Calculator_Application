import 'package:bmi_calculator/models/bmi_data_generator.dart';
import 'package:bmi_calculator/provider/bmi_provider.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({Key? key}) : super(key: key);
  static const String routeName = '/resultPage';

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<BmiProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text("Result", style: TextStyle(fontSize: 30),),
        centerTitle: true,
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
                percent: (provider.bmi /100),
                progressColor: Colors.deepOrange,
                center: new Text(
                  "${provider.bmi.toStringAsFixed(2)} kg/m²",
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
                    "${BmiDataGenerator.generateStatus(provider.bmi)}",
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.deepOrange,
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
                      color: Colors.deepOrange,
                    ),
                  ),
                  Text(
                    "(kg/m²)",
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.deepOrange,
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
                  tileColor: BmiDataGenerator.generateStatus(provider.bmi) ==
                      BmiDataGenerator.bmiTableMap.keys.toList()[index]
                      ? Colors.deepOrange
                      : null,
                  textColor: BmiDataGenerator.generateStatus(provider.bmi) ==
                      BmiDataGenerator.bmiTableMap.keys.toList()[index]
                      ? Colors.white
                      : null,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
