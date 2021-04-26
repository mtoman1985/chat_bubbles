import 'package:flutter/material.dart';
import 'package:chat_bubbles/chat_bubbles.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'chat bubble example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'chat bubble example'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;
  MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              BubbleNormal(
                text: 'bubble normal with tail',
                isSender: false,
                color: Color(0xAF6AD0F5),
                tail: true,
                textStyle: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              BubbleNormal(
                text: 'bubble normal with tail',
                isSender: true,
                color: Color(0xFFE2FFC7),
                tail: true,
                sent: true,
              ),
              BubbleNormal(
                text: 'bubble normal without tail',
                isSender: false,
                color: Color(0xAF6AD0F5),
                tail: false,
                textStyle: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              BubbleNormal(
                text: 'bubble normal without tail',
                color: Color(0xFFE2FFC7),
                tail: false,
                sent: true,
                seen: true,
                delivered: true,
              ),
              BubbleSpecialOne(
                text: 'bubble special one with tail',
                isSender: false,
                color: Color(0xAF6AD0F5),
                textStyle: TextStyle(
                  fontSize: 20,
                  color: Colors.teal,
                ),
              ),
              BubbleSpecialOne(
                text: 'bubble special one with tail',
                color: Color(0xFFE2FFC7),
                seen: true,
              ),
              BubbleSpecialOne(
                text: 'bubble special one without tail',
                isSender: false,
                tail: false,
                color: Color(0xAF6AD0F5),
                textStyle: TextStyle(
                  fontSize: 20,
                  color: Colors.teal,
                ),
              ),
              BubbleSpecialOne(
                text: 'bubble special one without tail',
                tail: false,
                color: Color(0xFFE2FFC7),
                sent: true,
              ),
              BubbleSpecialTwo(
                text: 'bubble special tow with tail',
                isSender: false,
                color: Color(0xAF6AD0F5),
                textStyle: TextStyle(
                  fontSize: 20,
                  color: Colors.red,
                ),
              ),
              BubbleSpecialTwo(
                text: 'bubble special tow with tail',
                isSender: true,
                color: Color(0xFFE2FFC7),
                sent: true,
              ),
              BubbleSpecialTwo(
                text: 'bubble special tow without tail',
                isSender: false,
                tail: false,
                color: Color(0xAF6AD0F5),
                textStyle: TextStyle(
                  fontSize: 20,
                  color: Colors.red,
                ),
              ),
              BubbleSpecialTwo(
                text: 'bubble special tow without tail',
                tail: false,
                color: Color(0xFFE2FFC7),
                delivered: true,
              ),
            ],
          ),
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
