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
  // This widget is the root of your application.
  Random random= Random();
  int x = 0;
int y=0;
  @override
  Widget build(BuildContext context) {


    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Center(
            child: Text(
          'Lottery App',
          style: TextStyle(color: Colors.white),
        )),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Text(
                'Lotter winning number is $y',
                style: const TextStyle(color: Colors.grey, fontSize: 20),
              ),
            ),
            Container(
              height: 200,
              width: 300,

              decoration:   BoxDecoration(
                color: Colors.blue.withOpacity(0.4),
              ),
              child: x==y?  const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.done,color: Colors.green,size: 35,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [

                      Text('Conradulations!!!',style: TextStyle(color: Colors.green,fontSize: 20),),
                      Text('You won the lottery'),
                    ],
                  )


                ],
              ):Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Icon(Icons.error,color: Colors.red,size: 35,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('Better luck next time, your number is $x'),
                      Text('Try Again',style: TextStyle(color: Colors.red,fontSize: 20),),

                    ],
                  )


                ],
              )
            )
          ]
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        onPressed: () {

          x=random.nextInt(10);
          print(x);
          y=random.nextInt(10);
          print(x);
          setState(() {

          });
        },
        child:  const Icon(
          Icons.refresh,
          color: Colors.white,
        ),
      ),
    ));
  }
}
