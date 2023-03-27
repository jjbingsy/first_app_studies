import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

//Continue on 30.
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Title Bar App"),
        ),
        body: Column(
          children: [
            Text("The questions!"),
            ElevatedButton(
              onPressed: () => debugPrint("pressed"),
              child: Text("press"),
            ),
          ],
        ),
      ),
    );
  }
}
