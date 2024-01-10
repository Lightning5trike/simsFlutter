///File download from FlutterViz- Drag and drop a tools. For more details visit https://flutterviz.io/

import 'package:flutter/material.dart';

class food extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      appBar: AppBar(
        elevation: 4,
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xff18af28),
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
          onPressed: (){
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(16, 50, 16, 195),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 60),
              child: Align(
                alignment: Alignment.center,
                child: LinearProgressIndicator(
                    backgroundColor: Color(0xff808080),
                    valueColor:
                    new AlwaysStoppedAnimation<Color>(Color(0xff3a57e8)),
                    value: 0.5,
                    minHeight: 45),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                margin: EdgeInsets.all(0),
                padding: EdgeInsets.all(0),
                width: 200,
                height: 100,
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
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 20, 0, 10),
                      child: Text(
                        "Type of Food:",
                        textAlign: TextAlign.start,
                        overflow: TextOverflow.clip,
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                          fontSize: 20,
                          color: Color(0xff000000),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        margin: EdgeInsets.all(0),
                        padding: EdgeInsets.all(0),
                        width: 150,
                        height: 100,
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
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 20, 0, 10),
                              child: MaterialButton(
                                onPressed: () {},
                                color: Color(0xffffffff),
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.zero,
                                  side: BorderSide(
                                      color: Color(0xff808080), width: 1),
                                ),
                                padding: EdgeInsets.all(16),
                                child: Text(
                                  "Full Meal",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    fontStyle: FontStyle.normal,
                                  ),
                                ),
                                textColor: Color(0xff000000),
                                height: 40,
                                minWidth: 140,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                              child: MaterialButton(
                                onPressed: () {},
                                color: Color(0xffffffff),
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.zero,
                                  side: BorderSide(
                                      color: Color(0xff808080), width: 1),
                                ),
                                padding: EdgeInsets.all(16),
                                child: Text(
                                  "Snack",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    fontStyle: FontStyle.normal,
                                  ),
                                ),
                                textColor: Color(0xff000000),
                                height: 40,
                                minWidth: 140,
                              ),
                            ),
                            MaterialButton(
                              onPressed: () {},
                              color: Color(0xff0fb821),
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.zero,
                                side: BorderSide(
                                    color: Color(0xff057a0f), width: 1),
                              ),
                              padding: EdgeInsets.all(16),
                              child: Text(
                                "submit",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  fontStyle: FontStyle.normal,
                                ),
                              ),
                              textColor: Color(0xff000000),
                              height: 40,
                              minWidth: 160,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
