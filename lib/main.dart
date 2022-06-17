import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(Dice_roll());
}

class Dice_roll extends StatelessWidget {
  const Dice_roll({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Dice",
      home: Ludo(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Ludo extends StatefulWidget {
  const Ludo({Key? key}) : super(key: key);

  @override
  State<Ludo> createState() => _LudoState();
}

class _LudoState extends State<Ludo> {
  int dicenum = 1;

  changeDice() {
    setState(() {
      dicenum = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Roll the Dice"),
        backgroundColor: Colors.red,    
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Image.asset(
              'assets/$dicenum.jpg',
              height: 150,
              width: 150,
            ),
            SizedBox(height: 50,),
            RawMaterialButton(
              onPressed: changeDice,
              fillColor: Colors.red,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              constraints: BoxConstraints.tight(Size(200, 50)),
              elevation: 7,

              child: Text(
                "Roll",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
