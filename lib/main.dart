import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
          title: Text('Dice'),
          backgroundColor: Colors.green,
        ),
        body: DicePage(),
      ),
    ),
  );
}


class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftdicenumber = 1;
  int rightdicenumber=1;

  // void button_pressed(rightdicenumber,leftdicenumber)
  // {
  //   leftdicenumber = Random().nextInt(6)+1; //generates random integer from 0 to nextint-1
  //   rightdicenumber= Random().nextInt(6)+1;
  // }

  void button_pressed()
  {
    setState(() {
      leftdicenumber = Random().nextInt(6)+1; //generates random integer from 0 to nextint-1
      rightdicenumber= Random().nextInt(6)+1;
    });

  }

  @override
  Widget build(BuildContext context) {

    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                button_pressed();
              },
              child: Image.asset('image/dice$leftdicenumber.png'),
            ),
          ),
          Expanded(
            // flex: 2,
            child: TextButton(
              child: Image.asset('image/dice$rightdicenumber.png'),
              onPressed: () {
                button_pressed();
              },
            ),
          ),
        ],
      ),
    );
  }
}





// class DicePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     var leftdicenumber=5;
//     return Center(
//       child: Row(
//         children: [
//           Expanded(
//             // flex: 4,  //used to comparitive resize the image wrt the other flex declared images
//
//             child: TextButton(child: Image.asset('image/dice$leftdicenumber.png'),onPressed: (){
//               print('Left Dice Pressed');
//             },),
//               //can also use child: image.asset('image/dice1.png')
//             ),
//
//           Expanded(
//             // flex: 2,
//             child:
//               TextButton(child: Image.asset('image/dice2.png'), onPressed: (){
//                 print('Right Dice Pressed');
//               },),
//             ),
//         ],
//       ),
//     );
//   }
// }