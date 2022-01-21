import 'package:flutter/material.dart';
import 'package:wasleen/widgets/receiver_message.dart';
import 'package:wasleen/widgets/sender_message.dart';


class ChatMessage extends StatefulWidget {
  final String text;



// constructor to get text from textfield
  ChatMessage({
    this.text
  });

  @override
  _ChatMessageState createState() => _ChatMessageState();
}

class _ChatMessageState extends State<ChatMessage> {



  @override
  Widget build(BuildContext context) {
    return  Container(
      // width: MediaQuery.of(context).size.width,
        margin: const EdgeInsets.symmetric(vertical: 10.0),
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.only(top: 5.0),
                child:  Column(
                  children: [
                    ReceiverMessage(text: 'مرحبا بك .. يمكنني مساعدتك اذا رغبت بالاطلاع على مزيد من التفاصيل',),
                    SizedBox(height: 20,),
                    SenderMessage(text: widget.text,),
                  ],
                ),
              )
            ],
          ),
        )
    );
  }
}
