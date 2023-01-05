import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: true,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 25),
        color: Colors.blue,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const <Widget>[
            Card1(),
            SizedBox(
              height: 10,
            ),
            Card2()
          ],
        ),
      ),
    );
  }
}

class Card1 extends StatelessWidget {
  const Card1({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 200,
            width: 500,
            color: const Color.fromRGBO(209, 133, 133, 1),
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
            child: Column(
              children: [
                Row(
                  children: const <Widget>[
                    Expanded(flex: 2, child: GreyBox()),
                    Expanded(
                      flex: 3,
                      child: SizedBox(),
                    )
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                GreenBox()
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class Card2 extends StatelessWidget {
  const Card2({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 200,
                    width: 500,
                    color: const Color.fromRGBO(209, 133, 133, 1),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 30,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [GreenBox(), const SizedBox(height: 50)],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        const Positioned.fill(
            top: 30,
            child: Align(
              alignment: Alignment.topCenter,
              child: GreyBox(
                width: 500,
              ),
            ))
      ],
    );
  }
}

class GreyBox extends StatelessWidget {
  const GreyBox({this.width});
  final double? width;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromRGBO(196, 196, 196, 1),
      height: 50,
      width: width,
    );
  }
}

class GreenBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 20,
          child: Container(
            color: const Color.fromRGBO(168, 216, 173, 1),
            height: 50,
          ),
        ),
        const Expanded(
          flex: 1,
          child: SizedBox(),
        )
      ],
    );
  }
}
