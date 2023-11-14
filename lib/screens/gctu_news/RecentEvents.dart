import 'package:flutter/material.dart';
import 'Events/eventsitem1.dart';
import 'Events/eventsitem2.dart';
import 'Events/eventsitem3.dart';
import 'Events/eventsitem4.dart';
import 'Events/eventsitem5.dart';
import 'card_re.dart';

class RecEvents extends StatelessWidget {

  const RecEvents ({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      child: ListView(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        children:  const [
          CardRecEvents(image: 'assets/images/Dip.W.A.jpg', gctuEventsWidget: EventItem1()),
          CardRecEvents(image: 'assets/images/Cybersecurity-768x384.jpg', gctuEventsWidget: EventItem2(),),
          CardRecEvents(image: 'assets/images/Seminar.jpg', gctuEventsWidget: EventItem3(),),
          CardRecEvents(image: 'assets/images/Dip.computer-science.jpg', gctuEventsWidget: EventItem4(),),
          CardRecEvents(image: 'assets/images/Data-analytics.jpg', gctuEventsWidget: EventItem5(),),
        ],
      ),
    );
  }
}
