import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int incrementValue = 0;
  int decrementValue = 0;
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: InkWell(
                    onTap: () {
                      onContainerPressed(true);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.blueGrey,
                          borderRadius: BorderRadius.circular(20)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            incrementValue.toString(),
                            style: const TextStyle(
                                fontSize: 36.0, color: Colors.white),
                          ),
                        ],
                      ),
                    )),
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      decrementValue = 0;
                      incrementValue = 0;
                      counter = 0;
                    });
                  },
                  child: const Text('Zero')),
              Expanded(
                child: InkWell(
                    onTap: () {
                      onContainerPressed(false);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.blueGrey,
                          borderRadius: BorderRadius.circular(20)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            decrementValue.toString(),
                            style: const TextStyle(
                                color: Colors.white, fontSize: 36.0),
                          ),
                        ],
                      ),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }

  onContainerPressed(bool isIncrement) {
    if (isIncrement) {
      counter++;
      setState(() {
        incrementValue = counter;
      });
    } else {
      counter--;
      setState(() {
        decrementValue = counter;
      });
    }
  }
}
