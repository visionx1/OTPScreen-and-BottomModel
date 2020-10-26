import 'package:flutter/material.dart';
import 'package:myDemo/OTP_verification.dart';

import 'home.dart';

class NavigateScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Demo Page",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color(0xff6200ee),
        elevation: 0.0,
        centerTitle: true,
      ),
      body: Column(
        children: [
          MaterialButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Home()),
              );
            },
            child: Text('screen1'),
          ),
          MaterialButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => OTPVerification()),
              );
            },
            child: Text('screen2'),
          )
        ],
      ),
    );
  }
}
