import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback _onPressed;
  final String _answer;

  const Answer(this._onPressed, this._answer, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: _onPressed,
        style: const ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(Colors.blue),
        ),
        child: Text(_answer),
      ),
    );
  }
}
