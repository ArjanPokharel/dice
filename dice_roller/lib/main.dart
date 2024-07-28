import 'dart:math';

import 'package:flutter/material.dart';

void main()=>runApp(const MaterialApp(
  debugShowCheckedModeBanner: false,
  title: "Dice App",
  home: HomePage(),
));

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
   int dicenumber = 1;

   changeDice(){
    setState(() {
      dicenumber = Random().nextInt(6)+1;
    });


   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dice Roller"),
        centerTitle: true,
      ),
      body: Column(children: [
        const SizedBox(height: 20),
        Center(child: Image.asset("assets/$dicenumber.png", height: 250, width: 250,)),
        MaterialButton(
          color: Colors.blue,
          onPressed: changeDice,
        child: const Text("Roll", style: TextStyle(color: Colors.white),),
        ),
        const SizedBox(height: 70),
        const Text("flutterwithARJAN", style: TextStyle(fontWeight: FontWeight.bold),),
      ]),
    );
  }
}