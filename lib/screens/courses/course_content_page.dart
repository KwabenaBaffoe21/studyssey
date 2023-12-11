import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../components/expansionTile.dart';
import '../../styles.dart';

class CourseContent extends StatefulWidget {
  const CourseContent({super.key});
  static String routeName = 'CourseContent';

  @override
  State<CourseContent> createState() => _CourseContentState();
}

class _CourseContentState extends State<CourseContent> {
  // ignore: non_constant_identifier_names
  List RandomImages = [
    'images/assets/images/les.png',
    'images/assets/images/kb 1.jpg',
    'images/assets/images/mbb.png',
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: accent,
              foregroundColor: accent,
              leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                ),
              ),
              //title: Text ('ADVANCED JAVA TECHNOLOGY', style: heading450),

              expandedHeight: 200,
              floating: false,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                background: Container(
                  decoration: BoxDecoration(
                    color: background,
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                        image: AssetImage('images/assets/images/java.png'),
                        fit: BoxFit.cover),
                  ),

                  //height: 300,
                  // margin: EdgeInsets.only(right: small),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(0),
                        gradient: const LinearGradient(
                            colors: [
                              Color.fromRGBO(0, 0, 0, 0.75),
                              Colors.transparent,
                            ],
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter)),
                  ),
                ),
                title: Text.rich(TextSpan(
                    text: 'ADVANCED JAVA TECHNOLOGY',
                    style: heading450.copyWith(color: Colors.white),
                    children: [
                      TextSpan(
                        text: '\n COURSE CODE: IT 314',
                        style: body.copyWith(color: Colors.white),
                      )
                    ])),
                //centerTitle: true,
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                  height: 20,
                  color: Colors.black,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Container(
                        height: 20,
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(16),
                              topRight: Radius.circular(16),
                            )),
                      )
                    ],
                  )),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(left: 24, right: 24),
                child: Container(
                  width: 311.11,
                  //height: 59.01,
                  padding: const EdgeInsets.only(bottom: 17.78),
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(width: 0.19),
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const SizedBox(
                            width: 35.56,
                            height: 35.56,
                            child: Stack(
                              children: [
                                CircleAvatar(
                                  radius: 50,
                                  backgroundColor: Colors.white,
                                  backgroundImage: AssetImage(
                                      'images/assets/images/obanning.png'),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 8.89),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Samuel Banning Osei', style: heading400reg),
                              Text('LECTURER', style: heading300),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(width: 40),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  for (int i = 0; i < RandomImages.length; i++)
                                    Container(
                                      margin: const EdgeInsets.symmetric(
                                          vertical: 0),
                                      child: Align(
                                          widthFactor: 0.5,
                                          child: CircleAvatar(
                                            radius: 15,
                                            backgroundColor: Colors.white,
                                            child: CircleAvatar(
                                              radius: 15,
                                              backgroundImage: AssetImage(
                                                RandomImages[i],
                                              ),
                                            ),
                                          )),
                                    )
                                ],
                              ),
                              const SizedBox(
                                width: 0,
                              ),
                              CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 15,
                                child: SvgPicture.asset(
                                    'images/assets/svg/Add_square_light.svg'),
                              ),
                            ],
                          ),
                          const SizedBox(height: 2.22),
                          Text('STUDENTS', style: heading300),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
                child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Container(
                width: 311.11,
                //height: 104.44,
                padding: const EdgeInsets.only(bottom: 17.78),
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(width: 0.19),
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      //width: 90,
                      height: 17.78,
                      child: Text('About Course', style: heading400),
                    ),
                    const SizedBox(height: 3.33),
                    SizedBox(
                      width: 311.11,
                      height: 65.56,
                      child: Text(
                          'Lorem ipsum dolor sit amet, connecter adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. \n',
                          style: body),
                    ),
                  ],
                ),
              ),
            )),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(left: 24, right: 24),
                child: SizedBox(
                  //width: 90,
                  height: 17.78,
                  child: Text('Topics', style: heading400),
                ),
              ),
            ),
            const SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.only(top: 10.0, left: 20, right: 20),
                child: Directionality(
                  textDirection: TextDirection.ltr,
                  child: TextExpansionPanel(
                    title:
                        'Unit 1: Introduction to Graphical User Interface (GUI)',
                    text:
                        '''This lecture introduces Swing. It describes Swing’s core concepts. It then presents a simple example that shows the general form of a Swing program. This is followed by an example that demonstrates Java's event handling capability. Stay tuned...''',
                  ),
                ),
              ),
            ),
            const SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.only(top: 10.0, left: 20, right: 20),
                child: Directionality(
                  textDirection: TextDirection.ltr,
                  child: TextExpansionPanel(
                    title:
                        'Unit 2: Introduction to Graphical User Interface (GUI)',
                    text:
                        '''This lecture introduces Swing. It describes Swing’s core concepts. It then presents a simple example that shows the general form of a Swing program. This is followed by an example that demonstrates Java's event handling capability. Stay tuned...''',
                  ),
                ),
              ),
            ),
            const SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.only(top: 10.0, left: 20, right: 20),
                child: Directionality(
                  textDirection: TextDirection.ltr,
                  child: TextExpansionPanel(
                    title:
                        'Unit 3: Introduction to Graphical User Interface (GUI)',
                    text:
                        '''This lecture introduces Swing. It describes Swing’s core concepts. It then presents a simple example that shows the general form of a Swing program. This is followed by an example that demonstrates Java's event handling capability. Stay tuned...''',
                  ),
                ),
              ),
            ),
            const SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.only(top: 10.0, left: 20, right: 20),
                child: Directionality(
                  textDirection: TextDirection.ltr,
                  child: TextExpansionPanel(
                    title:
                        'Unit 4: Introduction to Graphical User Interface (GUI)',
                    text:
                        '''This lecture introduces Swing. It describes Swing’s core concepts. It then presents a simple example that shows the general form of a Swing program. This is followed by an example that demonstrates Java's event handling capability. Stay tuned...''',
                  ),
                ),
              ),
            ),
            const SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.only(top: 10.0, left: 20, right: 20),
                child: Directionality(
                  textDirection: TextDirection.ltr,
                  child: TextExpansionPanel(
                    title:
                        'Unit 5: Introduction to Graphical User Interface (GUI)',
                    text:
                        '''This lecture introduces Swing. It describes Swing’s core concepts. It then presents a simple example that shows the general form of a Swing program. This is followed by an example that demonstrates Java's event handling capability. Stay tuned...''',
                  ),
                ),
              ),
            ),
            const SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.only(top: 10.0, left: 20, right: 20),
                child: Directionality(
                  textDirection: TextDirection.ltr,
                  child: TextExpansionPanel(
                    title:
                        'Unit 6: Introduction to Graphical User Interface (GUI)',
                    text:
                        '''This lecture introduces Swing. It describes Swing’s core concepts. It then presents a simple example that shows the general form of a Swing program. This is followed by an example that demonstrates Java's event handling capability. Stay tuned...''',
                  ),
                ),
              ),
            ),
            const SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.only(top: 10.0, left: 20, right: 20),
                child: Directionality(
                  textDirection: TextDirection.ltr,
                  child: TextExpansionPanel(
                    title:
                        'Unit 7: Introduction to Graphical User Interface (GUI)',
                    text:
                        '''This lecture introduces Swing. It describes Swing’s core concepts. It then presents a simple example that shows the general form of a Swing program. This is followed by an example that demonstrates Java's event handling capability. Stay tuned...''',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
