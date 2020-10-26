import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  void _openModalBottomSheet({BuildContext context}) {
    showModalBottomSheet(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40.0), topRight: Radius.circular(40.0)),
      ),
      elevation: 0.0,
      barrierColor: Colors.black87.withOpacity(0.3),
      isScrollControlled: false,
      backgroundColor: Colors.white,
      context: context,
      builder: (context) {
        return StatefulBuilder(
          builder: (context, setState) {
            return Container(
              height: MediaQuery.of(context).size.height * 0.4,
              decoration: BoxDecoration(
                color: Color(0xff14225f),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 35.0),
                child: Container(
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                            size: 28.0,
                          ),
                          Icon(
                            Icons.close,
                            color: Colors.white,
                            size: 28.0,
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 60.0),
                        alignment: Alignment.center,
                        child: RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                            text: 'Don\'t Worry! We\n',
                            style:
                                TextStyle(color: Colors.white, fontSize: 28.0),
                            children: <TextSpan>[
                              TextSpan(
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(text: 'never post anything\n'),
                              TextSpan(text: 'to facebook'),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }

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
      body: Center(
        child: MaterialButton(
          onPressed: () {
            _openModalBottomSheet(context: context);
          },
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
          child: Text(
            'BUTTON',
            style: TextStyle(color: Colors.white),
          ),
          color: Color(0xff6200ee).withOpacity(0.8),
        ),
      ),
    );
  }
}
