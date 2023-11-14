import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:studyssey/components/drawer_screen.dart';
import '../../constant.dart';
import '../pay_fees/labelsecteventcal.dart';
import 'Announcements.dart';
import 'EventsCalendarall.dart';
import 'Eventscalendar.dart';
import 'Newsflash.dart';
import 'RecentEvents.dart';
import 'download.dart';

class NewsGCTU extends StatefulWidget {
  const NewsGCTU({super.key});

  static String routeName = 'NewsGCTU';

  @override
  State<NewsGCTU> createState() => _NewsGCTUState();
}

class _NewsGCTUState extends State<NewsGCTU> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 4, vsync: this);

    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      drawer:
          DrawerScreen(upperContent: upperContent, lowerContent: lowerContent),
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(top: 20, bottom: 16),
          child: Text('GCTU News'),
        ),
        titleTextStyle: Theme.of(context).appBarTheme.titleTextStyle,
        centerTitle: Theme.of(context).appBarTheme.centerTitle,
        toolbarHeight: Theme.of(context).appBarTheme.toolbarHeight,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 45.56),
            child: SvgPicture.asset(
              kBookmarkIcon,
              width: 15.44,
              height: 16.75,
            ),
          )
        ],
        elevation: Theme.of(context).appBarTheme.elevation,
        scrolledUnderElevation: Theme.of(context).appBarTheme.scrolledUnderElevation,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.only(top: 20, right: medium, left: medium),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: small),
                child: Expanded(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: [
                        const RecEvents(),
                        const SizedBox(height: small),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: TabBar(
                              onTap: (selectedTabIndex) {},
                              isScrollable: true,
                              labelPadding:
                                  const EdgeInsets.only(left: 20, right: 10),
                              labelStyle: Theme.of(context)
                                  .textTheme
                                  .bodySmall
                                  ?.copyWith(color: textColor1),
                              labelColor: color13,
                              unselectedLabelColor: color5,
                              unselectedLabelStyle: Theme.of(context)
                                  .textTheme
                                  .bodySmall
                                  ?.copyWith(color: textColor1),
                              dividerColor: Colors.transparent,
                              controller: tabController,
                              tabs: const [
                                Tab(text: ("Newsflash")),
                                Tab(text: ("Announcements")),
                                Tab(text: ("Downloads")),
                                Tab(text: ("GCTUActs")),
                              ]),
                        ),
                        SizedBox(
                          width: double.maxFinite,
                          height: 250,
                          child:
                              TabBarView(controller: tabController, children: [
                            const Newsflash(),
                            const Announcements(),
                            const DownList(),
                            Text(
                              'N/A',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleSmall
                                  ?.copyWith(color: color5),
                            ),
                          ]),
                        ),
                        const SizedBox(height: medium),
                        const LabelSectionECal(
                          gctuLabPage: EventsCallAll(),
                          title: 'Events Calendar',
                        ),
                        const SizedBox(height: medium),
                        const ECalist(),
                        const SizedBox(
                          height: 15,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
