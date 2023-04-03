import 'package:flutter/material.dart';
//import 'package:flutter/src/foundation/key.dart';
//import 'package:flutter/src/widgets/framework.dart';
//import 'package:flutter/src/widgets/placeholder.dart';

class Questions extends StatelessWidget {
  final String questionText;
  //const Questions({Key key}) : super(key: key);
  const Questions(this.questionText, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(20),
      child: Text(
        questionText,
        style: const TextStyle(fontSize: 23),
        textAlign: TextAlign.center,
      ),
    );
  }
}
