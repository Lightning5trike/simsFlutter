import 'package:flutter/material.dart';
import 'SleepScreen.dart';
import 'food.dart';
import 'water.dart';
import 'social.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      appBar: AppBar(
        elevation: 4,
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xff21c12e),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,
        ),
        title: Text(
          "Simify",
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.normal,
            fontSize: 20,
            color: Color(0xff000000),
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Color(0xff212435),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 0, horizontal: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                      child:

                          ///***If you have exported images you must have to copy those images in assets/images directory.
                          Image(
                        image: NetworkImage(
                            "data:image/jpeg;base64,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"),
                        height: 100,
                        width: 100,
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 7, 0, 25),
                      child: Text(
                        "Name",
                        textAlign: TextAlign.start,
                        overflow: TextOverflow.clip,
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                          fontSize: 18,
                          color: Color(0xff000000),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(0),
                      padding: EdgeInsets.all(0),
                      width: 260,
                      height: 78,
                      decoration: BoxDecoration(
                        color: Color(0x00000000),
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.zero,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                "Sleep",
                                textAlign: TextAlign.start,
                                overflow: TextOverflow.clip,
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontStyle: FontStyle.normal,
                                  fontSize: 16,
                                  color: Color(0xff000000),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(172, 0, 0, 0),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: IconButton(
                                    icon: Icon(Icons.arrow_forward_ios),
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  SleepScreen()));
                                    },
                                    color: Color(0xff212435),
                                    iconSize: 15,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          LinearProgressIndicator(
                              backgroundColor: Color(0xff808080),
                              valueColor: new AlwaysStoppedAnimation<Color>(
                                  Color(0xff3a57e8)),
                              value: 0.5,
                              minHeight: 35),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(0),
                      padding: EdgeInsets.all(0),
                      width: 260,
                      height: 78,
                      decoration: BoxDecoration(
                        color: Color(0x00000000),
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.zero,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                "Food",
                                textAlign: TextAlign.start,
                                overflow: TextOverflow.clip,
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontStyle: FontStyle.normal,
                                  fontSize: 16,
                                  color: Color(0xff000000),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(177, 0, 0, 0),
                                child: IconButton(
                                  icon: Icon(Icons.arrow_forward_ios),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => food()));
                                  },
                                  color: Color(0xff212435),
                                  iconSize: 15,
                                ),
                              ),
                            ],
                          ),
                          LinearProgressIndicator(
                              backgroundColor: Color(0xff808080),
                              valueColor: new AlwaysStoppedAnimation<Color>(
                                  Color(0xff3a57e8)),
                              value: 0.5,
                              minHeight: 35),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(0),
                      padding: EdgeInsets.all(0),
                      width: 260,
                      height: 78,
                      decoration: BoxDecoration(
                        color: Color(0x00000000),
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.zero,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                "Water",
                                textAlign: TextAlign.start,
                                overflow: TextOverflow.clip,
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontStyle: FontStyle.normal,
                                  fontSize: 16,
                                  color: Color(0xff000000),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(170, 0, 0, 0),
                                child: IconButton(
                                  icon: Icon(Icons.arrow_forward_ios),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => water()));
                                  },
                                  color: Color(0xff212435),
                                  iconSize: 15,
                                ),
                              ),
                            ],
                          ),
                          LinearProgressIndicator(
                              backgroundColor: Color(0xff808080),
                              valueColor: new AlwaysStoppedAnimation<Color>(
                                  Color(0xff3a57e8)),
                              value: 0.5,
                              minHeight: 35),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(0),
                      padding: EdgeInsets.all(0),
                      width: 260,
                      height: 78,
                      decoration: BoxDecoration(
                        color: Color(0x00000000),
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.zero,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                "Social",
                                textAlign: TextAlign.start,
                                overflow: TextOverflow.clip,
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontStyle: FontStyle.normal,
                                  fontSize: 16,
                                  color: Color(0xff000000),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(168, 0, 0, 0),
                                child: IconButton(
                                  icon: Icon(Icons.arrow_forward_ios),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => social()));
                                  },
                                  color: Color(0xff212435),
                                  iconSize: 15,
                                ),
                              ),
                            ],
                          ),
                          LinearProgressIndicator(
                              backgroundColor: Color(0xff808080),
                              valueColor: new AlwaysStoppedAnimation<Color>(
                                  Color(0xff3a57e8)),
                              value: 0.5,
                              minHeight: 35),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
