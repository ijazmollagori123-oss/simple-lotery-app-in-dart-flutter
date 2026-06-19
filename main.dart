import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Random random=Random();
  int x =0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('lotery app'),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Column(mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          Center(child: Text('Lottery wining number is 5'),),
            SizedBox(height: 20,),
            Container(height: 250,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(.4),
                borderRadius: BorderRadius.circular(10)
              ),

              child:Padding(
                padding: const EdgeInsets.all(15.0),
                child: x==5?
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.done,color: Colors.green,
                      size: 35,),
                    SizedBox(height: 15,),
                    Text('Conguraltaion you have won the lottry,your number is  $x ',textAlign: TextAlign.center,)

                  ],
                )
                    :
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.error,color: Colors.red,
                      size: 35,),
                    SizedBox(height: 15,),
                    Text('Better luck time your number is $x \ntry again',textAlign: TextAlign.center,)

                  ],
                ),
              ),)

        ],),
     
     floatingActionButton: FloatingActionButton(onPressed: (){
       x=random.nextInt(10);
       print(x);
       setState(() {

       });
     },
       child: Icon(Icons.refresh),
     ), ),
    );
  }
}



