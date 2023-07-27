import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:timelines/timelines.dart';
import 'package:velocity_x/velocity_x.dart';

class Education extends StatefulWidget {
  const Education({super.key});

  @override
  State<Education> createState() => _EducationState();
}

class _EducationState extends State<Education> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin:
      const EdgeInsets.only(top: 20.0),
      width:
    context.screenWidth < 900 ?
    context.screenWidth * 0.9 :
    context.screenWidth < 1600 ?
    context.screenWidth * 0.5 :
      context.screenWidth * 4.0,
      decoration:
      BoxDecoration(color: Colors.white,
        borderRadius: BorderRadius.circular(20.0),),
      padding: const EdgeInsets.all(30.0),
      height: 1000.0,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:[
        Padding(
          padding: const EdgeInsets.all(14.0),
          child: const Text(" Projects & Education ->",
          style: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.w600,
          ),),
        ),
        const SizedBox(
          height: 12.0,),
        Timeline.tileBuilder(
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          builder: TimelineTileBuilder.fromStyle(
            itemCount: 1,
            contentsAlign: ContentsAlign.alternating,
            contentsBuilder: (context, index){
              return Card(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Java - Project',
                    style: TextStyle(
                      fontSize: 12, color: Colors.indigo,
                    ),),
                    const Text('ATM Machine',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),),
                    Text('Built an ATM Machine that Credit, Debit and Show Money.',
                      style: TextStyle(
                        fontSize: 14, color: Colors.grey.shade700,),),
                  ],

                ),),
              );
            },
          ),
        ),

        Timeline.tileBuilder(
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          builder: TimelineTileBuilder.fromStyle(
            itemCount: 1,
            contentsAlign: ContentsAlign.reverse,
            contentsBuilder: (context, index){
              return Card(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Flutter - Project',
                        style: TextStyle(
                          fontSize: 12, color: Colors.indigo,
                        ),),
                      const Text('Login,Signup & Portfolio',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),),
                      Text('1. This project does take’s part of every application,Firebase used. 2. This Portfolio is in Flutter.',
                        style: TextStyle(
                          fontSize: 14, color: Colors.grey.shade700,),),
                    ],

                  ),),
              );
            },
          ),
        ),

        //
        Timeline.tileBuilder(
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          builder: TimelineTileBuilder.fromStyle(
            itemCount: 1,
            contentsAlign: ContentsAlign.alternating,
            contentsBuilder: (context, index){
              return Card(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Web Project',
                        style: TextStyle(
                          fontSize: 12, color: Colors.indigo,
                        ),),
                      const Text('CocaCola Frontend',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),),
                      Text('Build CocaCola home page & by using HTML, CSS & JavaScript.',
                        style: TextStyle(
                          fontSize: 14, color: Colors.grey.shade700,),),
                    ],

                  ),),
              );
            },
          ),
        ),



        //
        Timeline.tileBuilder(
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          builder: TimelineTileBuilder.fromStyle(
            itemCount: 1,
            contentsAlign: ContentsAlign.reverse,
            contentsBuilder: (context, index){
              return Card(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('2020 - Present (8.2 SGPA)',
                        style: TextStyle(
                          fontSize: 12, color: Colors.indigo,
                        ),),
                      const Text('Computer Science & Engineering',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),),
                      Text('Student of CSE, from School Of Management & Sciences Lucknow.',
                        style: TextStyle(
                          fontSize: 14, color: Colors.grey.shade700,),),
                    ],

                  ),),
              );
            },
          ),
        ),
      ],
    ),);
  }
}
