import 'package:flutter/material.dart';
import 'call_log.dart';
import 'call_log_details.dart';
import 'log_hour.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "EBS Mobile Apps",
      home: Call_Log(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {

    ButtonStyle buttonStyle=ElevatedButton.styleFrom(

        padding: EdgeInsets.all(35),
        backgroundColor: Colors.indigo.shade700,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20))
        )

    );

    return Scaffold(

      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(45.0),
          child: Container(
            height: 300,
            width: 300,

            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Log_hour()));
                }, child: Text("Log Hour            "),style: buttonStyle,),
                SizedBox(height: 20,),
                ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Call_Log_Details()));
                }, child: Text("Call Log Details"), style:buttonStyle),
                SizedBox(height: 20,),
                ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Call_Log()));
                }, child: Text("Call Log             "), style:buttonStyle),
              ],
            ),
          ),
        ),
      ),

    );
  }
}
