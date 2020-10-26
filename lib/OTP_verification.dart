import 'package:flutter/material.dart';

class OTPVerification extends StatefulWidget {
  const OTPVerification({Key key}) : super(key: key);
  @override
  _OTPVerificationState createState() => _OTPVerificationState();
}

class _OTPVerificationState extends State<OTPVerification> {
  String text = '';

  Widget otpNumberWidget() {
    return Container(
      height: 70,
      width: 70,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.white, width: 0),
        borderRadius: const BorderRadius.all(
          Radius.circular(8),
        ),
      ),
      // child: TextField(
      //   decoration: InputDecoration(
      //     border: InputBorder.none,
      //     focusedBorder: InputBorder.none,
      //     enabledBorder: InputBorder.none,
      //     errorBorder: InputBorder.none,
      //     disabledBorder: InputBorder.none,
      //   ),
      // ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final _height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.network(
              "https://cdn.dribbble.com/users/310381/screenshots/3757943/dribbble-illustrations.png",
              height: _height * 0.3,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
                  decoration: BoxDecoration(
                      color: Color(0xff14225f),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40.0),
                        topRight: Radius.circular(40.0),
                      )),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 2.0,
                                  width: 48.0,
                                  decoration:
                                      BoxDecoration(color: Colors.white),
                                ),
                                SizedBox(
                                  height: _height * 0.015,
                                ),
                                Container(
                                  child: Text(
                                    "Welcome To,",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 24.0,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: _height * 0.008,
                                ),
                                Container(
                                  child: Text(
                                    "Kailer",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 28.0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Spacer(),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  child: Text(
                                    'OTP Verification',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 26,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: _height * 0.02,
                                ),
                                Container(
                                  constraints:
                                      const BoxConstraints(maxWidth: 500),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      otpNumberWidget(),
                                      SizedBox(
                                        width: 16.0,
                                      ),
                                      otpNumberWidget(),
                                      SizedBox(
                                        width: 16.0,
                                      ),
                                      otpNumberWidget(),
                                      SizedBox(
                                        width: 16.0,
                                      ),
                                      otpNumberWidget(),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Spacer(),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  child: Text(
                                    'Didn\'t receive an OTP?',
                                    style: TextStyle(
                                      color: Colors.white.withOpacity(0.6),
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: _height * 0.01,
                                ),
                                Container(
                                  child: Text(
                                    'Resend OTP',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20.0,
                                      decoration: TextDecoration.underline,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
