import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/util/socialrow.dart';

class Footer extends StatefulWidget {
  const Footer({super.key});

  @override
  State<Footer> createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(20.0),
      margin: const EdgeInsets.only(top: 20),
      child:
      Column(
        children: [
          SocialRow(),
          SizedBox(
            height: 18.0,
          ),
          Text(
            'Contact Me: ', style: TextStyle(fontWeight: FontWeight.w800),
          ),
          Center(
            child: Text(
                    '  +91-6393313101,  '
                    ' durgesh.singhcs20@smslucknow.ac.in  '
                    '  Lucknow, Uttar Pradesh  ' , style: TextStyle(color: Colors.blue),
            ),
          )
        ],
      ),
    );
  }
}
