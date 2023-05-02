import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var weightController = TextEditingController();
  var ftController = TextEditingController();
  var inController = TextEditingController();

  bool isMale = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BMI Calculator"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'BMI',
              style: TextStyle(
                fontSize: 34,
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
              controller: weightController,
              decoration: InputDecoration(
                label: Text('Enter your weight (in kg)'),
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(
              height: 15,
            ),
            TextField(
              controller: ftController,
              decoration: InputDecoration(
                label: Text('Enter your weight (in feet)'),
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(
              height: 15,
            ),
            TextField(
              controller: inController,
              decoration: InputDecoration(
                label: Text('Enter your weight (in inch)'),
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                "Calculate",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
