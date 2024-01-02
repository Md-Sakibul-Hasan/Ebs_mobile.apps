import 'package:flutter/material.dart';

import 'MyText.dart';

class Log_hour extends StatelessWidget {
  const Log_hour({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.indigo),
        centerTitle: true,
        title: Text(
          "Log Hour",
          style: TextStyle(
            color: Colors.indigo,
            fontWeight: FontWeight.bold,
          ),
        ),


        elevation: 0,
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
                          text1: "EBS Mobile Apps",
                          text2: "Milestone",
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        MyText(
                          text1: "UI & UX Design & Modification",
                          text2: "task",
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        MyText(
                          text1: "Meeting",
                          text2: "Task Type",
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        MyText(
                          text1: "OnSite",
                          text2: "Support Type",
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        MyText(
                          text1: "10 Dec 2023",
                          text2: "Date Of work",
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        MyText(
                          text1: "01.00",
                          text2: "Duration",
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        MyText(
                          text1: "Daily work update",
                          text2: "Description Of Task",
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        MyText(
                          text1: "Daily work update",
                          text2: "New/Modification",
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        MyText(
                          text1: "Low",
                          text2: "Difficulties Level",
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
                          Text("Md. Sakibul Hasan",style: TextStyle(fontStyle: FontStyle.italic),),
                          Text("Logged at: 24 Dec 2023, 11:00 AM",style: TextStyle(fontStyle: FontStyle.italic),)
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