import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:portfolio/components/about.dart';
import 'package:portfolio/components/education.dart';
import 'package:portfolio/components/skills.dart';
import 'package:url_launcher/link.dart';

import 'footer.dart';

class Portfolio extends StatefulWidget {
  const Portfolio({super.key});

  @override
  State<Portfolio> createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {
  List<Widget> navItems = [];
  bool isMobile = false;
  final skillKey = GlobalKey();

  @override
  void initState() {
    navItems = [

      Link(
        target: LinkTarget.blank,
        uri: Uri.parse('https://www.linkedin.com/in/imdurgesh3/'),
        builder: (context, folloLink){

          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(onPressed: folloLink, child: Text('About')),
          );},),

      //
      Link(
        target: LinkTarget.blank,
        uri: Uri.parse('https://drive.google.com/file/d/1G1RNKUoyfJH48o_yW59hPZx1zcdy6tYC/view?usp=drive_link'),
        builder: (context, folloLink){

          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(onPressed: folloLink, child: Text('Resume')),
          );},),
      //

      Link(
        target: LinkTarget.blank,
        uri: Uri.parse('https://github.com/imDurgesh3?tab=repositories'),
        builder: (context, folloLink){

          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(onPressed: folloLink, child: Text('Projects')),
          );},),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(onPressed: () {
          Scrollable.ensureVisible(skillKey.currentContext!);
        }, child: Text('Skills')),
      ),
    ];
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    isMobile = MediaQuery.of(context).size.width > 700 ? false : true;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Durgesh Singh"),
        actions: isMobile ? null : navItems,
      ),
      drawer: isMobile
      ? Drawer(
        child: ListView(
          children: navItems,
        ),
      )
          : null,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children:[ Wrap(
              alignment: WrapAlignment.center,
              children: [
                About(),
                Education(
                  key: skillKey,
                ),
              ],
            ),
              Skills(
                key: skillKey,
              ),
              Footer(),
          ],
          ),
        ),
      ),
    );
  }
}
