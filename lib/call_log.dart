import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';

import 'Components/MyIcons.dart';
import 'Components/Mytextfield.dart';
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
  String? selectedB;
  String? selectedC;
  String? selectedD;

  int hourIndex=0;
  String? count;
   List<String> durationLists = [
    "00:15",
    "00:30",
    "01:00",
    "01:30",
    "02:00",
    "02:30",
    "03:00",
    "03:30",
    "04:00",
    "04:30",
    "05:00",
    "05:30",
    "06:00",
    "06:30",
    "07:00",
    "07:30",
    "08:00",
    "08:30",
    "09:00",
    "09:30",
    "10:00"
  ];
  // String? selectedF;

  @override
  void initState() {
    // TODO: implement initState
    print("$selectedA");
    // selectedF=durationLists[hourIndex];
    //print("$selectedF");
    super.initState();
  }

  void Increment(){
    setState(() {
      if (hourIndex==durationLists.length-1){
        print("$hourIndex");
      }else
        hourIndex ++;
        // selectedF=durationLists[hourIndex];

    });
  }

  void Decrement(){
    setState(() {
      if(hourIndex==0){
        print("$hourIndex");
      }else
        hourIndex --;
        // selectedF=durationLists[hourIndex];
    });
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
                    child: Bound(
                    texts: "Outbound",
                      selected: index == 2 ,
                  ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,

                children: [
                  MyIcon(customicon: Icons.subject,),
                  SizedBox(width: 15,),
                  My_TextField(
                    hinttext: "Subject",
                    subText: "Subject",
                  )

                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.start,

                children: [
                  MyIcon(customicon: Icons.calendar_month,),
                  SizedBox(width: 15,),
                  // My_TextField(
                  //   hinttext: "Start Date And Time",
                  // )
                  Expanded(
                    child: Container(
                      height: 70,
                      width: 500,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          DropdownSearch(
                            onChanged: (value){
                              selectedD=value;
                              setState(() {

                              });
                            },
                            items: ['A1','B2','C3','D4','E5','F6'],
                            popupProps: PopupProps.menu(
                              showSearchBox: true
                            ),
                            dropdownDecoratorProps: DropDownDecoratorProps(
                              dropdownSearchDecoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Start Date And Time",
                              )
                            ),
                          ),
                          Visibility(
                              visible: selectedD==null?false:true,
                              child: Text("Start Date And Time",style: TextStyle(color: Colors.grey.shade600),)
                          ),
                          SizedBox(height: 5,),
                          Container(
                            height: 1,
                            width: 500,
                            color: Colors.grey,
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.start,

                children: [
                  MyIcon(customicon: Icons.account_tree_outlined,),
                  SizedBox(width: 15,),
                  // My_TextField(
                  //   hinttext: "Related to",
                  //   suficon: Icons.arrow_drop_down_outlined,
                  // )
                  Expanded(
                    child: Container(
                      height: 70,
                      width: 500,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          DropdownSearch(
                            onChanged: (value) {
                              selectedB=value;
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
                                  hintText:"Related to",
                                )
                            ),
                          ),
                          Visibility(
                              visible: selectedB==null?false:true,
                              child: Text("Related to",style: TextStyle(color: Colors.grey.shade700))),
                          SizedBox(height: 5,),
                          Container(
                            width: 500,
                            height: 1,
                            color: Colors.grey,
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.start,

                children: [
                  MyIcon(customicon: Icons.mark_unread_chat_alt_outlined,),
                  SizedBox(width: 15,),
                  My_TextField(
                    hinttext: "Selected related first",
                    subText: "Selected related first",
                  )
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.start,

                children: [
                  MyIcon(customicon: Icons.check_box_outlined,),
                  SizedBox(width: 15,),
                  // My_TextField(
                  //   hinttext: "Status",
                  //   suficon: Icons.arrow_drop_down_outlined,
                  // )
                  Expanded(
                    child: Container(
                      height: 70,
                      width: 500,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          DropdownSearch(
                            onChanged: (value) {
                              selectedC=value;
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
                                  hintText:"Status",
                                )
                            ),
                          ),
                          Visibility(
                              visible: selectedC==null?false:true,
                              child: Text("Status",style: TextStyle(color: Colors.grey.shade700))),
                          SizedBox(height: 5,),
                          Container(
                            height: 1,
                            width: 500,
                            color: Colors.grey,
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),

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

              Row(
                mainAxisAlignment: MainAxisAlignment.start,

                children: [
                  MyIcon(customicon: Icons.person_outline,),
                  SizedBox(width: 15,),
                  Expanded(
                    child: Container(
                      height: 70,
                      width: 500,
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
                            items:['Kabir','Subrin','Sukanto','Shofiqul','Mustafiz','Jahid','Sakib'],
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
                              child: Text("Assign To",style: TextStyle(color: Colors.grey.shade700))),
                          SizedBox(height: 5,),
                          Container(
                            width: 500,
                            height: 1,
                            color: Colors.grey,
                          )
                        ],
                      ),
                    ),
                  ),

                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.start,

                children: [
                  MyIcon(customicon: Icons.access_time_outlined,),
                  SizedBox(width: 15,),
                  // My_TextField(
                  //   hinttext: "Duration",
                  // )
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(durationLists[hourIndex]),
                                SizedBox(height: 5,),
                                Visibility(
                                    visible:hourIndex==null?false:true,// selectedF==null?false:true,//todo
                                    child: Text("Duration",style: TextStyle(color: Colors.grey.shade700),)),

                              ],
                            ),
                            SizedBox(width: 40,),
                            Container(
                              height: 45,
                              width: 200,
                              decoration: BoxDecoration(
                                  border:Border.all(width: 1,color: Colors.grey) ,
                                  borderRadius: BorderRadius.circular(8),
                                  //color: Colors.grey
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [

                                  InkWell(
                                    onTap:Decrement,
                                    child: Container(
                                      height: 25,
                                      width: 25,
                                      decoration: BoxDecoration(
                                        border: Border.all(width: 1,color: Colors.grey),
                                        borderRadius: BorderRadius.circular(50)
                                      ),
                                      child: Icon(Icons.arrow_back_ios,size: 15,),
                                    ),
                                  ),
                                  // Row(
                                  //   children: [
                                  //     Text("$Hour:$Min"),
                                  //     Text(":"),
                                  //     Text("$Min")
                                  //   ],
                                  // ),

                                  //Text("${durationLists[hourIndex]} Min"),
                                  SizedBox(width:20,),
                                  DropdownSearch(
                                    selectedItem: durationLists[hourIndex],
                                    onChanged: (value) {
                                      // selectedF=value;
                                      setState(() {
                                       //selectedF=durationLists[hourIndex];
                                        hourIndex = durationLists.indexOf(value);
                                      });
                                    },
                                    items: durationLists,
                                    popupProps: PopupProps.menu(
                                      showSearchBox: true,
                                    ),
                                    dropdownButtonProps: DropdownButtonProps(
                                      //iconSize: 0,
                                      icon: SizedBox(
                                        width: 0,
                                        child: Visibility(
                                            visible: false,
                                            child: Icon(
                                              Icons.arrow_downward,
                                              size: 0,
                                            )),
                                      ),
                                    ),
                                    dropdownDecoratorProps: DropDownDecoratorProps(
                                      dropdownSearchDecoration: InputDecoration(

                                        border: InputBorder.none,
                                        //hintText: durationLists[hourIndex],
                                        hintStyle: TextStyle(color: Colors.blue),
                                        constraints: BoxConstraints(
                                          maxWidth: 85,
                                          //maxHeight: 100
                                        )
                                      )
                                    ),
                                  ),
                                  InkWell(
                                    onTap: Increment,
                                    child: Container(
                                      height: 25,
                                      width: 25,
                                      decoration: BoxDecoration(
                                          border: Border.all(width: 1,color: Colors.grey),
                                          borderRadius: BorderRadius.circular(50)
                                      ),
                                      child: Icon(Icons.arrow_forward_ios,size: 15,),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 5,),
                        Container(
                          height: 1,
                          width: 500,
                          color: Colors.grey,
                        )
                      ],
                    ),
                  )
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  MyIcon(customicon: Icons.description_outlined,),
                  SizedBox(width: 15,),
                  My_TextField(
                    hinttext: "Description",
                    subText: "Description",
                  ),
                ],
              ),
              My_Button(),
            ],
          ),
        ),
      ),

    );
  }
}
