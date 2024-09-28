import 'package:appvoley2/Court.dart';
import 'package:appvoley2/SecondaryButton.dart';
import 'package:appvoley2/SideColumn.dart';
import 'package:appvoley2/Times.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.landscapeLeft,
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo', debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true, 
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
      backgroundColor: Color(0xff00ADC3),
      body: Row(
          children: [
            Flexible(
              flex: 1,
              child: SideColumn(isLeft: true),
            ),
            Flexible(
              flex: 2,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround, 
                    children: [
                      Times(aOrB: 'A', timeName: 'Ziraldos'),
                      Times(aOrB: 'B', timeName: 'Autoconvidados'),
                    ],
                  ),
                  Court(),
                  SizedBox(height: 10), 
                  Text(
                    'Tempo de jogo: 1:14´00´´', 
                    style: TextStyle(
                      fontSize: 20, 
                      color: Colors.white, 
                      fontFamily: 'ConcertOne',
                    ),
                  ),
                  SizedBox(height: 10), 
                  SecondaryButton(),
                ],
              ),
            ),
            Flexible(
              flex: 1,
              child: SideColumn(isLeft: false),
            ),
          ],
        ),
      ),
    );
  }
}