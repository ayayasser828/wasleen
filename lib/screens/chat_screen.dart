import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:wasleen/constant/constant.dart';
import 'package:wasleen/models/chat_message.dart';
import 'package:wasleen/widgets/receiver_message.dart';
import 'package:wasleen/widgets/sender_message.dart';

class ChatScreen extends StatefulWidget {
  static const String routeName = '/ChatScreen';

  @override
  State createState() => new ChatScreenState();
}

class ChatScreenState extends State<ChatScreen> {

  final TextEditingController _chatController = new TextEditingController();
  final List<ChatMessage> _messages = <ChatMessage>[];

  void _handleSubmit(String text) {
    _chatController.clear();
    ChatMessage message =  ChatMessage(
        text: text
    );
    setState(() {
      _messages.insert(0, message);
    });

  }




  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: <Widget>[
            Container(
              width: width,
              height: height*0.12,
              decoration: BoxDecoration(
                color: colorA1,
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30)),
              ),
              child: Directionality(
                textDirection: TextDirection.rtl,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Icon(Icons.person,color: Colors.black,),
                    ),
                    Text(
                      'احمد سالم , سائق مهند',
                      style: textStyleA10,
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_forward_ios,
                        size: 20,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
             Flexible(
              child: ListView.builder(
                padding: const EdgeInsets.all(8),
                reverse: true,
                itemBuilder: (_, int index) => _messages[index],
                itemCount: _messages.length,
              ),
            ),
             Directionality(
               textDirection: TextDirection.rtl,
               child: Stack(
                 children: [
                   Row(
                     children: <Widget>[
                       Flexible(
                         child:  Material(
                           elevation: 5,
                           child: Container(
                             width: width,
                             height: height * 0.08,
                             color: Colors.transparent,
                             child: TextField(textAlignVertical: TextAlignVertical.bottom,
                               controller: _chatController,
                               onSubmitted: _handleSubmit,
                               textAlign: TextAlign.start,
                               decoration: InputDecoration(
                                 contentPadding:
                                 EdgeInsets.symmetric(horizontal: 30,vertical: 20),
                                 hintText: 'ادخل رسالتك',
                                 hintStyle: textStyleA11,
                                 filled: true,
                                 fillColor: Colors.white,
                                 border: OutlineInputBorder(
                                   borderSide: BorderSide.none,
                                   // borderRadius: BorderRadius.all(
                                   //   Radius.circular(30),
                                   // ),
                                 ),
                               ),
                             ),
                           ),
                         ),
                       ),
                     ],
                   ),
                   Positioned(
                     left: 0.0,
                     child: InkWell(
                       onTap: () {
                         setState(() {
                           _handleSubmit(_chatController.text);
                         });
                       },
                       child: Container(
                         padding: EdgeInsets.only(right: 5,top: 2,bottom: 2),
                         margin: EdgeInsets.only(top: 5),
                         alignment: Alignment.center,
                         width: width * 0.18,
                         height: height * 0.06,
                         decoration: BoxDecoration(
                           color: colorA1,
                           boxShadow: [BoxShadow(spreadRadius: 0.2,color: Colors.grey,blurRadius: 3)],
                           shape: BoxShape.circle
                         ),
                         child: Icon(Icons.send,color: Colors.white,)
                       ),
                     ),
                   ),
                 ],
               ),
             ),
            // SizedBox(height: 20,),
          ],
        ),
      ),
    );
  }
}