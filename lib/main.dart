import 'package:flutter/material.dart';
import './widgets/drop_down.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color mainColor = Color(0xFF212936);
  Color secondColor = Color(0xFF2849E5);
  List<String> currencies;
  String from;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      // ignore: prefer_const_constructors
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 18.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 200.0,
              child: Text(
                'Currency Converter',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Expanded(
                child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextField(
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        labelText: "Input calue to convert",
                        labelStyle: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 18.0,
                          color: secondColor,
                        )),
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  // Row(
                  //   children: [customDropDown(currencies, from, (from) {})],
                  // ),
                ],
              ),
            ))
          ],
        ),
      )),
    );
  }
}
