import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class Skills extends StatelessWidget {
  const Skills({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 20,
      runSpacing: 20,
      alignment: WrapAlignment.center,
      children: [
        Container(
          padding: EdgeInsets.symmetric(vertical: 20.0),
          alignment: Alignment.center,
          child:
          Text("My Skills",
          style: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.w800,
          ),),
        ),
        Container(
          padding: EdgeInsets.all(28.0),
          width: context.screenWidth < 900
              ? context.screenWidth * 0.9
              : ((context.screenWidth * 0.8) / 3),

          decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(20.0),),
         child: 
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Programming Language'
              ),
              Divider(),
            Wrap(
              spacing: 8.0,
              runSpacing: 8.0,
              children: [
                Chip(label: Text("Core Java - (J2SE)",),
                  labelStyle: TextStyle(color: Colors.indigo,),
                  side: BorderSide(color: Colors.indigo,),
                  backgroundColor: Colors.white,),

                //
                Chip(label: Text("Dart ",),
                  labelStyle: TextStyle(color: Colors.indigo,),
                  side: BorderSide(color: Colors.indigo,),
                  backgroundColor: Colors.white,),
              ],
            ),
            ],
          ), 
        ), Container(
          padding: EdgeInsets.all(28.0),
          width: context.screenWidth < 900
              ? context.screenWidth * 0.9
              : ((context.screenWidth * 0.8) / 3),

          decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(20.0),),
         child:
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Frameworks'
              ),
              Divider(),
            Wrap(
              spacing: 8.0,
              runSpacing: 8.0,
              children: [
                Chip(label: Text("Flutter-(Dart)",),
                  labelStyle: TextStyle(color: Colors.indigo,),
                  side: BorderSide(color: Colors.indigo,),
                  backgroundColor: Colors.white, ),

                //
                Chip(label: Text("Spring Boot",),
                  labelStyle: TextStyle(color: Colors.indigo,),
                  side: BorderSide(color: Colors.indigo,),
                  backgroundColor: Colors.white,),

                //
                Chip(label: Text("Collection Framework",),
                  labelStyle: TextStyle(color: Colors.indigo,),
                  side: BorderSide(color: Colors.indigo,),
                  backgroundColor: Colors.white,),
              ],
            ),
            ],
          ),
        ), Container(

          width: context.screenWidth < 900
              ? context.screenWidth * 0.9
              : ((context.screenWidth * 0.8) / 3),

          decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(20.0),),
         padding: EdgeInsets.all(28.0),
         child:
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Other Tools'
              ),
              Divider(),
            Wrap(
              spacing: 8.0,
              runSpacing: 8.0,
              children: [
                Chip(label: Text("Hibernate",),
                  labelStyle: TextStyle(color: Colors.indigo,),
                  side: BorderSide(color: Colors.indigo,),
                  backgroundColor: Colors.white,),

                //
                Chip(label: Text("DataBase - (MySQL)",),
                  labelStyle: TextStyle(color: Colors.indigo,),
                  side: BorderSide(color: Colors.indigo,),
                  backgroundColor: Colors.white,),
                
                //
                Chip(label: Text("J2EE",),
                  labelStyle: TextStyle(color: Colors.indigo,),
                  side: BorderSide(color: Colors.indigo,),
                  backgroundColor: Colors.white,),

                //
                Chip(label: Text("Data Structure & Algorithms",),
                  labelStyle: TextStyle(color: Colors.indigo,),
                  side: BorderSide(color: Colors.indigo,),
                  backgroundColor: Colors.white,),

                //
                Chip(label: Text("Logical Problem Solving",),
                  labelStyle: TextStyle(color: Colors.indigo,),
                  side: BorderSide(color: Colors.indigo,),
                  backgroundColor: Colors.white,),
              ],
            ),
            ],
          ),
        ),
      ],
    );
  }
}
