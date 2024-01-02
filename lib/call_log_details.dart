import 'package:flutter/material.dart';

import 'MyText.dart';

class Call_Log_Details extends StatelessWidget {
  const Call_Log_Details({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.indigo),
        centerTitle: true,
        title: Text(
          "Call Log Details",
          style: TextStyle(
            color: Colors.indigo,
            fontWeight: FontWeight.bold,
          ),
        ),

        // toolbarOpacity: 0,
        elevation: 0,
        // toolbarHeight: 80,
        backgroundColor: Colors.white,
      ),
      body: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  "Business Automation Ltd (EBS Mobile Apps)",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              SizedBox(
                height: 25,
              ),

              Expanded(
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MyText(
                          text1: "Inbound",
                          text2: "Call Type",
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        MyText(
                          text1: "02 Nov 2023 (10:30 Min)",
                          text2: "Start Date & Duration",
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        MyText(
                          text1: "Planned",
                          text2: "Status",
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        MyText(
                          text1: "Tahsina Sabrin",
                          text2: "Assigned To",
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        MyText(
                          text1: "Standard Charted Bank Ltd (Account)",
                          text2: "Related to",
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        MyText(
                          text1: "Task testing",
                          text2: "Related Value",
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        MyText(
                          text1: "Testing EBS app monday release",
                          text2: "Description",
                        ),
                        SizedBox(
                          height: 15,
                        ),

                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Column(

                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Tahsina Sabrin",style: TextStyle(fontStyle: FontStyle.italic),),
                          Text("Logged at: 11 Dec 2023, 10:09 AM",style: TextStyle(fontStyle: FontStyle.italic),)
                        ],
                      ),
                    ),

                    SizedBox(height: 20,)
                  ],


                ),
              ),

              SizedBox(height: 50,)
            ],
          ),
        ),
      ),



      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(20),
                topLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
                bottomLeft: Radius.circular(20))),
        elevation:0,
        child: Icon(Icons.note_alt_outlined),
        onPressed: () {},
        backgroundColor: Colors.indigo,
      ),
    );
  }
}
