import 'package:calclutor/bmi/controller.dart';
import 'package:calclutor/result/view.dart';
import 'package:flutter/material.dart';

class BmiScreen extends StatefulWidget {
  @override
  _BmiScreenState createState() => _BmiScreenState();
}

class _BmiScreenState extends State<BmiScreen> {
  final controller = BmiController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent.withOpacity(0.6),
        title: Text('BMI Calculator'),
        centerTitle: true,
      ),
      body: Container(
        child: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    children: [
                      Expanded(
                          child: InkWell(
                        onTap: () {
                          controller.isSelected = true;
                          setState(() {});
                        },
                        child: Card(
                          color: controller.isSelected
                              ? Colors.blue
                              : Colors.grey[400],
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/images/male.png',
                                height: 80,
                                width: 80,
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                'Male',
                                style: TextStyle(fontSize: 20),
                              ),
                            ],
                          ),
                        ),
                      )),
                      SizedBox(
                        width: 15,
                      ),
                      Expanded(
                          child: InkWell(
                        onTap: () {
                          controller.isSelected = false;

                          setState(() {});
                        },
                        child: Card(
                          color: controller.isSelected
                              ? Colors.grey[400]
                              : Colors.blue,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/images/female.png',
                                height: 80,
                                width: 80,
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                'Female',
                                style: TextStyle(fontSize: 20),
                              ),
                            ],
                          ),
                        ),
                      )),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Card(
                    color: Colors.grey[400],
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Height',
                          style: TextStyle(fontSize: 30),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '${controller.height.round()}',
                              style: TextStyle(
                                  fontSize: 35, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Cm',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Slider(
                          onChanged: (value) {
                            controller.height = value;
                            setState(() {});
                          },
                          value: controller.height,
                          max: 230,
                          min: 80,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      children: [
                        Expanded(
                            child: Card(
                          color: Colors.grey[400],
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Age',
                                style: TextStyle(fontSize: 30),
                              ),
                              Text(
                                '${controller.age}',
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.bold),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  FloatingActionButton(
                                    heroTag: 'remove 1',

                                    onPressed: () {
                                      controller.minus();
                                      setState(() {});
                                    },
                                    backgroundColor:
                                        Colors.pinkAccent.withOpacity(0.6),
                                    child: Icon(Icons.remove),
                                    mini: true,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  FloatingActionButton(
                                    heroTag: 'add 1',
                                    onPressed: () {
                                      controller.plus();
                                      setState(() {});
                                    },
                                    backgroundColor:
                                        Colors.pinkAccent.withOpacity(0.6),
                                    child: Icon(Icons.add),
                                    mini: true,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )),
                        SizedBox(
                          width: 15,
                        ),
                        Expanded(
                            child: Card(
                          color: Colors.grey[400],
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Weight',
                                style: TextStyle(fontSize: 30),
                              ),
                              Text(
                                '${controller.weight}',
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.bold),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  FloatingActionButton(
                                    onPressed: () {
                                      controller.minusW();
                                      setState(() {});
                                    },
                                    backgroundColor:
                                        Colors.pinkAccent.withOpacity(0.6),
                                    child: Icon(Icons.remove),
                                    heroTag: 'remove',

                                    mini: true,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  FloatingActionButton(
                                    onPressed: () {
                                      controller.plusW();
                                      setState(() {});
                                    },
                                    heroTag: 'add',
                                    backgroundColor:
                                        Colors.pinkAccent.withOpacity(0.6),
                                    child: Icon(Icons.add),
                                    mini: true,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                  color: Colors.pinkAccent.withOpacity(0.6),
                  width: double.infinity,
                  child: MaterialButton(
                    onPressed: () {
                      controller.navigateTo(
                          page: ResultScreen(
                            value: controller.height.round(),
                            age: controller.age,
                            isSelected: controller.isSelected,
                            weight: controller.weight,
                          ),
                          context: context);
                      setState(() {});
                    },
                    child: Text(
                      'Calculate',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
