import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:studyssey/constant.dart';
import 'package:studyssey/utilize/read_user.dart';
import 'package:studyssey/utilize/user_model.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;

class ChatRoom extends StatefulWidget {
  const ChatRoom({super.key});

  static String routeName = 'ChatRoom';

  @override
  State<ChatRoom> createState() => _ChatRoomState();
}

class _ChatRoomState extends State<ChatRoom> with WidgetsBindingObserver {
  late final Stream<List<UserModel>> userStream;
  final controller = TextEditingController();
  UserModel? user;
  types.User? _user;
  final List<types.Message> _messages = [];
  FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  void _handlePreviewDataFetched(
    types.TextMessage message,
    types.PreviewData previewData,
  ) {
    final index = _messages.indexWhere((element) => element.id == message.id);
    final updatedMessage = (_messages[index] as types.TextMessage).copyWith(
      previewData: previewData,
    );

    setState(() {
      _messages[index] = updatedMessage;
    });
  }

  @override
  void initState() {
    super.initState();
    userStream = readUser();
    userStream.listen((List<UserModel> users) {
      if (users.isNotEmpty) {
        setState(() {
          user = users[0];
          _user = types.User(id: user!.uid);
        });
      }
    });
    WidgetsBinding.instance.addObserver(this);
    //_loadMessages();
  }

  void setStat(String status) async {
    await firebaseFirestore
        .collection('chats')
        .doc(user!.uid)
        .update({'status': status});
  }

  void didChangeAppLifeCycleState(AppLifecycleState state) {
    //super.didChangeAppLifecycleState(state);
    if (state == AppLifecycleState.resumed) {
      //online
      setStat('online');
    } else {
      // offline
      setStat('offline');
    }
  }

  void _handleSendPressed(types.PartialText message) {
    final textMessage = types.TextMessage(
      author: _user!,
      createdAt: DateTime.now().millisecondsSinceEpoch,
      id: user!.uid,
      text: message.text,
    );

    _addMessage(textMessage);
  }

  void _addMessage(types.Message message) {
    setState(() {
      _messages.insert(0, message);
    });
  }

  /*void _loadMessages() async {
    final response = await rootBundle.loadString('assets/messages.json');
    final messages = (jsonDecode(response) as List)
        .map((e) => types.Message.fromJson(e as Map<String, dynamic>))
        .toList();

    setState(() {
      _messages = messages;
    });
  }*/

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: splashScreen,
          foregroundColor: textColor2,
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: ColorFiltered(
              colorFilter: const ColorFilter.mode(textColor2, BlendMode.srcIn),
              child: SvgPicture.asset(
                kBackButtonIcon,
                height: 31,
                width: 31,
              ),
            ),
          ),
          title: user != null
              ? Row(
                  children: [
                    Badge(
                      backgroundColor: badgeColor,
                      alignment: Alignment.topRight,
                      smallSize: 12,
                      padding: const EdgeInsets.all(20),
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(user!.profileImage),
                        radius: 23,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            user!.fullname,
                            style: GoogleFonts.manrope(
                                fontWeight: FontWeight.w700,
                                fontSize: 13.33,
                                color: textColor2),
                          ),
                          Text(
                            user!.status,
                            style: GoogleFonts.manrope(
                                fontSize: 11.11,
                                fontWeight: FontWeight.w500,
                                color: textColor2),
                          )
                        ],
                      ),
                    ),
                  ],
                )
              : null),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (_user != null)
            Expanded(
              flex: 1,
              child: Chat(
                  messages: _messages,
                  onPreviewDataFetched: _handlePreviewDataFetched,
                  onSendPressed: _handleSendPressed,
                  user: _user!),
            )
          else
            const Center(child: CircularProgressIndicator()),
        ],
      ),
    );
  }
}
