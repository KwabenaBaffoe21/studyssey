import 'package:bubble/bubble.dart';
import 'package:dialogflow_flutter_plus/googleAuth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:dialogflow_flutter_plus/dialogflowFlutter.dart';

import '../../utilize/styles.dart';

//void main() { runApp(const MyApp()); }

class GetAssistance extends StatefulWidget {
  const GetAssistance ({super.key});

  static String routeName = 'GetAssistance';

  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<GetAssistance> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.blue,
        primarySwatch: Colors.blue,
      ),
      home: const ChatBotScreen(),
    );
  }
}

class ChatBotScreen extends StatefulWidget {
  const ChatBotScreen({super.key});

  @override
  ChatBotScreenState createState() => ChatBotScreenState();
}

class ChatBotScreenState extends State<ChatBotScreen> {
  final messageInsert = TextEditingController();
  List<Map> messsages = [];
  void response(query) async {
    AuthGoogle authGoogle =
    await AuthGoogle(fileJson: "images/assets/ama-beyh-51f48f522f1a.json")
        .build();
    DialogFlow dialogflow = DialogFlow(authGoogle: authGoogle, language: "en");
    AIResponse aiResponse = await dialogflow.detectIntent(query);
    setState(() {
      messsages.insert(0, {
        "data": 0,
        "message": aiResponse.getListMessage()?[0]["text"]["text"][0].toString()
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 70,
        elevation: 10,
        title:  Text("Get Assistance", style: heading400reg),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          // Define the onPressed function to pop the current route
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        children: <Widget>[
          Flexible(
              child: ListView.builder(
                  reverse: true,
                  itemCount: messsages.length,
                  itemBuilder: (context, index) => chat(
                      messsages[index]["message"].toString(),
                      messsages[index]["data"]))),
          const Divider(
            height: 6.0,
          ),
          Container(
            padding: const EdgeInsets.only(left: 15.0, right: 15.0, bottom: 20),
            margin: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              children: <Widget>[
                Flexible(
                    child: TextField(
                      controller: messageInsert,
                      decoration: InputDecoration.collapsed(
                          hintText: "What would you need help with?",
                          hintStyle: heading300),
                    )),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 4.0),
                  child: IconButton(
                      icon: const Icon(
                        Icons.send,
                        size: 30.0,
                      ),
                      onPressed: () {
                        if (messageInsert.text.isEmpty) {
                          if (kDebugMode) {
                            print("empty message");
                          }
                        } else {
                          setState(() {
                            messsages.insert(0,
                                {"data": 1, "message": messageInsert.text});
                          });
                          response(messageInsert.text);
                          messageInsert.clear();
                        }
                      }),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 15.0,
          )
        ],
      ),
    );
  }

  Widget chat(String message, int data) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Bubble(
          radius: const Radius.circular(15.0),
          color: data == 0 ? background : accentchat,
          elevation: 0.0,
          alignment: data == 0 ? Alignment.topLeft : Alignment.topRight,
          nip: data == 0 ? BubbleNip.leftBottom : BubbleNip.rightTop,
          child: Padding(
            padding: const EdgeInsets.all(2.0),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                //CircleAvatar(
                 // backgroundImage: AssetImage(
                 //     data == 0 ? "assets/bot.png" : "assets/user.png"),
                //),
                const SizedBox(
                  width: 10.0,
                ),
                Flexible(
                    child: Text(
                      message,
                      style: heading300.copyWith(color: Colors.black),
                    ))
              ],
            ),
          )),
    );
  }
}