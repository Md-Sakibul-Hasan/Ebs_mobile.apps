import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';

import 'Components/MyIcons.dart';


import 'Components/Mytextfield.dat.dart';
import 'Components/bound.dart';
import 'Components/mybutton.dart';


class Call_Log extends StatefulWidget {
     Call_Log({super.key});

  @override
  State<Call_Log> createState() => _Call_LogState();
}

class _Call_LogState extends State<Call_Log> {
  int index=1;
  int index1=1;
  String? selectedA;
  @override
  void initState() {
    // TODO: implement initState
    print("$selectedA");
    super.initState();
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.indigo),
        centerTitle: true,
        title: Text(
          "Call Log",
          style: TextStyle(
            color: Colors.indigo,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),

      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          padding: EdgeInsets.all(15),
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [

              Row(
                mainAxisAlignment: MainAxisAlignment.start,

                children: [
                  MyIcon(customicon: Icons.phone,),
                  SizedBox(width: 15,),
                  InkWell(
                    onTap: (){
                      setState(() {
                        index=1;
                        print("object $index");
                      });
                    },
                    // child: Container(
                    //     height: 20,
                    //     width: 100,
                    //     decoration: BoxDecoration(
                    //       borderRadius: BorderRadius.horizontal(left: Radius.circular(25),right: Radius.circular(25)),
                    //       border: Border.all(width:1,color: Colors.grey.shade400),
                    //       color: index==1?Colors.indigo:Colors.white,
                    //     ),
                    //     child: Center(child: Text("Inbound",style: TextStyle(color:index==1?Colors.white:Colors.black),))
                    // ),
                    child: Bound(
                      texts: "Inbound",
                      selected: index == 1 ,
                    ),
                  ),
                  SizedBox(width: 70,),
                  InkWell(
                    onTap: (){
                      setState(() {
                        index=2;
                        print("object $index");
                      });
                    },
                    // child: Container(
                    //     height: 20,
                    //     width: 100,
                    //     decoration: BoxDecoration(
                    //       borderRadius: BorderRadius.horizontal(left: Radius.circular(25),right: Radius.circular(25)),
                    //       border: Border.all(width:1,color: Colors.grey.shade400),
                    //       color: index==2?Colors.indigo:Colors.white,
                    //     ),
                    //     child: Center(child: Text("Outbound",style: TextStyle(color: index==2?Colors.white:Colors.black),))
                    // ),
                    child: Bound(
                    texts: "Outbound",
                      selected: index == 2 ,
                  ),
                  )
                ],
              ),
              SizedBox(height: 5,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,

                children: [
                  MyIcon(customicon: Icons.subject,),
                  SizedBox(width: 15,),
                  My_TextField(
                    hinttext: "Subject",
                  )
                ],
              ),
              SizedBox(height: 5,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,

                children: [
                  MyIcon(customicon: Icons.calendar_month,),
                  SizedBox(width: 15,),
                  My_TextField(
                    hinttext: "Start Date And Time",
                  )
                ],
              ),
              SizedBox(height: 5,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,

                children: [
                  MyIcon(customicon: Icons.account_tree_outlined,),
                  SizedBox(width: 15,),
                  // My_TextField(
                  //   hinttext: "Related to",
                  //   suficon: Icons.arrow_drop_down_outlined,
                  // )
                  Container(
                    height: 50,
                    width: 294,
                    child: DropdownSearch(
                      items:['A1','B2','C3','D4','E5','F6'],
                      popupProps: PopupProps.menu(
                        showSearchBox: true,
                      ),
                      dropdownDecoratorProps: DropDownDecoratorProps(
                          dropdownSearchDecoration: InputDecoration(

                            hintText:"Related to",
                          )
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 5,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,

                children: [
                  MyIcon(customicon: Icons.mark_unread_chat_alt_outlined,),
                  SizedBox(width: 15,),
                  My_TextField(
                    hinttext: "Selected related first",
                  )
                ],
              ),
              SizedBox(height: 5,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,

                children: [
                  MyIcon(customicon: Icons.check_box_outlined,),
                  SizedBox(width: 15,),
                  // My_TextField(
                  //   hinttext: "Status",
                  //   suficon: Icons.arrow_drop_down_outlined,
                  // )
                  Container(
                    height: 50,
                    width: 294,
                    child: DropdownSearch(
                      items:['A1','B2','C3','D4','E5','F6'],
                      popupProps: PopupProps.menu(
                        showSearchBox: true,
                      ),
                      dropdownDecoratorProps: DropDownDecoratorProps(
                          dropdownSearchDecoration: InputDecoration(

                            hintText:"Status",
                          )
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 5,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,

                children: [
                  MyIcon(customicon: Icons.phone_in_talk_outlined,),
                  SizedBox(width: 15,),
                  Expanded(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          InkWell(
                            onTap: (){
                              setState(() {
                                index1=1;
                              });
                            },
                            child: Container(
                                height: 20,
                                width: 100,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.horizontal(left: Radius.circular(25),right: Radius.circular(25)),
                                  border: Border.all(width:1,color: Colors.grey.shade400),
                                  color: index1==1?Colors.indigo:Colors.white,
                                ),
                                child: Center(child: Text("Others",style: TextStyle(color:index1==1?Colors.white:Colors.black),))
                            ),
                          ),
                          SizedBox(width: 10,),
                          InkWell(
                            onTap: (){
                              setState(() {
                                index1=2;
                              });
                            },
                            child: Container(
                                height: 20,
                                width: 100,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.horizontal(left: Radius.circular(25),right: Radius.circular(25)),
                                  border: Border.all(width:1,color: Colors.grey.shade400),
                                  color: index1==2?Colors.indigo:Colors.white,
                                ),
                                child: Center(child: Text("Phone Call",style: TextStyle(color:index1==2?Colors.white:Colors.black),))
                            ),
                          ),
                          SizedBox(width: 10,),
                          InkWell(
                            onTap: (){
                              setState(() {
                                index1=3;
                              });
                            },
                            child: Container(
                                height: 20,
                                width: 100,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.horizontal(left: Radius.circular(25),right: Radius.circular(25)),
                                  border: Border.all(width:1,color: Colors.grey.shade400),
                                  color: index1==3?Colors.indigo:Colors.white,
                                ),
                                child: Center(child: Text("Social Media",style: TextStyle(color:index1==3?Colors.white:Colors.black),))
                            ),
                          ),
                        ],
                      ),
                    ),
                  )

                ],
              ),
              SizedBox(height: 5,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,

                children: [
                  MyIcon(customicon: Icons.person_outline,),
                  SizedBox(width: 15,),
                  Container(
                    height: 70,
                    width: 294,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        DropdownSearch(
                          onChanged: (value) {

                            selectedA=value;
                            print("$selectedA");
                            setState(() {

                            });
                          },
                          items:['A1','B2','C3','D4','E5','F6'],
                          popupProps: PopupProps.menu(
                              showSearchBox: true,
                          ),
                          dropdownDecoratorProps: DropDownDecoratorProps(
                              dropdownSearchDecoration: InputDecoration(
                                 border: InputBorder.none,
                                 hintText:"Assign to",
                              )
                          ),
                        ),
                        Visibility(
                            visible: selectedA==null?false:true,
                            child: Text("Assign To")),
                        SizedBox(height: 5,),
                        Container(
                          width: 294,
                          height: 1,
                          color: Colors.grey,
                        )
                      ],
                    ),
                  ),

                ],
              ),



              SizedBox(height: 5,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,

                children: [
                  MyIcon(customicon: Icons.access_time_outlined,),
                  SizedBox(width: 15,),
                  My_TextField(
                    hinttext: "Duration",
                  )
                ],
              ),
              SizedBox(height: 5,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,

                children: [
                  MyIcon(customicon: Icons.description_outlined,),
                  SizedBox(width: 15,),
                  My_TextField(
                    hinttext: "Description",
                  ),

                ],
              ),
              SizedBox(height: 10,),
              My_Button(),

            ],
          ),
        ),
      ),

    );
  }
}
