import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Random random = Random();
  int x = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue.shade200,
          title: Text(
            'Lottary App',
            textAlign: TextAlign.center,
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Text(x.toString()),
            Center(child: Text('Your lottary winning number is 4')),
            //each of the widget accept the turnary operator like
            //Text(x > 5 ? 'X is greater than 5' : x.toString()),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 200,
              decoration: BoxDecoration(
                  color: x == 4
                      ? Colors.green.shade100
                      : Colors.grey.withOpacity(.3),
                  borderRadius: BorderRadius.circular(20)),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: x == 4
                    ? Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.done_all,
                            color: Colors.green,
                            size: 35,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            'Congrats u won the lottary your number is $x',
                            textAlign: TextAlign.center,
                          )
                        ],
                      )
                    : Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.error,
                            color: Colors.red,
                            size: 35,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            'Better luck next time number is $x \n try again',
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
              ),
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // print(random.nextInt(20).toString());
            x = random.nextInt(20);
            print(x);
            setState(() {});
          },
          child: //Icon(x < 5 ? Icons.padding : Icons.refresh)
              Icon(Icons.refresh),
        ),
      ),
    );
  }
}
