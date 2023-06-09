import 'package:bmi_calculator/pages/result_page.dart';
import 'package:bmi_calculator/provider/bmi_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  static const String routeName = '/homePage';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isMale = true;

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<BmiProvider>(context, listen: false);

    return Scaffold(
      appBar: AppBar(
        title: const Text("BMI Calculator", style: TextStyle(fontSize: 30),),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'BMI',
                style: TextStyle(
                  fontSize: 34,
                  fontWeight: FontWeight.w900,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          isMale = true;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: isMale == true ? Colors.blue : Colors.grey,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        height: 130,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.man,
                              color: Colors.white,
                              size: 70,
                            ),
                            Text(
                              "Male",
                              style: TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          isMale = false;
                        });
                      },
                      child: Container(
                        height: 130,
                        decoration: BoxDecoration(
                          color: isMale == false ? Colors.blue : Colors.grey,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.woman,
                              color: Colors.white,
                              size: 70,
                            ),
                            Text(
                              "Female",
                              style: TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              //weight textfield for number type
              TextField(
                controller: provider.weightController,
                decoration: InputDecoration(
                  label: Text('Enter your weight (in kg)'),
                ),
                keyboardType: TextInputType.number,
                textInputAction: TextInputAction.next,
              ),
              SizedBox(
                height: 15,
              ),
              TextField(
                controller: provider.feetController,
                decoration: InputDecoration(
                  label: Text('Enter your weight (in feet)'),
                ),
                keyboardType: TextInputType.number,
                textInputAction: TextInputAction.next,
              ),
              SizedBox(
                height: 15,
              ),
              TextField(
                controller: provider.inchController,
                decoration: InputDecoration(
                  label: Text('Enter your weight (in inch)'),
                ),
                keyboardType: TextInputType.number,
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  provider.bmiCalculation();
                  Navigator.pushNamed(context, ResultPage.routeName);
                },
                child: Text(
                  "Calculate",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              SizedBox(
                height: 25,
              ),

              ElevatedButton(
                  onPressed: () {
                    provider.clearField();
                  },
                  child: Text(
                    'Clear',
                    style: TextStyle(fontSize: 20),
                  ),),
            ],
          ),
        ),
      ),
    );
  }
}
