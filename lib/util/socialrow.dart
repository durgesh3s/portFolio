import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/util/animated_icon_button.dart';
import 'package:url_launcher/link.dart';

class SocialRow extends StatelessWidget {
  const SocialRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Link(
          target: LinkTarget.blank,
        uri: Uri.parse('https://www.facebook.com/profile.php?id=100095261079621'),
        builder: (context, followLink){
          return AnimatedIconButton(
          iconData: FontAwesomeIcons.facebook, onTap: (){
            followLink;
          },);},),
        const SizedBox(width: 8.0,),


        //
        Link(
          target: LinkTarget.blank,
          uri: Uri.parse('https://www.instagram.com/idurgesh3/'),
          builder: (context, followLink){
            return AnimatedIconButton(
              iconData: FontAwesomeIcons.instagram, onTap: (){
                followLink;
            },);},),
        //

        const SizedBox(width: 8.0,),
        Link(
          target: LinkTarget.blank,
          uri: Uri.parse('https://twitter.com/idurgesh3'),
          builder: (context, followLink){
            return AnimatedIconButton(
              iconData: FontAwesomeIcons.twitter, onTap: (){
                followLink;
            },);},),
      ],
    );
  }
}

