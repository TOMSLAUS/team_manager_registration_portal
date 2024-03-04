import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EventSignUpWindow extends StatefulWidget {
  const EventSignUpWindow({Key? key}) : super(key: key);

  @override
  State<EventSignUpWindow> createState() => _EventSignUpWindowState();
}

class _EventSignUpWindowState extends State<EventSignUpWindow> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        leading: Container(height: 50,  width: 50, color: Colors.green,),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(),
          ],
        ),
      ),
    );
  }
}
