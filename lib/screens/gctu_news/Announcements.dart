import 'package:flutter/material.dart';
import 'Announcements/annitem1.dart';
import 'Announcements/annitem2.dart';
import 'Announcements/annitem3.dart';
import 'card_annmnt.dart';

class Announcements extends StatelessWidget {

  const Announcements ({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: ListView(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        children:  const [
          CardAnnouncement(image: 'assets/images/Manifesto-web-768x384.jpg', title: '#AlumniElections: GCTU Alumni Assoc...', gctuEventsWidget: anItem1()),
          CardAnnouncement(image: 'assets/images/gdp-tetu.jpg', title: '3-Month Certificate Training in Graphic Design Production', gctuEventsWidget: anItem2()),
          CardAnnouncement(image: 'assets/images/cybersecurity-summerschool.jpg', title: 'Cyber Security Conference and Summer School in South Africa...', gctuEventsWidget: anItem3()),
           ],
      ),
    );
  }
}
