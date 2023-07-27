import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/util/animated_contact.dart';
import 'package:portfolio/util/socialrow.dart';
import 'package:url_launcher/link.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        margin:
        const EdgeInsets.only(top: 20.0),
        width:
        context.screenWidth < 900 ?
        context.screenWidth * 0.9 :
        context.screenWidth < 1600 ?
        context.screenWidth * 0.3 :
        context.screenWidth * 0.2,
        decoration:
        BoxDecoration(color: Colors.white,
        borderRadius: BorderRadius.circular(20.0),),
        padding: EdgeInsets.all(30.0),
        height: 1000,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Center(
                  child: Image.asset("assets/dev.png",
                    height: 200.0,),
                ),
                Text('Durgesh Singh',
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.w600,
                  ),),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Text("Fresh Full Stack Java Developer and App Developer seeking to contribute to innovation software solutions, gain experience, and collaborate in a dynamic environment to enhance programming skills and create efficient applications.",
                    textAlign: TextAlign.center,),
                ),
                Wrap(
                  alignment: WrapAlignment.center,
                  spacing: 8.0,
                  runSpacing: 8.0,
                  children: [
                    Chip(label: Text('Full Stack Java Developer'),
                      labelStyle: TextStyle(color: Colors.white,
                          fontSize: 14.0),
                      backgroundColor: Colors.green,
                      padding: EdgeInsets.all(8.0),),
                    Chip(label: Text('App Developer - Flutter'),
                      labelStyle: TextStyle(color: Colors.white,
                          fontSize: 14.0),
                      backgroundColor: Colors.green,
                      padding: EdgeInsets.all(8.0),),],
                ),
                Divider(),
                Link(
                  target: LinkTarget.blank,
                    uri: Uri.parse('https://www.hackerrank.com/durgeshsingh3?hr_r=1'),
                    builder: (context, followLink){
                 return AnimatedContact(
                  iconData: FontAwesomeIcons.hackerrank,
                  title: "HackerRank",
                  subtitle: "@imDurgesh3",
                  onTap:  (){} ,);},),

                //
                Link(
                  target: LinkTarget.blank,
                  uri: Uri.parse('https://www.linkedin.com/in/imdurgesh3/'),
                  builder: (context, followLink){
                    return AnimatedContact(
                      iconData: FontAwesomeIcons.linkedin,
                      title: "LinkedIn",
                      subtitle: "@imDurgesh3",
                      onTap:  (){} ,);},),


                Link(
                  target: LinkTarget.blank,
                  uri: Uri.parse('https://github.com/imDurgesh3'),
                  builder: (context, followLink){
                    return AnimatedContact(
                      iconData: FontAwesomeIcons.github,
                      title: "GitHub",
                      subtitle: "@imDurgesh3",
                      onTap:  (){} ,);},),
              ],
            ),
            Column(
              children: [
                Divider(),
                SocialRow(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
